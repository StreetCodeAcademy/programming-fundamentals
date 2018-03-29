## Variable Checkpoint Exercises

In this lesson, we'll really test our metal with variables and really make sure that we understand how to use them. While the lesson might seem repetitive and even boring, it's very important that you complete this lesson earnestly because variables are one of the underpinnings of coding and they should come to you as second nature. Imagine, we are learning to play the piano and we are solidifying our fundamentals. 

### Exercise 1: Commenting & Variable Assignment
Copy the code from the following code into IDLE window. 
Add a comment above each line of code that explains exactly what that line does. If you don't know what a comment is, ask your instructor to help you. 

```
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven


print "There are", cars, "cars available."
print "There are only", drivers, "drivers available."
print "There will be", cars_not_driven, "empty cars today."
print "We can transport", carpool_capacity, "people today."
print "We have", passengers, "to carpool today."
print "We need to put about", average_passengers_per_car, "in each car."
```


Make sure that your code runs before moving on. 

### Exercise 2: MOAR Assigment and Debugging
```
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * spotted_ufos
average_passengers_per_car = passengers / cars_driven


print "There are", cars, "cars available."
print "There are only", drivers, "drivers available."
print "There will be", cars_not_driven, "empty cars today."
print "We can transport", carpool_capacity, "people today."
print "We have", passengers, "to carpool today."
print "We need to put about", average_passengers_per_car, "in each car."
```

Copy the above code into IDLE and run it. Notice that IDLE/Python reports an error and your code doesn't run. Why is that? When you know why, clearly explain the "why" and then fix it. **FIGURE IT OUT BY YOURSELF**

If you've completed the exercise, congratulations, you've debugged your code. Debugging is a very important skill. In fact, it's so important that a well known rule of thumb in software development is _"Writing code takes is a 1/4 of development while 3/4 is debugging"_. 

### Exercise 3: Even MORE Printing!
Complete all exercises from the following links: 
https://learnpythonthehardway.org/book/ex5.html
https://learnpythonthehardway.org/book/ex6.html

Notice that we've learned a new way to print. 

### Exercise 4: So You Think You Understand Variables
From the following link, run the code in IDLE. In a comment, explain what each line of code is doing. Explain why the printing in the console looks like it does. 
https://learnpythonthehardway.org/book/ex8.html


### Exercise 5: Job Interview AI
```
person = input('Enter your name: ')
print('Hello', person)
```

Run the program above in IDLE. Notice that it prompts you for your name and then prints `Hello Darth Vader` (Yeah, that's my real name). 

Your last task is to write a program that interviews a potential job candidate. Your program will welcome the candidate, ask them a series of questions (name, age, eye color, number of siblings, years of work experience, motivation level .... etc), run a series of secret computations, and then tell the candidate if they are hired or if they've gotta keep looking. 
