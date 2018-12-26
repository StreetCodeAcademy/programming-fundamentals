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
   1. **Home 1** - `move()`
   * `move()` causes Reeborg to move one square unit in the direction that Reeborg is facing.
   * The code you write will run line by line, from top to bottom. One command goes on each line. Reeborg will only understand commands written with the correct syntax (aka commands that follow the details/rules of the coding language).
   
   2. **Home 3** - `turn_left()`
   * `turn_left()` causes Reeborg to turn left from the direction Reeborg is facing -- notice that Reeborg does not move from the square they are on after turning left, you must use `move()` any time you want Reeborg to move to the next square.
   
   3. **Newspaper 0** - `take()`, `put()`, defining functions like `turn_right()`
   * NOTE: In this exercise, Reeborg must drop off the newspapers at the top of the steps and return to where Reeborg started!
   * Notice that in this exercise, Reeborg must turn right to get up the steps, but there is no built in `turn_right()` command. We'll write the `turn_right()` function below to help you out.
   ```python
   def turn_right():
     turn_left()
     turn_left()
     turn_left()
   ```
   * If you finish building the `turn_right()` function for this exercise, think about other functions you can build to make it easier for Reeborg to complete the exercise (hint: which parts of the exercise world look similar, what move are repeated?)

2. For Loops/Repeats   
There are two ways to write a loop that repeats certain lines of code: 
   ```python
   #Both of these ways of writing a for loop in Reeborg work. 
   #The code written INSIDE the for loop (aka in a coding block tabbed one level in) 
   #will repeat the specified number of times (5 times in these examples).
   
   #Option 1 (more traditional, works in Python too)
   for i in range(5):
    ...
    
   #Option 2 (simpler, works only in Reeborg)
   repeat 5:
    ...
   ```
   
   1. **Around 1** - for loops
   
   2. **Hurdle 1** - for loops, defining functions
   * How can we leverage for loops and functions to write cleaner code to solve Hurdle 1? Think about the repeatitive task of hurdle jumping. Could you define a function `jump()` and repeat it multiple times?
   
   3. *Optional Exercise*: **Tokens 4**
   * This exercise will help to solidify understanding of `take()` and `put()` commands for more complicated coding exercises later on.
   
3. Basic Conditions Using the If Statement
   1. **Around 1 - apple** - if statements, `object_here()`
   * The if statement executes a block of code if the specific condition checked is true. It can also be paired with an else statement (if/else) or an else if (elif). Here are some examples to illustrate the concept (keep in mind the allowable conditions in Reeborg are all listed in the Reeborg's keyboard under Conditions, while those used below are imaginary conditions and commands).
   
   ```python
   #A simple if statement, which executes the command only IF it is raining (it's_raining is TRUE)
   if it's_raining():
    bring_umbrella()
   
   #An if/else statement, which executes the command under the IF statement if it's_a_weekday is TRUE
   #and the command under the ELSE statement if it's_a_weekday is FALSE
   if it's_a_weekday():
    go_to_school/work()
   else:
    sleep_in()
    
   #An if/elif statement that always allows you to win at rock/paper/scissors! This is helpful when you want to write code that checks for more than two conditions.
   if opponent_picks_paper():
    pick_scissors()
   elif opponent_picks_scissors()
    pick_rock()
   elif opponent_picks_rock() #Notice here, the elif is not strictly necessary. Why?
    pick_paper()
   ```
   
   * Recall that in Around 1, we used a for loop to have Reeborg move around the square path. We can reuse that code and build off of it to have Reeborg move around the square path and collect apples along the way.

4. While Loops (aka a loop with a condition)
    1. **Around 1 - variable** - while loops, `front_is_clear()`
    * NOTE: In this exercise, the size of Reeborg's world changes on each run.
    * Additionally, note that the exercise requires that Reeborg returns to its starting point
    
    2. **Hurdle 2** - `at_goal()`, `done()`, `not` in front of a condition
    * NOTE: In this exercise, the position of the ending flag changes on each run.
    * To negate a condition, add the word not in front of it. For example, `while not front_is_clear()` will check whether there's a wall blocking Reeborg rather than checking whether the area in front of Reeborg is clear.
    
    3. *Optional Exercises*: **Tokens 1-5**
    * Rework these challenges using while loops for generalized solutions. It's possible to create a solution that solves all five worlds at once. Since Tokens 5 has the most special conditions, a generalized solution for 5 should solve all the previous worlds too.

5. Advanced Conditions  
Congrats! These are the final required Reeborg exercises. You'll use all of the skills you've learned in parts 1-4 to complete them. It can seem like the goal would be to finish this as fast as possible. In past quarters, students often tried to rush through them, but struggled with later material because they missed some of the core insights from these challenges. I encourage you to take your time to solve them. Please ask clarifying questions and talk to mentors about areas of confusion.

   1. **Hurdle 3** - `while front_is_clear()`, `at_goal()`
   * NOTE: In this exercise, the lengths between the hurdles change.
   
   2. **Hurdle 4** - `while front_is_clear()`, `while wall_on_right()`, `at_goal()`
   * NOTE: In this exercise, the lengths between the hurdles and the height of the hurdles change.

6. Challenges...for food prizes
   1. **Storm 2** - `toss()`, `carries_object()`
   2. **Center 1** - `object_here()`, `front_is_clear()`
   * Though the World Info tab suggests a strategy that requires two tokens, remember that Reeborg has unlimited tokens, so you can use a strategy that requires more tokens if that is easier.

7. Even Harder Challenges...for more prizes
   1. **Maze**
   * NOTE: In this exercise, the maze changes each time your solution is run. To solve the exercise, write a program that solves every possible maze!
   * A helpful hint for this exercise is the "right hand rule". Imagine that Reeborg's right hand begins on the wall to Reeborg's right at the starting point. To solve the maze, make sure Reeborg's right hand continues to touch the wall as Reeborg walks. If after moving forward there ceases to be a wall, have Reeborg turn right to keep Reeborg's right hand on the wall.
   * Here's a fascinating article about maze solving algorithms if you're interested: http://theconversation.com/how-to-escape-a-maze-according-to-maths-71582
   
   2. **Checkerboard**: the challenge
   * NOTE: To find this exercise, first click, "Other Worlds", then click "Go to Challenges". After that you will find "Checkerboard: the challenge".
   * To solve this exercise, it may be helpful to think about all the different tokening patterns that make occur in a randomly generated checkboard. Is your solution general enough for each case?
