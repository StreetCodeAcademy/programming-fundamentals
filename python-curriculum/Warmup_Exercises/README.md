# Island of Programming Exercises: Warmup Exercises

## The Island Philosophy

Welcome to the Island of Programming Exercises. We've created a gigantic stash of coding problems for the students in Intro to Hack B that will live on this island and a few other islands. We're calling them islands for a couple of reasons.

1. Imagine you're a tourist. Often times, when you're traveling to a new part of the world, the islands aren't the final destination; however, adding a small detour in the trip to see them often adds to the experience as a whole. **What we're trying to say is that these exercises are simply here to build your programming confidence and strengthen certain new skills with extra practice. If you want to move onto projects in either raw Python or Processing Python, feel free!**
2. Tourists will often "island hop". **By no means do you have to do each exercise in the warmup island before moving to the intermediate island etc.** Do the ones that are interesting to you or that you feel will help you reinforce a tricky concept.
3. Islands are known for their ecological biodiversity. **We created these exercises to expose to you a variety of unique problems.** They may be difficult, but don't be discouraged. Seeing all of these different kinds of problems will help you become a better programmer and a better problem solver in other arenas of your life.
4. New islands are created by volcanic activity. **This collection of exercises is not the end all be all of programming exercises. There is always much more to learn and we encourage you to go search for it (with Google or in old-fashioned books).**

## Exercises

We're going to start with some CodingBat exercises. This is a great website that looks similar to Reeborg, but accepts only true Python syntax. You can write code and run code within the website, but I would encourage you to open up a file in IDLE and test things out in your own Python environment before running the test cases on the website.  

In order to test your code in your own environment, you'll want to make sure you define variable values for the function parameters and print out what your function returns to check test cases. You do not need any of those steps when you run it in CodingBat (or other similar platforms we will use) since a built-in tool will create test cases and compare your function's output against it. The [**Functions Primer**](https://github.com/StreetCodeAcademy/programming-fundamentals/tree/master/python-curriculum/Functions_Primer) should prepare you well to tackle these exercises and go over many details about functions that will be relevant beyond Intro to Hack B. Please read through that lesson before you work on any of the island of programming exercises.

For the following exercises, write your code in IDLE and check the test cases provided against your code. Then, you'll copy just the definition of the function into CodingBat (a teaching platform) to test it against additional test cases provided by the CodingBat tool.  

### Exercise 1
Write a function called `monkey_trouble()` that takes in two boolean arguments, `a_smile` and `b_smile`. Both of these two variables are booleans, so they can only stores the values `True` and `False`.  

We have two monkeys, a and b, and the parameters `a_smile` and `b_smile` indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Return `True` if we are in trouble.

```python
def monkey_trouble(a_smile, b_smile):
  #your code here
  
  #make sure your last line RETURNS a boolean

a_smile = #pick a test value
b_smile = #pick a test value
result = monkey_trouble(a_smile, b_smile) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Cases:
* monkey_trouble(True, True) → True
* monkey_trouble(False, False) → True
* monkey_trouble(True, False) → False

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p120546**.

### Exercise 2
Let's pretend that we purchased a parrot. Parrots are amazing and can talk at all hours of the day. However, if they talk at the wrong hours, the parrrot could get us into trouble.

Write a function called `parrot_trouble()` that takes in two arguments, `talking` and `hour`. 

`talking` is an argument that represents whether or not the parrot is talking. It is a boolean argument and therefore it can only take the values `True` and `False`.

`hour` is an argument that represents the hour at which the parrot is talking. It is a numeric (number) argument with values from 0-23. 

The parrot will get us in trouble if it is talking and the hour is before 7 or after 20. Write the code for `parrot_trouble` so that it returns `True` if we are in trouble.

```python
def parrot_trouble(talking, hour):
  #your code here
  
  #make sure your last line RETURNS a boolean

talking = #pick a test value
hour = #pick a test value
result = parrot_trouble(talking, hour) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Cases:
* parrot_trouble(True, 6) → True
* parrot_trouble(True, 7) → False
* parrot_trouble(False, 6) → False

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p166884**.

### Exercise 3
Write a function called `near_hundred()` that takes in one integer, `n`.

Given an integer `n`, return `True` if it is within 10 of 100 or 200. Note: `abs(n)` computes the absolute value of a number.

```python
def near_hundred(n):
  #your code here
  
  #make sure your last line RETURNS a boolean

n = #pick a test value
result = near_hundred(n) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Cases:
* near_hundred(93) → True
* near_hundred(90) → True
* near_hundred(89) → False

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p124676**.

### Exercise 4
Write a function called `diff21()` that takes in one integer, `n`.

Given an integer `n`, return the absolute difference between n and 21, except return double the absolute difference if n is over 21.

```python
def near_hundred(n):
  #your code here
  
  #make sure your last line RETURNS an integer

n = #pick a test value
result = diff21(n) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Cases:
* diff21(19) → 2
* diff21(10) → 11
* diff21(21) → 0

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p197466**.

### Exercise 5
Write a function called `sum_double()` that takes in two integers, `a` and `b`.

Given two int values, `a` and `b`, return their sum. Unless the two values are the same, then return double their sum.

```python
def sum_double(a, b):
  #your code here
  
  #make sure your last line RETURNS an integer

a = #pick a test value
b = #pick a test value
result = sum_double(a, b) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Cases:
* sum_double(1, 2) → 3
* sum_double(3, 2) → 5
* sum_double(2, 2) → 8

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p141905**.

### Exercise 6
Write a function called `makes10()` that takes in two integers, `a` and `b`.

Given 2 ints, `a` and `b`, return `True` if one if them is 10 or if their sum is 10.

```python
def makes10(a, b):
  #your code here
  
  #make sure your last line RETURNS a boolean

a = #pick a test value
b = #pick a test value
result = makes10(a, b) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Cases:
* makes10(9, 10) → True
* makes10(9, 9) → False
* makes10(1, 9) → True

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p124984**.

### Exercise 7
Write a function called `not_string()` that takes in one string, `str`.

Given a string, return a new string where "not " has been added to the front. However, if the string already begins with "not", return the string unchanged.

```python
def not_string(str):
  #your code here
  
  #make sure your last line RETURNS a string

str = #pick a test value
result = not_string(str) #passes in test variables, calls function, assigns return value to result
print(result) #prints the return value stored in result to compare with expected output from test case
```

#### Test Cases:
* not_string('candy') → 'not candy'
* not_string('x') → 'not x'
* not_string('not bad') → 'not bad'

**Copy just the definition of the function into CodingBat to check your function for correctness against its test cases: https://codingbat.com/prob/p189441**.

