# Getting Started with Processing

##### To start this lesson, students should:

- Be familiar with coordinate systems.
- Have familiarity and experience using variables.
- Have familiarity and experience using functions.

##### By completing this lesson, students will:

- Become familiar with Processing.
- Learn how to draw shapes in Processing.
- Become familiar with the computer coordinate system.


## Setting up Processing with Python

### Make sure Processing is installed

Ask a mentor to make sure that Processing is set up on your computer. This should have been done already, but if not, a mentor should be able to help you.

Processing doesn't include support for the Python programming language by default. In order to enable Python support, you'll need to install an add-on called Python Mode. You can do this by clicking on the drop-down menu on the right side of the tool bar and selecting "Add Mode..." A window with the title "Mode Manager" will appear. Scroll down until you see "Python" and press "Install."

>Note: Before starting make sure it says Python, not java, in the top right corner 

### Test things out!
Add the following lines of code:

    size(500, 500)
    background(0, 0, 0)
Go ahead and run the file, you should see something like this:

![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/pygamescreen.png)

If you get any errors here, ask a mentor for help. Otherwise, you're ready to get started!




## Drawing Shapes in Processing
### Drawing your first shape
Go ahead and add these lines of code below 

    fill(255, 165, 0)
    rect(200, 100, 200, 100)

If you run your code now, you should see something like this:

![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/rect.png)

Let's go ahead and dive into how the code works for this:

``rect(x, y, width, height)``

What does that mean?

If you look carefully, you'll notice that each of these match up with what we put in the parentheses in this line of code:
Which means that:

- x = 200
- y = 100
- width = 200
- height = 100

All of these numbers are what we call in computer science, parameters. We'll go more in depth on those later, but for now you have a fancy word you can use to impress people at the dinner table.

Go ahead and talk to a mentor and see if all these numbers make sense corresponding to the shape you see on your screen. Note that the x and y start from the upper left corner of the rectangle.

The first line:  
``fill(R, G, B)``  

Takes in 3 parameters: the red, green and blue value. Each value is an integer value between 0 and 255.

You can go ahead and explore the fill function [here](http://py.processing.org/reference/fill.html) and the [color tutorial](http://py.processing.org/tutorials/color/) as well.


## Computer Coordinate Systems
As you're looking through all these numbers, if you've learned geometry before, all of them might make sense except for the y coordinate.

That's because in computer coordinates, y increases from top to bottom, meaning that the top of the screen is where y = 0, then the bottom of the screen would be the largest y value.

![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/coordinate.png)

Feel free to talk this through a mentor more until it makes sense.

### Try it!

To get more familiar with the coordinate system, go ahead and make some more shapes using rect.

Once you have the handle on that, try the [ellipse](http://py.processing.org/reference/ellipse.html) and the [triangle](http://py.processing.org/reference/triangle.html) function.

If you want to go crazy, you could even make something like this!
![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/drawing.png)

## Combining drawing with loops
Okay, if you tried to make the example above using only what we learned so far, it might take you hundreds of lines of code.

What if I told you that I was able to make that drawing using only around 4 lines of code?

Do you remember using for loops in Reeborg?

![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/reeborg.png)

Go ahead and try adding this to your code.

    for i in range(10):
    	print(i)
    

When you run it your console should print numbers 0 to 9 in increasing order.

That's because when we run the for loop, the i in the for loop will actually be a variable that counts up as it repeats the loop.

Go ahead and talk through this with a mentor if it doesn't make sense. Go ahead and try out the following examples in your own code - see if you can predict what will print out before it prints!

    for i in range(3, 20):
    	print(i)
###  ###
    for i in range(9):
    	print(i * 5)

Alright, now let's try something different. What happens if you do this?

    fill(0, 0, 255)
    for x in range(33):
    	ellipse(x * 20, 100, 20, 20)

If you pop that into your code and run it, you should see something like this:
![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/circles.png)

Go ahead and talk with a mentor and see if you can figure out how this is working.

### Your Turn!
Okay, here's a challenge. See if you can create something that looks like this:

![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/rectline.png)

### Bonus Challenge
Once you finish that, if you want a challenge, see if you can create something like this:

![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/manyrects.png)

> Hint: How could you repeat the code you created in the earlier part, and have it run multiple times with different x values?

### Bonus Bonus Challenge

If you want to have some fun, see if you could figure out how to do this?

![](https://raw.githubusercontent.com/StreetCodeAcademy/programming-fundamentals/master/python-curriculum/pygame_lesson1/challengechallenge.png)

>Hint: You can also make your own color using fill(R,G,B) where you substitute R, G, and B with different Red, Green, and Blue values ranging from 0-255.
>
>If you do some quick Googling, you can figure out how to combine that with random numbers.

Anyways, that's it for this lesson!

>Note to mentors: if your student is interested and you think it would be helpful, feel free to show them a bit about how to combine drawing with functions.



