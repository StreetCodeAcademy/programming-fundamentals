xPos = 300
yPos = 300
speedX = random(10)
speedY = random(10)
paddleWidth = 10
paddleHeight = 150
xPaddle = 50
yPaddle = 225
paddleSpeed = 5
ballHeight = 20
ballWidth = 20

def setup():
  size(600, 600)
  
def draw():
    global xPos, yPos
    global yPaddleOne
    background(0,0,0)
    ellipse(xPos,yPos,ballWidth,ballHeight)
    rect(xPaddle,yPaddle, paddleWidth,paddleHeight)
    paddleMove()
    ballMove()

def ballMove(): 
    pass       

def paddleMove():
    pass
      
def wallCollision():
    pass
    
def paddleCollision():
    pass

def resetGame(): 
    pass
    
        
    
