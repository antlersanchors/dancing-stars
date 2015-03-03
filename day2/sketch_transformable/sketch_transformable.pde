final int CANVAS_WIDTH = 500;
final int CANVAS_HEIGHT = 500;

Transformable t;

void setup() {  
  size(CANVAS_WIDTH, CANVAS_HEIGHT);
  background(23, 68, 250);

  t = new Triangle(CANVAS_WIDTH / 2, CANVAS_HEIGHT / 2, 50);
}

void draw() {
  background(23, 68, 250);

  float r = radians(3);
  t.rotate_increment(r);

  stroke(255);
  noFill();
  t.display();
}

void mousePressed() {
}

