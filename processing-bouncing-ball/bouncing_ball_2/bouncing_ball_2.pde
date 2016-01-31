int ballX;
int ballY;

void setup() {
  size(800, 800);
  
  ballX = 160;
  ballY = 160;
}

void draw() {
  background(0);
  
  ballX++;
  
  ellipse(ballX, ballY, 80, 80);
}