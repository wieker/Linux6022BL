#define ALLOCATE_EXTERN
#include <fx2regs.h>
#define	NOP		__asm nop __endasm
#define	SYNCDELAY	NOP; NOP; NOP; NOP

static void Initialize(void)
{
    CPUCS=0x10;                  // 48 MHz, CLKOUT output disabled.
    IFCONFIG=0xc0;   SYNCDELAY;  // Internal IFCLK, 48MHz; A,B as normal ports.
    REVCTL=0x03;     SYNCDELAY;  // See TRM...
    EP6CFG=0xe2;     SYNCDELAY;  // 1110 0010 (bulk IN, 512 bytes, double-buffered)
    EP2CFG=0xa2;     SYNCDELAY;  // 1010 0010 (bulk OUT, 512 bytes, double-buffered)
    FIFORESET=0x80;  SYNCDELAY;  // NAK all requests from host.
    FIFORESET=0x82;  SYNCDELAY;  // Reset individual EP (2,4,6,8)
    FIFORESET=0x84;  SYNCDELAY;
    FIFORESET=0x86;  SYNCDELAY;
    FIFORESET=0x88;  SYNCDELAY;
    FIFORESET=0x00;  SYNCDELAY;  // Resume normal operation.
    EP2FIFOCFG=0x00; SYNCDELAY;  // Make sure AUTOOUT=0.
    OUTPKTEND=0x82;  SYNCDELAY;  // Be sure to clear the 2 buffers...
    OUTPKTEND=0x82;  SYNCDELAY;  // ...(double-buffered) (required!).
}

// This will read the EP2 data and put it into EP6 for transmission.
static void ProcessSendData(void)
{
    __xdata const unsigned char *src=EP2FIFOBUF;
    __xdata unsigned char *dest=EP6FIFOBUF;
    unsigned int len = ((int)EP2BCH)<<8 | EP2BCL;
    unsigned int i;
    for(i=0; i<len; i++,src++,dest++)
    {
        if(*src>='a' && *src<='z')
        {  *dest=*src-'a'+'A';  }
        else
        {  *dest=*src;  }
    }
    
    // "Skip" the received OUT packet to "forget" it (see TRM p. 9-26):
    SYNCDELAY;  OUTPKTEND=0x82;
    
    // Arm the endpoint. Be sure to set BCH before BCL because BCL access
    // actually arms the endpoint.
    SYNCDELAY;  EP6BCH=len>>8;
    SYNCDELAY;  EP6BCL=len&0xff;
}

void main(void)
{
    Initialize();
    
    for(;;)
    {
        // Wait for input on EP2 (EP2 non-empty).
        if(!(EP2CS & (1<<2)))
        {
            // Wait for EP6 buffer to become non-full so that we don't
            // overwrite content.
            while(EP6CS & (1<<3));
            ProcessSendData();
        }
    }
}
