# Processing Independent Project Ideas

This document is a companion guide for the existing Processing Lessons. 

**Note: Since this independent project has less structure, it may be worthwhile to read this document more fully than previous lessons/guides.**

## Introduction
Here are a following starting points/ideas to get you started with your own Processing independent project. Some of these might venture beyond the scope of concepts taught in the Processing Lessons, but we believe you can truly make these projects come to life with some hard work, creativity and perseverance. 

We'll build off of the drawing, key response and motion code you learned in the lessons. Additionally, some of these projects will emphasize artistry, while others will focus on animation or user interaction, to provide a broad spectrum of project directions.

Make sure you understand how the ellipse() function works before attempting these projects. All of them rely on a strong understanding of how this function operates.

## Q & A
**Do the projects vary in difficulty?**
Yes, the projects are listed from least time intensive to most time intensive. Take these subjective rankings with a grain of salt because their perceived difficulty might vary depending on your interest or experience level. There's also a lot of potential for these projects to get more complicated, as they are merely starting points. 

**Where can I go for more information on unfamiliar functions introduced here?**
Because this guide reference some more advanced concepts separate from the lessons, we encourage students and mentors to visit: http://py.processing.org/reference/, the Processing in Python reference, for more in depth descriptions of available functions. All functions introduced in this document can be found in this reference. We'll also try our best to put the direct link to the reference under each new function we introduce.

**What if I don't like any of the projects here?**
At the moment, this list is quite small because this document is in itself, a work in progress. We hope to grow this list over time. If you don't see anything you like, you can grab a mentor and brainstorm a project of your own with them. You can also browse these to just get your creative juices flowing.

## And so the fun begins...
### 1) Whimsical World
This project provides a starting point for more advanced aspects of the draw function. As is, this project produces some code that draws circle patterns based off the location of the user's mouse and the speed of the user's mouse, filled in with random colors according to a color scheme.

This is a good project for anyone who wants to create some whimsical looking graphics, without having to learn too many unfamiliar functions/structures.

**First, we want to setup/prepare the canvas that your artwork is going to be displayed on.** 

To do this, we'll use

```python
def setup()
```
http://py.processing.org/reference/setup.html

This function is called exactly once at the start of when the program runs each time. This will clear what was previously on the window back to a blank canvas.

Just like in Lesson 1, you'll want to adjust the size and background of the startup window with ``size(w, h)`` and ``background (rgb)``.  You will probably want a larger sized window for this project. I'm going to suggest a background color of 102, as this will allow circles of many different colors to show up clearly.

**Next, we'll need to figure out how to detect the speed of the mouse and use it to influence the size of the shapes we draw.**

Let's decompose this work into a function we can call to do the work for us. The ellipse() function takes four parameters, the x, y coordinate of the shape and the width and height of the ellipse. 

**How do we keep track of each of those pieces of information for this project?**

Recall, we can use mouseX and mouseY to detect the x and y coordinates of the mouse. This will give us the x and y coordinate where we want the circle to be drawn on the window as the mouse moves. 

For the width and height of the ellipse, which depend on the speed of the mouse, we need some way to calculate speed. Speed = difference in position/difference in time. In Processing, we can use pmouseX and pmouseY to get the x and y coordinates of the mouse in the previous frame. 
http://py.processing.org/reference/pmouseX.html

Since the draw function creates a new frame at a constant time interval, we can assume the difference in time is the same, and use the difference in pmouseX and X, and pmouseY and Y, to measure speed.

Now, we know what information the ellipse creation function needs. So, how to we pass the information to the function? We can pass these pieces of information as parameters. 

**Crash Course on Parameters**

Functions require a declaration to define what it does. Then, they can be called anywhere else in the code.

 In the declaration, the parameters are written in the parentheses of the function's name, like example (param1, param2). Now, you can use param1 and param2 inside the function definition as variables. 

What values do param1 and param2 hold?
To call the function, you might call: example (mouseX, mouseY), where mouseX and mouseY values are passed into the function called example. Since mouseX is the first parameter, based on the definition of example, the value of mouseX is stored in param1 and the value of mouseY is stored in param2.

**Defining the specialized drawing ellipse function**
Now that we know what values need to be passed into this function, we need to define this function.
```python
def variableEllipse(x, y, px, py):
```

 - If you were having trouble determining what variables to pass into this specialized function, the above header might give you a hint!

From here, let's use the parameters in the function to create a local variable, speed. Now, when we call the pre-made ellipse function in Processing in our specialized function, we can use the speed variable we created as the width and height parameter.

