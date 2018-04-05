import java.util.*;

Ball ball;

void setup() {
  size(500, 500);
  stroke(255);
  background(192, 64, 0);
  ball = new Ball();
  ball.setSpeed(5);
} 

void draw() {
   background(192, 64, 0);
   ball.display();
   ball.move();
   //ellipse(mouseX, mouseY, 30, 30);
 }



class Ball{
  
  float x;
  float y;
  float size;
  float xvel = 1;
  float yvel = 1;
  color c = color(50,50,50);
  
  Ball(float x, float y, float size){
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  Ball(float x, float y){
    this.x = x;
    this.y = y;
    this.size = 30;
  }
  
  Ball(){
    this.x = width/2;
    this.y = height/2;
    this.size = 30;
  }
  
  void move(){
    checkWallCollision();
    this.x += xvel;
    this.y += yvel;
  }
  
  private void checkWallCollision(){
    if(x - size/2 <= 0){
      xvel = -xvel; 
    }
    if(x + size/2 >= width){
      xvel = -xvel;
    }
    if(y - size/2 <= 0){
      yvel = -yvel; 
    }
    if(y + size/2 >= height){
      yvel = -yvel;
    }
  }
  
  void setSpeed(float speed){
    xvel = speed;
    yvel = speed;
  }
  
  void display(){
      fill(this.c);
      ellipse(x,y,size,size);
  }
  
  
}