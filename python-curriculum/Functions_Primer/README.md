# Functions Primer

## Defining and Calling Functions
Let's remember functions from Reeborg. We would **define** functions and **call** them later in our code. The definition told the computer what a function should do. The calling told the function to actually execute the definition of the function at a certain point in the main code. Something like this: 

```python
#defining function, telling the computer that any time turn_right is called, Reeborg should turn left 3 times
def turn_right():
  for i in range(3):
    turn_left()

#calling function, telling Reeborg to turn right
turn_right() 
```

This concept of **defining** and subsequently **calling** functions holds in Reeborg AND programming in formal Python, so you should use this form in your test files for coding exercises.  

## Return Values
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

## Testing Return Values/Function Behavior
Think of the function with the return value as a passenger on a boat, who throws you an item while you're standing on the mainland, before they sail away forever. **When the computer runs through the code inside a function, it "tosses" the main program the return value before exiting the function.** However, similar to the boat situation, if there's no one on the mainland to catch the return value, it simply disappears (aka the computer doesn't save in its memory). You must use a **variable** to "catch" the return value in order to use the returned value outside the scope of the function.  

For example, the following piece of code **defines** a function called `function_4()`, which returns 1. The `number` variable "catches" the return value from **calling** function_4() in the main program. Then, it prints the value now stored in number, which is 1.  

```python
#Incorrect way to test function_4
def function_4():
  return 1

function_4() #return value from function not assigned to a variable

#Correct way to test function_4, with output to console
def function_4():
  return 1

number = function_4() #return value from function assigned to variable
print(number)

#Another correct way to test function_4, with output to console
def function_4():
  return 1

print(function_4()) #return value printed without assigning to a variable
```

## Passing Arguments
In Reeborg, every function ended with `()`. Though the parentheses after a function name were left empty in Reeborg, they are often used for passing arguments into a function.

**Arguments** are the values passed to the function at run-time (used in function calls). **Parameters** are accessible inside functions and accept arguments passed into the function. When an argument is passed into a function, the parameter defined to accept it stores the value of the argument inside the function scope. You can think of them as variables sent to your own function from the outside that are now accessible within your function.

Since functions can only access variables created inside its own scope or parameters passed into it from outside its own scope, we call both of these kinds of variables **local variables**. Variables declared in the main program are called **global variables**.  

The number of **parameters** in the function definition should match the number of arguments passed in to the function; however, within the function, only the parameter names are recognized as **local variables**, regardless of what the **global variable** names of the arguments are in the main program. We'll discuss this further in the next section on function scope.

### Exercise 1
Only one of these two functions works properly. Which one runs an error? Why? 

```python
def function_6(a, b):
  one = one + " bye"	
  print(one)
  two = two + " adios"
  print(two)
  
def function_7(a, b):
  a = a + " bye"
  print(a)
  b = b + " adios"
  print(b)

one = "hi"
two = "hola"

faulty_result = function_6(one, two)
result = function_7(one, two)
```

In `function_6()`, `one`, `two` and `three` are passed in the values of the local variables `a`, `b`, `c` in `function_6()`. Within `function_6()`, only the local variables `a`, `b`, `c` are available, so the function does not recognize references to `one`, `two` and `three`, even though they are initialized in the main program.  

`function_7()` works because even though the main program variables are name `one`, `two` and `three`, when they are passed in, the local variable `a` is assigned the value of `one` (`"hi"`), the local variable `b` is assigned the value of `two` (`"hola"`), and the local variable `c` is assigned the value of `three` (`"ni hao"`).

> **Challenge**
> What if the last line was replaced with `result = function_7(two, one, three)`? What would be printed out? What would the final value of `result` be?  

> This might be a good place to use the debugger we introduced previously to trace variable names and their corresponding values inside each scope: http://www.pythontutor.com/visualize.html#mode=edit

## On Function Scope
Only variables created inside the scope of a function or parameters of the function are accessible INSIDE the function. 

### Exercise 2
Which line in the above code needs to be commented out to prevent an error when the code runs?  

> This might be a good place to use the debugger we introduced previously to run through the entire program line by line and examine the variables present inside different scopes: http://www.pythontutor.com/visualize.html#mode=edit

```python
def function_5(y):
  y = -100
  z = 73
  print(y)
  print(z)

y = 100
function_5(y)
print(y)
print(z)
```

This piece of code does something interesting. The **global variable** `y` is passed into `function_5()` as an argument, to a **local variable** also called `y`. This **local variable** `y` now stores the value 100, the value stored in the **global variable** `y`. The first line inside the function re-assigns the value of `y` to -100. Inside of the function, a **local variable** `z` is also created and both -100 and 73 are printed when `function_5(y)` is called. But, when we try to print y and z after the function exits, Python prints the value stored in the **global variable** `y`, 100. Notice the **local variable** `y` with value -100 does not persist when the function returns! The program runs an error when we try to print `z`, since there is no **global variable** named `z`.

**Note to mentor:** This is a great place to stop and check-in with your students. Make sure they understand this concept. It is a stumbling block for many students.

## Let's put it all together!

### Exercise 3
Write a function called `sleep_in()` that takes in two boolean arguments, `weekday` and `vacation`. Both of these two variables are booleans, so they can only stores the values `True` and `False`.  

We want to write a sleep in function that returns `True` IF it is a weekday or we are on vacation because we want to sleep in. Otherwise, the function returns `False` because we would NOT want to sleep in.  

Write your code in IDLE and check the test cases provided against your code. Then, you'll copy just the definition of the function into CodingBat (a teaching platform) to test it against additional test cases provided by the CodingBat tool.  

We'll give you a start.  

```python
def sleep_in(weekday, vacation):
  #your code here
  
  #make sure your last line RETURNS a boolean

weekday = #pick a test value
vacation = #pick a test value
result = sleep_in(weekday, vacation) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Case:
* sleep_in(False, False) -> return True  
* sleep_in(True, False) -> return False   
* sleep_in(False, True) -> return True   

**Hint 1 (checklist for testing your function in IDLE):** 
1. **Define** your sleep in function with the header we provided you at the TOP of a new file (remember we always define functions before we use them in any kind of code we write). 
2. Fill in the function body and make sure your last line **returns** a boolean value. Create new **variables** to hold test case values (should be booleans) for the weekday and vacation parameters of your function. 
3. **Call** your function, making sure to **pass in** the new variables you created as parameters, and assign a new **variable** the return value from `sleep_in()` (if you're not sure about how to do this, look at the example right above this exercise). 
4. **Print** the variable holding the return value accesible in the scope of the main program to check that the output is what you'd expect for that given test case. 
5. **Re-assign the values** of the weekday and vacation variables to create a new test case and call your function again to keep testing!

**Hint 2:** Which key word is capitalized in the exercise prompt? What kind of statement would you use to check for the conditions listed? Which operator do you use to check for equality?

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p173401**.