You should be able to create something that looks like the following when you hover your mouse over the window and move it at different speeds with the above code.

![enter image description here](https://lh3.googleusercontent.com/Z5zgzAtG3kCduE8dMif-r-s9sv4tY3ZVGVG2ilJijB4KEbIP7Ec-2hRLBHEa1Sm6gEgDv2-UpX0T)

**Lastly, we'll figure out how to fill the shape with a random color.**

Remember that the fill() function in Processing takes in three values, for the magnitude of red, green and blue in the fill color. 

To generate a random value for each of these amounts, we can use the random function in Processing. The random function takes a range of values as parameters.
http://py.processing.org/reference/random.html

Since the fill function specifically takes in values of the type int (integer), we'll specify that the value returned from the random function is an integer like this:
```python
int(random(0, 200))
```
In order to create a specific color, we can control the range of the random values, or even assign one of the parameters to zero.

I'll leave it as an exploration to figure out how to choose random fill colors within a certain color scheme.

**The final product**
Here's something fun I created with this code. I was feeling the blue-greens that day.

![enter image description here](https://lh3.googleusercontent.com/-FDAkbKRw2joCSc2YX-tlQUUa6Hmo5n-jJ3i-ewBlKn3Rah8sA1bU9ku4JgaG-r-GL82CyehdIAI)

### 2) Pointillism
This project might be interesting for someone who's artistically inclined. It's inspired by an impressionist painting technique called pointillism, in which small, distinct dots of color are applied in patterns to form an image.

![enter image description here](http://www.bitrebels.com/wp-content/uploads/2012/01/The-Graffiti-Pointillism-Artwork-Approach-3.jpg)
More on this here: https://en.wikipedia.org/wiki/Pointillism

When you're finished coding, you or another user can download any image and convert it into an animated pointillism painting!

For this project, there's a couple things we want to accomplish.

**First, we want to setup/prepare the canvas that your artwork is going to be displayed on.** 

To do this, we'll use

```python
def setup()
```
http://py.processing.org/reference/setup.html

This function is called exactly once at the start of when the program runs each time. This will clear what was previously on the window back to a blank canvas.

Just like in Lesson 1, you'll want to adjust the size and background of the startup window with ``size(w, h)`` and ``background (rgb)``. 

**Next, we want to declare some variables.** 
Hints: Think about what you might need to draw the points in the pointillist inspired artwork. The points are circles that are drawn using the ``ellipse()`` function which takes the parameters **shape width and height, so you need to create variables to specify these to the size you want.** In order to match the colors from any image and draw points at the correct corresponding locations in our window, we'll need to **store the image in the code as a variable** to get these pieces of information.

 - You'll declare these variables under the setup function
 - Remember to make them global variables so that the whole program can recognize them, like this:  ```global variable_name```

**After declaring these variables, we'll want to assign the image saved on your computer to the image variable.**
Like this:
```python
img = loadImage("image_name.jpg")
```
http://py.processing.org/reference/loadImage.html

 - Important technicality: In order for Processing to recognize this image when running the code, go to Sketch in the upper toolbar and select Add File..., then select "image_name.jpg" from it's location on the computer. Make sure to do this before you run the code with the play button, otherwise it will run an error.

**Now, we'll use the draw() function from Lesson 3 to make the magic happen.**

As we were talking about before, we want each circle we draw in the window to correspond in color and location to the pixels in the image. To do this, we'll need to declare some local variables in the draw function, which pick random x and y coordinates from the image, like so:
```python
x = int(random(img.width))
```
http://py.processing.org/reference/random.html

Let's break down this code. X is a variable storing the x coordinate. The = assigns the x variable to store...an integer that is a random number from 0 to the x coordinate of the entire width of the image, where the random function picks a number within this range and the width of the image is found by img.width.

**This part is tricky, so talk to other students, mentors or instructors if you're stuck.**

**You try the piece of code for the y coordinate now!**

**Now, let's get the color of the image at the random x, y coordinate you just generated.**
Hint: You'll need another local variable to hold the color of the pixel at that coordinate. Use the following function to get the color and assign it to a variable:
```python
img.get(x, y)
```

**Lastly, you want to draw the circle at the correct location on your window with the correct fill color.**
Use fill() and ellipse() from Lesson 1 and all of the variables you've assigned as parameters for these functions to draw a circle at the corresponding x, y coordinate as the image that's of the width/height you decided on with the fill color of the pixel from the image at that x, y coordinate.
Hints: To make sure the fill color isn't too pigmented to enhance the abstract look, set the opacity parameter of the fill function to 128.

Now that you have all of these things coded up under the draw loop, it will repeat infinitely, selecting new random x, y coordinates to draw circles in your windows, eventually converting the whole image to a pointillism inspired piece of art.

Two more things (these are short, I promise).
1. When Processing draws shapes using a function like ellipse(), the automatic setting draws the shapes with a black border. With the pointillism painting at the top, notice that the edges of the circles are not clear, giving it a more abstract look. To do this, but ``noStroke()`` in the setup function to take away the border outline on the circles.
2. You eventually want the drawing to stop, otherwise, you can't keep your masterpiece. Try getting the drawing to stop when you click the screen with ``noLoop()`` and an if statement/condition?

You can change the look of your image by manually changing the numbers assigned to variables like opacity, point width/height etc.

**Extensions**
As with everything in life, there's extensions you can do to make your masterpiece even more magical/give your artwork a different look.
1. If you want to produce many pieces, you don't want to be sitting around forever waiting for your code to draw. Speed up the process using frameRate() in the setup function.
http://py.processing.org/reference/frameRate.html
2. If you want to give your artwork more real life texture, why not declare a local variable for opacity and assign a random value to it just like you did with the x, y coordinates? This way, each new point will have a different opacity, instead of a consistent opacity.
3. What if you want to add even more texture to the work by varying the size of the points in the drawing? You can implement this like you implemented varying opacity in step 2. 
4. Or even cooler, you can control the size of each point as it's drawn on the window. What if you detected some attribute about your mouse like mouseX, then assign a circle size based off of the horizontal location of your mouse? This may be the toughest extension, but it improves the desired effect tenfold.
```python
map(mouseX, 0, width, smallPoint, largePoint)
```
http://py.processing.org/reference/map.html (would strongly recommend reading this one)

The map function takes a value, in this case, mouseX, and converts the value by scaling it to a new range of values (the smallest size we want for a point to the largest size we want for a point), returning the new scaled value. We would recommend decomposing this into a function that returns the mapped value, then calling it for the ellipse width and height parameter.

**So what does the finished product look like? I'll show you an example I created :).**

I personally like the way portraits turn out with this code and I'm a sucker for black/white color schemes.

![enter image description here](https://lh3.googleusercontent.com/MwSWY9XGgDrMCUxKszzGWQ1dhsMPQesOUYMvp8EValEz0Jv8KPyqdXXPa_JQU0DJ7XUk2vctYZRQ)

Look familiar? It's the iconic Steve Jobs thinking pose. Congrats on finishing this project.

### 3) Sin-Cosine Wave
This project is for anyone who enjoys math and wants to work more on the animation side of things. At the end, you'll have a continuous animation of a sin and cosine wave simultaneously moving across the screen. 

 - This project requires some extra learning about a Python data structure called a list.

**Declare global variables**
Let's declare some global variables in the space outside of any defined functions.

Recall, when we declare variables in this space, they are automatically global, so we do not need to use the keyword global.

Assign values to **global variables for the period and amplitude** of the wave, two traits you get to control.

You'll also want to declare a variable for the **spacing between the circles** that make up the "points" of your wave and initialize a **theta/angle** variable to 0.0.

**First, we want to setup the window to prepare for the animation.**

To do this, we'll use

```python
def setup()
```
http://py.processing.org/reference/setup.html

This function is called exactly once at the start of when the program runs each time. This will clear what was previously on the window back to a blank canvas.

Just like in Lesson 1, you'll want to adjust the size and background of the startup window with ``size(w, h)``. 

Similar to the Pointillism project before this one, we'll use noStroke(). http://py.processing.org/reference/noStroke.html
noStroke() changes the defaults for shapes drawn to the window, so that rather than having a black outline on each shape, there is no outline. You can keep the outline on the animation, but it has a cleaner look without the outlines.

The setup is also where we'll declare the **list variables** to store the y coordinate corresponding to each x coordinate to draw the entire wave. 

The goal is to first draw an initial unanimated sin and cosine wave and then figure out how to get the y coordinates in the list to update and re-draw the wave.

![enter image description here](https://lh3.googleusercontent.com/CDoGXZ1pbxK3FRddq5X5k_ojkM_7gn0QhvBG5PkWPDJikCoWEGeFJNkR-TytplWskbYkPqYGkhMY)

**Crash course on lists in Python**
Lists are a kind of **data structure** in Python. A data structure is an information organization format that enables efficient access and modification.

Here's the official Python documentation on lists:
https://docs.python.org/3/tutorial/datastructures.html. It's a great way to learn more about this data structure and it's a resource that many real software engineers might reference on the job!

Lists are structures that store many values, where each value can be accessed by an index. They're also commonly called arrays in other coding languages.

The layout looks something like this.

![enter image description here](https://docs.oracle.com/javase/tutorial/figures/java/objects-tenElementArray.gif)

To initialize a list to hold the y coordinates for the sin wave, we'll make a list of a specific length with all the values initialized to 0 for now. 

How do we find the length of this list?
Well, we know the width of the window, which can be found using the Processing function width (http://py.processing.org/reference/width.html), and we know we want one point for the wave per every length of the spacing global variable we declared. We can divide the width by the spacing to get the number of points we need, which is the length of the list we want. 

 - However, remember that a fence that is 10 ft divided into 2 ft segments has 5 segments, but requires 6 fence posts. This means we'll also need to add one!

```python
global syvalues 
syvalues = [0] * ((width/xspacing) + 1)
```

The sin y coordinate list is declared for you. Try the cosine one!

**Next, we need a function to calculate the y coordinate of the wave for every x coordinate.**

Let's define a function to decompose this work.

We'll use a for loop to do the bulk of the work here.

 - First, we'll figure out the range we're looping over, by finding the number of points we're drawing. That should just be the length of the lists we created, which can be found with len(list_name). Declare this length value as a global, as it will come in handy again later.
 - We also need to figure out what the change in angle is between each of these points. To do this, we find the angle value over a period and scale by the spacing we designated previous 
 ```python
 dx = (TWO_PI/period) * xspacing
 ```
 
 - Now, we're ready to write a for loop that repeats from 0 to the length of the list and assigns the y coordinate for each x coordinate at the correct index of the list, then increments the angle by dx and the index for the next iteration of the loop. The assignment to the list for the sin y coordinates is shown below (don't forget to do the cosine y coordinates too): 
 ```python
 syvalues[i] = sin(x)*amplitude
 ```

**Then, we need to render the wave onto the window.**
Let's decompose this into another function.
We'll use another for loop to do the work, where the range is the same as before. See how the variable for the length of the list might come in handy now?

In this for loop, we access the y value corresponding to each x value and draw a circle using ellipse() for each point on the wave. 

Use what you've learned before to color all the points for the sin wave the same color and all the points for the cosine wave the same color. Choose the size of the ellipse based on what you think looks best.

 - Remember that the index starts from 0 and goes up by one. In order to find the correct x position for the ellipse, you'll need to multiply this index by the spacing declared as a global variable from before.
 - Returning to the fence analogy, the second post (index 1 technically because indexing begins at 0 for lists) is not at position 1 ft horizontally where the fence segments are 2 ft long. It is at position 2 ft horizontally (1 * 2).

**Lastly, we'll want to make this drawing occur over and over again as the y coordinates in the lists change, to create the effect of animation.**

This might seem like a bit of a weird strategy, but remember the illusion of animation is simply the same drawing with slight changes occurring over and over again.

So how do we draw the wave over and over again. We'll want to use the draw() function in processing and define one for this project. Inside, we'll want to call the calculating wave function and the rendering wave functions we've already written, but we also want to clear the window to the black background after each wave is drawn, to get rid of the old wave and create the illusion of movement. Use background(0) to make this happen.

We also need to get the beginning angle in the calculate wave function to change. To do this, we'll add a small value, like 0.1, to theta, every time the calculate wave function is called.

In Python, to assign to global variables inside a function, you need to specify you're referring to the global variable, otherwise, it will assume you're referring to a local variable. The global keyword is important here!
```python
global theta 
theta += 0.01
```

Before, to change the angle in the for loop of the calculate wave function, we just added dx to the angle. Problematically, this will change the global theta now that theta is global in the function if we use theta in the for loop

So, we'll actually need a local variable that we assign to equal the theta value initially, that we can change inside the for loop without changing the global theta variable that's tracking the starting theta for each frame.
```python
x = theta
```
I used x, but you can go for something more descriptive. Now, you're finished.

Now you're finished and your waves should appear to move across the screen. Observe the sin and cosine wave interactions and determine whether they match your expectations. 

**Extensions**

 - If you want, you can look at the Trigonometry section in the Processing reference and see if you can add tangent, arcsin and arccosine waves.
 - You can also change the fill colors for this animation to make it more aesthetically pleasing. Since this was not the focus of this project, I kept them white and grey on a black background, but feel free to switch that up.
