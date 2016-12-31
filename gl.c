#include <string.h>
#include <GL/glut.h>
#include <stdio.h>
#include <unistd.h>

#define COUNT (20 * 1024 * 1024)
unsigned char b[COUNT];
#define SCREEN 1920

int cpos = 0;
int zoom = 1;

void
tick(void)
{
  glutPostRedisplay();
}

void
display(void)
{
	int i = 0;
	
	glClear(GL_COLOR_BUFFER_BIT);
  
	glLineWidth(1.0);
	glPointSize(1.0f);
	glColor3f(1.0, 0.0, 0.0);
	
	glBegin(GL_LINE_STRIP);
	glVertex3f(0.0, 540, 0.0);
	
	for (i = 0; i < 2 * SCREEN; i += 2) {
		glVertex3f(i / 2, (1000 - b[cpos + i * zoom] * 3), 0);
	}
	
	glEnd();
  
  glutSwapBuffers();
}

void
reshape(int w, int h)
{
  glViewport(0, 0, w, h);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  gluOrtho2D(0, w, h, 0);
  glMatrixMode(GL_MODELVIEW);
}

void
keyPressed (unsigned char key, int x, int y) {  
	if (key == '>') {
		cpos += SCREEN * zoom;
		if (cpos > COUNT - SCREEN * 2) {
			cpos = COUNT - SCREEN * 2;
		}
		glutPostRedisplay();
	}
	if (key == '<') {
		cpos -= SCREEN * zoom;
		if (cpos < 0) {
			cpos = 0;
		}
		glutPostRedisplay();
	}
	if (key == '+') {
		zoom ++;
		glutPostRedisplay();
	}
	if (key == '-') {
		if (zoom > 1) {
			zoom --;
		}
		glutPostRedisplay();
	}
}

void
read_bytes()
{
	int count = read(0, b, COUNT);
	printf("read bytes: %d\n", count);
}

int
main(int argc, char **argv)
{
	read_bytes();
	
  glutInit(&argc, argv);
  glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
  glutInitWindowSize(500, 150);
  glutCreateWindow("GLUT DSO");
  glClearColor(0.0, 0.0, 0.0, 1.0);
  glutDisplayFunc(display);
  glutReshapeFunc(reshape);
  glutKeyboardFunc(keyPressed);
  glutIdleFunc(tick);
  glutMainLoop();
  return 0;
}

