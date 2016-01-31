int ballX;
int ballY;
int ballDiameter;
int ballXDirection;
int ballYDirection;

void setup() {
  size(800, 800);
  
  ballX = 160;
  ballY = 160;
  ballDiameter = 80;
  ballXDirection = 1;
  ballYDirection = -1;
}

void draw() {
  background(0);
  
  if (ballX + ballDiameter / 2 > width ||
      ballX - ballDiameter / 2 < 0) {
    ballXDirection *= -1;
  }
  ballX += ballXDirection;
  
  if (ballY + ballDiameter / 2 > height ||
      ballY - ballDiameter / 2 < 0) {
    ballYDirection *= -1;
  }
  ballY += ballYDirection;
  
  
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}