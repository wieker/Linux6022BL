/*
 * hello_world_usb/hello.c -- FX2 hello world via USB example. 
 * 
 * Copyright (c) 2006--2008 by Wolfgang Wieser ] wwieser (a) gmx <*> de [ 
 * 
 * This file may be distributed and/or modified under the terms of the 
 * GNU General Public License version 2 as published by the Free Software 
 * Foundation. (See COPYING.GPL for details.)
 * 
 * This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 * 
 */

#define ALLOCATE_EXTERN
#include <fx2regs.h>

// Read TRM p.15-115 for an explanation on this. 
// A single nop is sufficient for default setup but like that we're on 
// the safe side. 
#define	NOP		__asm nop __endasm
#define	SYNCDELAY	NOP; NOP; NOP; NOP


static void Initialize(void)
{
	CPUCS=0x10;   // 48 MHz, CLKOUT output disabled. 
	
	IFCONFIG=0xc0;  // Internal IFCLK, 48MHz; A,B as normal ports. 
	SYNCDELAY;
	
	REVCTL=0x03;  // See TRM...
	SYNCDELAY;
	
	EP6CFG=0xe2;  // 1110 0010 (bulk IN, 512 bytes, double-buffered)
	SYNCDELAY;
	
	FIFORESET = 0x80;  SYNCDELAY;  // NAK all requests from host. 
	FIFORESET = 0x82;  SYNCDELAY;  // Reset individual EP (2,4,6,8)
	FIFORESET = 0x84;  SYNCDELAY;
	FIFORESET = 0x86;  SYNCDELAY;
	FIFORESET = 0x88;  SYNCDELAY;
	FIFORESET = 0x00;  SYNCDELAY;  // Resume normal operation. 
}


// This will put some data into the EP6 buffer and make it ready for 
// transmission. 
static void SetUpBufToTransfer(void)
{
	// Call serial. 
	static unsigned char serial=0;
	
	// First, copy the data into the EP6 buffer. 
	xdata unsigned char *dest=EP6FIFOBUF;
	const char *src=
		"Hello world! Your FX2 is talking to you via the USB line. ";
	unsigned char len=0;
	while(*src)
	{
		*dest++=*src++;
		++len;
	}
	// Append call serial in decimal: 
	*dest++='(';                ++len;
	*dest++='0'+serial/100;     ++len;
	*dest++='0'+serial%100/10;  ++len;
	*dest++='0'+serial%10;      ++len;
	*dest++=')';                ++len;
	++serial;
	
	// Arm the endpoint. Be sure to set BCH before BCL because BCL access 
	// actually arms the endpoint. 
	SYNCDELAY;  EP6BCH=0;
	SYNCDELAY;  EP6BCL=len;
	
	// That's all we gonna do; the data will be transmitted the next time 
	// a bulk read is performed by the host. 
}


void main(void)
{
	Initialize();
	
	for(;;)
	{
		// Wait for the EP6 buffer to become non-full. 
		if(!(EP6CS & (1<<3)))
		{  SetUpBufToTransfer();  }
	}
}
