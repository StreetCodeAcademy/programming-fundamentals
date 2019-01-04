# Island of Programming Exercises: Warmup Exercises

## The Island Philosophy

Welcome to the Island of Programming Exercises. We've created a gigantic stash of coding problems for the students in Intro to Hack B that will live on this island and a few other islands. We're calling them islands for a couple of reasons.

1. Imagine you're a tourist. Often times, when you're traveling to a new part of the world, the islands aren't the final destination; however, adding a small detour in the trip to see them often adds to the experience as a whole. **What we're trying to say is that these exercises are simply here to build your programming confidence and strengthen certain new skills with extra practice. If you want to move onto projects in either raw Python or Processing Python, feel free!**
2. Tourists will often "island hop". **By no means do you have to do each exercise in the warmup island before moving to the intermediate island etc.** Do the ones that are interesting to you or that you feel will help you reinforce a tricky concept.
3. Islands are known for their ecological biodiversity. **We created these exercises to expose to you a variety of unique problems.** They may be difficult, but don't be discouraged. Seeing all of these different kinds of problems will help you become a better programmer and a better problem solver in other arenas of your life.
4. New islands are created by volcanic activity. **This collection of exercises is not the end all be all of programming exercises. There is always much more to learn and we encourage you to go search for it (with Google or in old-fashioned books).**

## Exercises

We're going to start with some CodingBat exercises. This is a great website that looks similar to Reeborg, but accepts only true Python syntax. You can write code and run code within the website, but I would encourage you to open up a file in IDLE and test things out in your own Python environment before running the test cases on the website. In order to test your code in your own environment, you'll want to make sure you define variable values for the function parameters and print out what your function returns to check it. You do not need any of those steps when you run it in CodingBat since the built-in tool will create test cases and compare your function's output against it. **It might be a good idea to read the following section and work through Exercise 0 before skipping around so you see how this works.**  

### Working with Functions
#### Defining and Calling Functions
Let's remember functions from Reeborg. We would **define** functions and **call** them later in our code. The definition told the computer what a function should do. The calling told the function to actually execute the definition of the function at a certain point in the main code. Something like this: 

```python
#defining function, telling the computer that any time turn_right is called, Reeborg should turn left 3 times
def turn_right():
  for i in range(3):
    turn_left()

#calling function, telling Reeborg to turn right
turn_right() 
```

This concept of **defining** and subsequently **calling** functions holds in Reeborg AND programming in formal Python, so you should use this form in your test files for the exercises.  

#### Return Values
In Reeborg, our functions did not have **return values**, but many of the functions you'll be writing from here on out will have return values. This means that the last line of your function should _return_ a value, which should match the requirements of the exercise. For example, if the exercise asks for a function that returns a boolean, verify that your function returns a `True` value or a `False` value (or a variable that stores one of these two values). If it should return a number or a string or a list, make sure your return statement returns something of that form. To return something, use the keyword `return` followed by the name of the variable or the literal value returned.  

Here are some examples:

```python
#A function that returns a boolean. More specifically, it always returns True.
def function_1():
  return True
  
#A function that returns a variable called nothing_important, 
which stores the empty string
def function_2():
  nothing_important = ""
  return nothing_important
  
#A function that returns the same thing as function_2(),
but does so by returning the literal string value "" instead of a variable
def function_3():
  return ""

#A function that returns a number
def function_4():
  return 1
```

#### Testing Functions
Think of the function with the return value as a passenger on a boat, who throws you an item while you're standing on the mainland, before they sail away forever. **When the computer runs through the code inside a function, it "tosses" the main program the return value before exiting the function.** However, similar to the boat situation, if there's no one on the mainland to catch the return value, it simply disappears (aka the computer doesn't save in its memory). You must use a **variable** to "catch" the return value in order to use the returned value outside the scope of the function.  

For example, the following piece of code **defines** a function called `function_4()`, which returns 1. The `number` variable "catches" the return value from **calling** function_4() in the main program. Then, it prints the value now stored in number, which is 1.  

```python
#Incorrect way to test function_4
def function_4():
  return 1

function_4()

#Correct way to test function_4, with output to console
def function_4():
  return 1

number = function_4()
print(number)

#Another correct way to test function_4, with output to console
def function_4():
  return 1

print(function_4())
```

#### On Function Scope
Only variables created inside the scope of a function or passed in as parameters to the function are accessible INSIDE the function. Observe the following:

```python
def function_5(x):
  print(y)
  return x+1

x = 19
y = 100
function_5(x)
```

This piece of code breaks since `function_5()` prints the value of `y` in its code body, but `function_5()` does not have access to the variable `y` defined in the main program, since `y` is not passed in as a parameter. If you delete the line `print(y)`, the code runs since the return value uses the value stored in `x`, which is passed as a parameter from the main program.

The number of parameters in the function definition should match the number of arguments passed in to the function; however, within the function, only the parameter names are recognized, regardless of what the variable names of the arguments are in the main program.

```python
def function_6(a, b, c):
  print(one)
  print(two)
  return three
  
def function_7(a, b, c):
  print(a)
  print(b)
  return c

one = "hi"
two = "hola"
three = "ni hao"
faulty_result = function_6(one, two, three)
result = function_7(one, two, three)
```

Only one of these two functions works. Why? In `function_6()`, `one`, `two` and `three` are passed in the values of the local variables `a`, `b`, `c` in `function_6()`. Within `function_6()`, only the local variables `a`, `b`, `c` are available, so the function does not recognize references to `one`, `two` and `three`, even though they are initialized in the main program. `function_7()` works because even though the main program variables are name `one`, `two` and `three`, when they are passed in, the local variable `a` is assigned the value of `one` (`"hi"`), the local variable `b` is assigned the value of `two` (`"hola"`), and the local variable `c` is assigned the value of `three` (`"ni hao"`).

> **Challenge**
> What if the last line was replaced with `result = function_7(two, one, three)`? What would be printed out? What would the final value of `result` be?
> This might be a good place to use the debugger we introduced previously: http://www.pythontutor.com/visualize.html#mode=edit

**Note to mentor:** This is a great place to stop and check-in with your students. Make sure they understand this concept. It is a stumbling block for many students.

### Exercise 0
Write a function called `sleep_in()` that takes in two boolean arguments, `weekday` and `vacation`. Both of these two variables are booleans, so they can only stores the values `True` and `False`.  

We want to write a sleep in function that returns `True` IF it is a weekday or we are on vacation because we want to sleep in. Otherwise, the function returns `False` because we would NOT want to sleep in.   

We'll give you a start.

```python
def sleep_in(weekday, vacation):
  #your code here
  
  #make sure your last line RETURNS a boolean
```

**Hint 1 (checklist for testing your function in IDLE):** 
* **Define** your sleep in function with the header we provided you at the TOP of a new file (remember we always define functions before we use them in any kind of code we write). 
* Fill in the function body and make sure your last line **returns** a boolean value. Create new **variables** to hold test case values (should be booleans) for the weekday and vacation parameters of your function. 
* **Call** your function, making sure to **pass in** the new variables you created as parameters, and assign a new **variable** the return value from `sleep_in()` (if you're not sure about how to do this, look at the example right above this exercise). 
* **Print** the variable holding the return value accesible in the scope of the main program to check that the output is what you'd expect for that given test case. 
* **Re-assign the values** of the weekday and vacation variables to create a new test case and call your function again to keep testing!

**Hint 2:** Which key word is capitalized in the exercise prompt? What kind of statement would you use to check for the conditions listed? Which operator do you use to check for equality?

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p173401**   

