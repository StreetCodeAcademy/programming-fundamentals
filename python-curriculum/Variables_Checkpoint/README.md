## Building Good Programming Habits

In this lesson, we'll learn about some good programming habits, while solidfying our understanding of variables.

### Exercise 1: Commenting & Code Tracing
Copy the code from the following code into IDLE window.  

For each of the variables after the `#####` line, **comment** what you predict the value will be. A comment is a way to add additionally information to your code that doesn't interfere with the parts of the code that the computer reads and runs. You can use comments to leave helpful explanations of anything that is confusing or leave a note for another programmer using your code. To do so, use the hashtag `#` symbol, which will comment out anything you write on the line. You may have already seen this being used in the lessons and you'll continue to see us use it!

By the end, see if you can tell what the code will print out before you run it. Walking through what you think your code will do and "imagining" what is going on with the variables/functions (either in your head or on paper) is called **code tracing**.

* Also, note that these print statements take **multiple** string arguments, instead of just one, and they seem to **concatenate** the strings WITHOUT using the `+` operator. This is another way to concatenate and print strings. Observe that the output is formatted to include white spaces between each string argument, which is very convenient in some cases.

```python
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90

#####
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven


print("There are", cars, "cars available.")
print("There are only", drivers, "drivers available.")
print("There will be", cars_not_driven, "empty cars today.")
print("We can transport", carpool_capacity, "people today.")
print("We have", passengers, "to carpool today.")
print("We need to put about", average_passengers_per_car, "in each car.")
```

**Make sure that your code runs before moving on.**    

### Exercise 2: Debugging
```python
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90

#####
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * spotted_ufos
average_passengers_per_car = passengers / cars_driven

print("There are", cars, "cars available.")
print("There are only", drivers, "drivers available.")
print("There will be", cars_not_driven, "empty cars today.")
print("We can transport", carpool_capacity, "people today.")
print("We have", passengers, "to carpool today.")
print("We need to put about", average_passengers_per_car, "in each car.")
```

Copy the above code into IDLE and run it. Notice that IDLE reports an error and your code doesn't run. Why is that? When you know why, clearly explain the "why" and then fix it. **FIGURE IT OUT BY YOURSELF**

If you've completed the exercise, congratulations, you've **debugged** your code. Debugging is a very important skill. In fact, it's so important that a well known rule of thumb in software development is _"Writing code takes is a 1/4 of development while 3/4 is debugging"_.  

### Exercise 3: More Debugging Tools
Since we've just talked about how important debugging is, I'd like to introduce you to one last debugging tool that you might find useful. This tool is a free, online code debugger that works very similarly to many of the more heavy duty downloadable tools out there.

1) Go to http://www.pythontutor.com/visualize.html#mode=edit.
2) Copy and paste the following into the code writing window:

```python
#You can intialize multiple variables with a line like this
cars, drivers = 0, 0

cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90

#####
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven


print("There are", cars, "cars available.")
print("There are only", drivers, "drivers available.")
print("There will be", cars_not_driven, "empty cars today.")
print("We can transport", carpool_capacity, "people today.")
print("We have", passengers, "to carpool today.")
print("We need to put about", average_passengers_per_car, "in each car.")
```
3) Click 'Visualize Execution' and use the 'Forward' and 'Back' buttons in the bottom left to run through the code line by line. The arrows on the left bar clearly show which line is executing. The area under the Frame title keeps track of the variables in your code, so you can see their values after each line executes.

* Running this code in the Python debugger allows you to see what's being stored inside the variables and get a better understanding of the code flow. But your code trace from **Exercise 1** and the print statements included in each of these exercises also probably led you to similar conclusions. Keep in mind you can use **print statements**, **commenting**, **code tracing**, **error messages**, **debuggers** and MORE to work through troubles in your code at any point!
* This tool will come in handy as you learn more advanced topics, including loops with variables, and you write more functions independently. You can always come back to this website if you find it helpful.
