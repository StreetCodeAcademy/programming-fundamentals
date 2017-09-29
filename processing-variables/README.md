# Variables in Processing

Now that you're a Karel master, we're going to move into a slightly different programming language! [Processing] (https://processing.org/) uses a lot of the same syntax and logic as Karel, so semicolons and if statements aren't going anywhere. It also adds a lot of exciting new things that let you do much more than move Karel around a screen: you can build [games] (http://www.openprocessing.org/sketch/116027), cool [3D visualizations] (https://www.behance.net/gallery/Phantogram/14442795), and so much more.

## Getting Started - Hello, World!

You should already have Processing installed on your computer! If you go ahead and open the program, you'll see a window like this.

![Processing Start Page](img/processing-start.png)

As you probably guessed, you'll be writing code in the white text space. The play and stop buttons at the top allow you to start and stop your code running, and the black space at the bottom is a console. Unlike in Karel, we can have our Processing code print different things to the console! This is fun (you can make your computer say whatever you want) and can also be a useful tool for finding out why things aren't running or what the state of the program is.

To start off, let's go ahead and type the following into your Processing window:

```java
System.out.println("Hello, world!");
```

If you press run and wait a few seconds, you should see the following output in your console.

![Hello, World!](img/hello-world.png)

The `System.out.println` function is what prints stuff to your console. Whatever you stick inside the parentheses (with quotation marks) will appear in the console once you run.

### Exercise - multiple lines

Try getting multiple lines of text to appear. See if you can make your computer say something like
```
Vicki rocks
Wow she is so cool
```

### Exercise - compliment generator

Let's make a compliment generator! We want your computer to print out compliments for various people in the class. You can start with yourself, your neighbor, or whoever you'd like and print out things like
```
[person] is the nicest human being I know
My day is automatically better once I see [person]
[person]'s jokes always make me laugh
Given the choice between free pizza and [person], I would probably choose [person]
```

Have it print compliments for at least 5 different people! Ex:
![Compliment example]
(img/compliment-beyonce.png)

## Variables

Congratulations on making an awesome compliment generator! When you were changing who you were complimenting, I'm sure you noticed how annoying it was to have to find all of the times you typed a name and change them (especially since you're replacing with all the same thing). Any time you want to compliment a different person, you have to remove and re-type names in 4 or 5 new places. Wouldn't it be nice if you could just replace names in one location and have it update the name in all of the compliments?

We solve this in programming with something called a variable. It lets you take some information, like a name, and assign a label to it. Then, rather than typing in "Beyonce" wherever you want to compliment Beyonce (or anyone), you can just write the label. If you want to change the name, you can just change the value of the label rather than having to go through all of your code and replace the information.

This sounds really abstract and confusing, so let's look at an example.

![Complimenting Beyonce with variables]
(img/compliment-beyonce-var.png)

Code can also be found in examples/compliment_beyonce if you want to try it yourself!

There are a couple things happening here. On line 1, we declare a variable - this is the magic step. Let's unpack what this line is doing.

```String name = "Beyonce";```

Variables have different types: these are basically ways of distinguishing what kind of information they're labelling. A String is computer-speak for text. There are tons of other types -- an int is an integer, or number, a char is a character, and a boolean is a true/false value. Don't worry about memorizing these types for now: you'll get the hang of them as we use them  more.

After we've declared the type, we write the label name. In this case, it's simple: ```name```. This is how we will refer to the labelled information in the rest of the program.

The equals sign is confusing: in math class, we learn that equals sign mean that two things are equivalent. In programming, it takes a slightly different context. This is more like assigning the variable ```x``` a value of ```3``` - or in this case, assigning the variable ```name``` a value of ```"Beyonce"```

Now, let's look at how we use this ```name``` variable. In line 3, we have:
```System.out.println(name + " is the nicest human being I know");```

We can see in the console that this prints out "Beyonce is the nicest human being I know". Using some superpower detective skills, you can see that we've replaced ```name``` with the information it holds: "Beyonce". So typing ```System.out.println(name + " is the nicest human being I know");``` is the same as ```System.out.println("Beyonce" + " is the nicest human being I know");```

### Exercise - compliment generator, round 2

Using the ```name``` variable, change around the names of who is being complimented (use the starter code in compliment_beyonce). You should only have to change one line of code for all of the output statements to be changed!

### Exercise - More Types of Variables

Variables can come in many different types. You've already seen the `String`. There's also the `int`, the `float`, the `boolean` ... among many others. 

#### The int
Let's start with the `int`. The int helps us store and use integers. 
Type ```int one = 1;``` in your processing editor. 

Notice the variable has three parts: the type (which is int), the variable name (which is "one"), and finally the variable value which is 1.

Let's go ahead and declare more variables. 
Type ```int two = 2;``` on the next line. And on the next line type ```int three = 3```. 
Finally lets add these variables together and see the result. 
Type ```System.out.println(one + two + three);``` on the next line and press run. 

That makes sense! Easy right. 
Now, on the next line, type ```one = 3;```. That looks wrong right?
Actually not really, "one" is just the variable name. It has nothing to do with the variable value. Variables are variable meaning that can and often times will change their values. This is called reassignment. 

Go ahead and type ```System.out.println(one + two + three);``` on the next line. Notice that result is different. 

We can also multiply, divide, raise, subtract, .... ints. They work just like numbers in the real world. 
Go ahead and declare some ints. Do whatever you want with them and then make them compute a final value that you will print out to the console. Show the person next to you and ask them to figure out what the value will be at the end. :)

##### The float
In programming, we can't express values with decimal points like 3.14159 using ints. So we need some other variable type to help us do that. Introducing the float. 
This is what a float looks like ```float pi = 3.14159;```. Notice that it still has a variable's three parts. This rule is never broken. 

We can also do all the math operations using floats. Go ahead add, subtract, multiply some floats. We can even mix up our math operations with floats and ints. Go ahead and do that too. 

##### The boolean
In programming, we live in a binary world. Which means everything is either true or false. There are no in-betweens. So how do we express truth and false-hood? We use the boolean. The boolean is a variable type that only has two values, true or false. 

Here's what it looks like ```boolean trumpIsAwesome = false;```. We can't really use them for math but we use them a lot when we are trying figure out what the code is going to do. 

For example:
```
if (trumpIsAwesome) {
  System.out.println("Let's keep him.");
} else {
  System.out.println("Bring Obama back.");
}
```

Here's another example
```
boolean trumpIsScary = true;
while (trumpIsScary) {
  System.out.println("I'm gonna keep looking out for all my people.");
}
```
