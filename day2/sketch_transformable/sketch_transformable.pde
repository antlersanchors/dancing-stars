final int CANVAS_WIDTH = 500;
final int CANVAS_HEIGHT = 500;

Transformable t;

void setup() {  
  size(CANVAS_WIDTH, CANVAS_HEIGHT, OPENGL);
  background(23, 68, 250);
	smooth();

  t = new Triangle(CANVAS_WIDTH / 2, CANVAS_HEIGHT / 2, 50);
}

void draw() {
  background(23, 68, 250);

  if(frameCount % 2 == 0) {

  float r = radians(1);
  t.rotate_increment(r);

}

  stroke(255);
  noFill();
  t.display();
}

void mouseDragged() {

	if(t.inside(mouseX, mouseY)) {
		t.translate_to(mouseX, mouseY);
	}
}

