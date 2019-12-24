gravity = 2
xPos = 50
yPos = 250
birdWidth = 20
birdHeight = 20
minHeight = 50
pipeWidth = 50
heightTopPipe = 200
heightBottomPipe = 200
pipeXPos = 500
spaceBetweenPipes = 100
pipePassed = True
stopGame = False
f = None

def setup():
    global f
    size(400,500)
    f = createFont("Arial",16)
    
def draw():
    global stopGame, f
    background(125,236,248)
    if stopGame == False:
        if pipePassed == True:
            pipeCreate()
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
    global pipeXPos, pipePassed  

def pipeCreate():
    global heightTopPipe, heightBottomPipe
    spaceBetweenPipes = 100
    maxHeightTopPipe = height - spaceBetweenPipes - minHeight
    heightTopPipe = random(50,maxHeightTopPipe)
    global pipePassed
        
def pipeMove():
    global pipeXPos
    fill(118,190,58)  
        
def moveBird():
    global yPos
    fill(211,190,59)
    
def endGame():
    global yPos, pipeXPos, stopGame
    pass
    
    
