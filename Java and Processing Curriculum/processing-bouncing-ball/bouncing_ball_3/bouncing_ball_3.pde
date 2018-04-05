int ballX;
int ballY;
int ballDiameter;

void setup() {
  size(800, 800);
  
  ballX = 160;
  ballY = 160;
  ballDiameter = 80;
}

void draw() {
  background(0);
  
  if (ballX + ballDiameter / 2 < width) {
    ballX++;
  }
  
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}