# Velocity and Collision in Processing

**To start this lesson, students should:**

- Be familiar with if statements, while loops, and functions
- Have some practice/famliarity with Processing's coordinate system and how to draw shapes in Processing

**By completing this lesson, students will learn:**

- Velocity
- Bouncing

 
##Velocity

First lets look at the code below and I'll explain it. 

	x_pos = 0
	velocity = 5
  	def draw():
      global x_pos
      background(0,0,0)
      rect(x_pos, 20, 15, 15)
      x_pos = x_pos + velocity
      
Have students modify the velocity by changing the velocity variable and making the rectangle move faster or slower

Now how is velocity speed and direction? Lets talk about speed first.  Lets take velocity = 5. Now the speed is the 5 or the number. That controls how fast the object moves. Now lets say velocity = -5. The - or negative sign, controls the direction. If there is no negative sign or -, it is positive. These are called signs. Signs control the direction. 


Slow velocity

![](speed=5.gif)

Fast velocity

![](speed=15.gif)


Lets make two rectangles.

		fill(255,0,0)
        rect(x_pos_one, y_pos_one, 15, 15)
        fill(0,0,255)
        rect(x_pos_two,y_pos_two,15,15)

Now let's make the two rectangles have different velocities. 

![](twoRectanglesTwoSpeeds.gif)


##Challenge 
Challenge could be changing the trajectory or curvature of one of the rectangles like below
Doing this involves having different x and y velocities (having the values be different)

![](curves.gif)

##Wall collisions

Introduce wall collisions

	def setup():
  		size(600, 600)
  		background(0,0,0)

	xPos = 50
	yPos = 50
	velocity = 5
	def draw():
	    global xPos
	    global yPos
	    ellipse(xPos,yPos,20,20)
	    xPos = xPos + velocity
	    
We want the ball to stop like follows

![](ballStop.gif)
	   

![](circle.png)

Remember that the x coordinates and y coodinates of an ellipse represent the middle of the ellipse in this case the O in the picture above. The width is the diameter, which is the D in the picture. To get the right edge we need to do O + R. Half of a diameter is the radius. So we need the radius. In the case of the photo above do xPos + width/2.
Then we need to check if the right edge hit the wall using an if statement like below

	def draw():
	    global xPos
	    global yPos
	    ellipse(xPos,yPos,20,20)
	    if(xPos + 10) >= 600):
	    	velocity = 0
	    xPos = xPos + velocity
The velocity = 0, essentially stops the ball. 

Using this code

	def draw():
		global xPos
		global yPos
		global velocity
		background(0,0,0)
		ellipse(xPos,yPos,20,20)
		if((xPos + 10) >= 600):
	    	velocity = -5
	   	elif((xPos - 10) <= 0):
	       velocity = 5
	   xPos = xPos + velocity
	   
Think what will happen before we run the code. The elif statement reverses the balls direction and checks if we hit the left wall. 

We will get something like below

![](ballBouncing.gif)
    

Now let's modify the code and get the ball to bounce off the top and bottom walls

	xPos = 10
	yPos = 10
	velocityX = 5
	velocityY = 10
	def draw():
		global xPos
        global yPos
        global velocityX
        global velocityY
        background(0,0,0)
        ellipse(xPos,yPos,20,20)
        if((xPos + 10) >= 600 or (xPos - 10) <= 0):
            velocityX = -velocityX
        if((yPos + 10) >= 600 or (yPos - 10) <= 0):
            velocityY = -velocityY
        xPos = xPos + velocityX
        yPos = yPos + velocityY
        
 Now this code is pretty long so lets break it down.
 
 	if((xPos + 10) >= 600 or (xPos - 10) <= 0):
            velocityX = -velocityX
          
  What does these lines of code do?
  
  The first line has an or statement. If one of the two statements is true, the code inside the if statement is executed. So essentially if the ball is on the right or left wall, it will bounce back the other way. 
  
  What is this velocityX = -velocityX? This line of code reverses the direction of the ball. For example if we say velocityX = 5. velocityX = -velocityX makes the velocity -5, so the ball now goes in the opposite direction. The Y part is basically the same. 
  
  
  We should get something like below
  
![](ballBounceXY.gif)
 

But that's boring, we can see the pattern. Let's randomize it! Do you remember how to make things random? What do we randomize? What controls how fast the ball bounces? Randomize that and you should get something similar to below. 

![](ballRandomBounce.gif)

##Challenge

 - Make the ball change color everytime it bounces
 - Make the ball stop bouncing after 10 bounces
 - When you press a key, change the velocity


      


