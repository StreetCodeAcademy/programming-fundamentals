BouncingBall[] balls;

void setup() {
  size(800, 800);
  
  balls = new BouncingBall[2];
  balls[0] = new BouncingBall(160, 160, 80, 1, -1);
  balls[1] = new BouncingBall(160, 160, 80, 2, -1);
}

void draw() {
  background(0);

  for (int i = 0; i < balls.length; i++) {
    balls[i].move();
    balls[i].display();
  }
}

class BouncingBall {
  int x;
  int y;
  int diameter;
  int xDirection;
  int yDirection;
  
  BouncingBall (int tempX, int tempY, int tempDiameter, int tempXDirection, int tempYDirection) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    xDirection = tempXDirection;
    yDirection = tempYDirection;
  }
  
  void display() {
    ellipse(x, y, diameter, diameter);
  }
  
  void move() {
    if (x + diameter / 2 > width ||
      x - diameter / 2 < 0) {
      xDirection *= -1;
    }
    x += xDirection;
    
    if (y + diameter / 2 > height ||
        y - diameter / 2 < 0) {
      yDirection *= -1;
    }
    y += yDirection;
  }
}