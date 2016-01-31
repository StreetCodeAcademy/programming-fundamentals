int ballX;
int ballY;
int ballDiameter;
int ballXDirection;

void setup() {
  size(800, 800);
  
  ballX = 160;
  ballY = 160;
  ballDiameter = 80;
  ballXDirection = 1;
}

void draw() {
  background(0);
  
  if (ballX + ballDiameter / 2 > width) {
    ballXDirection *= -1;
  }
  ballX += ballXDirection;
  
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}