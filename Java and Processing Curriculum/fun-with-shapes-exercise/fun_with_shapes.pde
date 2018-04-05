//https://academo.org/demos/rotation-about-point/
//float[] rotate(float x, float y, float a, float b) {
//}

PShape triangle;
void createTriangle() {
  triangle = createShape();
  triangle.beginShape();
  triangle.vertex(0, 0);
  triangle.vertex(40, 0);
  triangle.vertex(20, 40);
  triangle.vertex(0, 0);
  triangle.endShape();
}


PShape square;
void createSquare() {
  
}


PShape pentagon;
void createPentagon() {
  
}

PShape hexagon;
void createHexagon() {
  
}


PShape createNAgon;
void createNAgon() {
  
}


void setup() {
  noLoop();
  size(100, 100, P2D);
  createTriangle();
  
  // createSquare();
  // createPentagon();
  // createHexagon ();
  // createNAgon();
}

void draw() {
  shape(triangle, 0, 0);
}