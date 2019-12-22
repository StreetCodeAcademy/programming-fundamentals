gravity = 2
xPos = 50
yPos = 250
minHeight = 50
pipeWidth = 50
pipeXPos = 500
pipePassed = True
stopGame = False

def setup():
    global f
    size(400,500)
    f = createFont("Arial",16)
    
def draw():
    global yPos,stopGame,f
    background(125,236,248)
    if stopGame == False:
        moveBird()
        pipeMove()
        endGame()
    else:
        textFont(f,16)            
        fill(0)                                                
        text("You lost, press shift to start again",10,100)
        if keyPressed: 
            if keyCode == SHIFT:
                stopGame = False

def pipePass():
    global pipePassed    

def pipeCreate():
    spaceBetweenPipes = 100
    maxHeightTopPipe = height - spaceBetweenPipes - minHeight
    heightTopPipe = random(50,maxHeightTopPipe)
    global pipePassed
        
def pipeMove():
    fill(118,190,58)  
        
def moveBird():
    fill(211,190,59)
    
def endGame():
    pass
    
    
