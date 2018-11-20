# Welcome to the Reeborg Lite Reader

This reader is for students who would prefer to work through Reeborg by jumping into the exercises. Here are the must read parts, with none of the extra details. If you're interested in getting more information, check out the [Reeborg Wordy Reader](README.md).

## How to get to Reeborg
Link to Reeborg: http://reeborg.ca/reeborg.html  

This is what you should see if it's your first time visiting the site.
![enter image description here](https://lh3.googleusercontent.com/WvsJp6Pr4X362MH_XtibFZY9mCrhFfMIXkASb48jlVMOcWbmMg-piFzOsa6Otu3yD8mF8jwHrWpI)

Click the **Go to introduction Reeborg** button. 

## How to set up Reeborg with the correct configuration
Set the language click down bar to Python.  
![enter image description here](https://lh3.googleusercontent.com/r-Z9hJCCjcGm5CjSZnzmDAqDqZOjbRBEvMU-CJpUvgoK_iorGZEKzYVK96HW0G1ycmdUbdKkPPt1)   

You will now be in the exercise called Alone. Each of the Reeborg worlds gives you various tasks to code up and have Reeborg perform.    

**IMPORTANT: Do not start with Alone. Use the click down bar in the top right corner to go to the Home 1 exercise to start!**  
  ![enter image description here](https://lh3.googleusercontent.com/C_yQzUMv_HMBeerKn81UyP1vXtxwCAzgB5U_vNhBPyxSzyvY96Eb_4J2lBkcop54g7O7Z00F17f1)

You can now code away in the right hand area, your coding space.

### Reeborg navigation tips (extra credit reading...you can figure this out along the way if you would prefer)
* The **World Info** button in the top bar provides details on the task goal in each exercise. This will tell you what you are supposed to get Reeborg to do. Generally, the goal is to get Reeborg to travel to the house/flag, but sometimes it gets a bit more complicated. It may also provide hints about what commands to use.  
![enter image description here](https://lh3.googleusercontent.com/DiLku_SbfhtYhE6dF_Pi0-d_B1zftw5V4O_HxCTWJvPyrPGy_IhMVViNvqOU5P_TXCUyGXODd_w-)

* The **Reeborg's keyboard** button in the top bar provides a comprehensive list of all the commands Reeborg understands. You can use any of these commands in the right hand coding space and the program will understand them when you run it. Reeborg's world only understands this set of commands, though most coding languages will have more commands. It also provides conditions you can check for.    
![enter image description here](https://lh3.googleusercontent.com/EbhKh4FUism_iArFfcTvuWJWqbH4tV0zj12SWkYzxobfHkP1vCAPLgg42Oo0C9HVPK2HkSA_BGH4)  
![enter image description here](https://lh3.googleusercontent.com/lBzhaGg7hMXVeLS_7G2ge9zOokHASKAeKrKBgs-qi7dFsqoBAEfYq1m9gfKGleUJ-K4LhhXVXeHT)  
![enter image description here](https://lh3.googleusercontent.com/gpAIgGbDvryVCq5JvcJSY4Qga5T4IWIHTvERcOkuUn9FbSaEQAV6EmxCpu9JSMYdhMhzC_nPtoq7)  

* The icons that look like a **music player** help you run the code you've writen in your coding space. When you're ready, hit play to run, fast forward and rewind to go back or ahead in the code, pause to pause the run on the line you're on, stop to end the run, and refresh to reset Reeborg at the starting point (you must reset to run the code again from the beginning).  
![enter image description here](https://lh3.googleusercontent.com/iK6H3xk5biGnoz75gFDONRBL6xAt8ntdaHSkIgKnzBhcw4pyYQLNuKpSewjd-eNT0YzcohtPpF7L)  

## Exercises
Below is the list of exercises, **in the order that you should work through them:**  

Next to each exercise are the new concepts you'll need to learn to complete these exercises - you can learn about these concepts from a mentor or on the [Reeborg Wordy Reader](README.md).

1. Introduction to Commands
   1. **Home 1** - move()
   * `move()` causes Reeborg to move one square unit in the direction that Reeborg is facing
   * the program reads from the top to the bottom, so the command written on line 2 occurs after the command written on line 1, but before a command written on line 3
   * the () after each command are part of the command -- in the Python language, you can put arguments inside these parentheses, but in Reeborg, the parentheses are left where they are
   2. **Home 3** - turn_left()
   * `turn_left()` causes Reeborg to turn left from the direction Reeborg is facing -- notice that Reeborg does not move from the square they are on after turning left, you must use `move()` any time you want Reeborg to move to the next square
   3. **Newspaper** - take(), put(), bonus: defining functions like turn_right()
   * notice that in this exercise, Reeborg must turn right to get up the steps, but there is no built in `turn_right()` command
   Here's a start:
   ```python
   def turn_right():
     ...
   ```
   * if you finish building the `turn_right()` function for this exercise, think about other functions you can build to make it easier for Reeborg to complete the exercise (hint: which parts of the exercise world look similar, what move are repeated?)
   4. *Optional Exercise*: **Tokens 4** (to solidify understanding of `take()` and `put()` commands for more complicated coding exercises later on)

2. For Loops/Repeats
There are two ways to write a loop that repeats certain lines of code: 
Option 1 (in Python language, a bit harder to grasp) 
```for i in range(5):``` 
Option 2 (only in Reeborg language, easier to grasp) 
```repeat 5: ``` 
   
   1. **Around 1** - repeat/for loops
   2. **Hurdle 1**

3. Basic Conditions Using the If Statement
   1. **Around 1 - apple** - if statements, object_here()

4. While Loops (aka a loop with a condition)
    1. **Around 1 - variable** - while loops, front\_is\_clear()
    2. **Hurdle 2** - at_goal(), either done() or "not"
    3. *Optional Exercises*: **Tokens 1-5** (rework these challenges using while loops for generalized solutions)

5. Advanced Conditions
   1. **Hurdle 3** 
   2. **Hurdle 4**

6. Challenges...for food prizes
   1. **Storm 1** - toss(), carries_object()
   2. **Storm 2**
   3. **Center 1**

7. Even Harder Challenges...for more prizes
   1. **Maze**
   2. **Checkerboard**: the challenges (To find this exercise, first click, "Other Worlds", then click "Go to Challenges". After that you will find "Checkerboard: the challenge".)


