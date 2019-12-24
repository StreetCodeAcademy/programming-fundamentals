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
inGame = False

def setup():
  size(600, 600)
  
def draw():
    global xPos, yPos
    global yPaddleOne
    background(0, 0, 0)
    ellipse(xPos, yPos, ballWidth, ballHeight)
    rect(xPaddle, yPaddle, paddleWidth, paddleHeight)
    
    if keyPressed and keyCode == SHIFT:
        inGame = True
    
    if inGame == True:
        paddleMove()
        ballMove()

def ballMove(): 
    global xPos, yPos
    pass       

def paddleMove():
    global yPaddle
    pass
      
def wallCollision():
    global speedX, speedY
    pass
    
def paddleCollision():
    global speedX
    pass

def resetGame(): 
    global xPos, yPos, speedX, speedY, xPaddle, yPaddle, inGame
    pass
