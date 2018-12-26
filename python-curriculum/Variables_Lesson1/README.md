# Introduction to Python
<p> Hello! And welcome to Streetcode!! It's great to have you here! If you're reading this, you're in the Intro to Hack B class, ready to learn Python! We're going to start by showing you what Python is, and why we learn it! </p>

# What is Python?
<p> Have you ever wondered how people build apps, or create websites? Everything on your computer is powered by lines of instructions that tell the computer exactly what to do. We call these lines of instructions "code", and "coding" is nothing but the process of writing those instructions out one-by-one. Python is one of the "languages" used to give the computer instructions - and it's definitely one of the better ones! Here's what Python "code" looks like:

```python 
def draw(self):
        self.canvas.move(self.id, self.xspeed, 0)
        pos = self.canvas.coords(self.id)
        if pos[0] <= 0:
            self.xspeed = 0
        if pos[2] >= 500:
            self.xspeed = 0
```

If this looks a bit intimidating right now - don't worry! We're going to learn exactly how each of those lines work over the next 11 weeks. But if you really look at the code, you'll find it sort of looks a lot like English! The first line <code>def draw(self)</code> looks like its defining something (that's what the word "def" does!). The next line of code looks like it moves something, right? (<code>self.canvas.move</code>). The reason we learn Python is that it really does look a lot like English, and learning it is one of the best ways to learn how to program a computer!

# First lesson - using IDLE!
One of the hardest parts of programming is getting your computer to run your code! This might sound kind of silly - didn't we just say that all a computer does is run code? Well yeah, but getting it to run <italic>your</italic> code is actually kinda tricky. To run your Python code, we're going to use something called "IDLE". When you search your computer for IDLE and run it, you should see something like this:

![IDLE Screenshot][IDLE]

[IDLE]: IDLE.png

IDLE is a program that "runs" your Python code. To get it to run a series of Python instructions (an instruction is just a line of code) that you wrote, click "File" and then "New File". This should open up a window like this: 

![What a New File Looks like][newfile]

[newfile]: newfile.png 

Now, we can get started writing code! For now, type the following line of code into this new window: <code> print ("Hello, World!")</code>, so that the window looks like this:

![Sample Code][samplecode]

[samplecode]: written-code.png

Now, save this file onto your computer. Feel free to ask your teacher for help! I called my file "FirstPython.py". Then, click "Run" and then "Run Module". A new window should pop up that looks like this: 

![Sample Code][runpage]

[runpage]: runpage.png

If it doesn't, ask one of the teachers for help. If it does, congrats :). You just wrote your first line of Python! Your on your way to creating whatever you want on a computer!

# Variables
We'll begin by discussing introductory syntax. Syntax describes the rules dictating how code should be written (in order to be understood by the computer), similar to the definition of syntax in the English language.  

The first piece of syntax we're going to talk about is how to define **variables**.  

**Variable:** A variable is a way to store information - the different things you want to remember in your code. You can think of it like a storage unit or a box that holds something.  

![Variable Storage](variables_concept_image.jpg)

For example, if you wanted your code to "remember" your first and last name, you would write something like this: 

```python 
FirstName = "Diwakar"
LastName = "Ganesan"
```

Notice the structure to each line. To create a **variable** in python, use the following pattern:
variable_name = value. The equal sign in Python means something a little different than what you're used to in math. By saying <code>my_name = "Jack"</code>, I'm assigning  "Jack" to the variable my_name. You could imagine a box labled `my_name` that we put the word, "Jack" into. 

**Remember that the equal sign assigns variables in Python** Variable names have a few rules. First, you can't have spaces in a variable name. So, you _can't_ do this: 

```python 
First Name = "Diwakar"
```

But, you _can_ do this: 

```python 
First_Name = "Diwakar"
```

Notice the "_" character? It's called an underscore, and it can be used to replace spaces whenever you want spaces in your variable name. 

Additionally, variable names **can't** start with a number. So, this wouldn't fly: `2Cool4Me = 5`. 

Now, what can we store in variables? There are really only two different kinds of variables we can store in python: **numbers** and **text**. 

## Numbers
The most important thing you'd want your program to remember are numbers. To remember numbers in Python, you can use code like this: 

```python 
my_age = 18
favorite_number = 32
temperature = 76.5
```

Notice how the names of the variables describe what kind of data it holds. 

You can also write expressions with variables that involve numbers! For example, if I write:

```python
my_favorite_number = 15
another_number = my_favorite_number * 2 - 10
```
Then, `another_number` will equal 15 (the value in `my_favorite_number` times 2 minus 10, so (15 * 2 - 10), which is 20. Again, we're assigning `another_number` to equal `my_favorite_number * 2`.

After writing all the code above, to test this all out, you could try:

```python
print(another_number)
```

and see if it prints out what you expected.

### Try it:

Go ahead and work with your mentor to make several variables that store numbers. Then try running your code and see if there are any errors. Once you define a couple of variables, you can try printing them out as well.

> **Note to mentors:** It can be helpful to, on a seperate piece of paper, draw out boxes for each variable with the value stored in it.

## Text
Python also let's you remember short pieces of text, like your name! But, it's a bit tricky. You **can't** do this: 

```python
name = Diwakar Ganesan
```

Even though you followed the usual convention (<span style="color:blue">variable_name</span> = <span style="color:red">value</span>), text needs to be surrounded by **quotations**. Text that's surrounded by quotations is called a **string**. So, the following line of code would work:

```python
name = "Diwakar Ganesan"
```

You can also add together variables that contain text. For example, if I write:

```python
FirstName = "Diwakar"
LastName =  "Ganesan"
Name = FirstName + " " + LastName
```

Then, `Name` will contain the string `"Diwakar Ganesan"`. The last line of code used the **+** symbol to combine together three strings: `FirstName`, `" "` (a space character), and `LastName`.

Always remember: **text in python must be surrounded by quotes**. 

Once again, after writing all the above code, you can test and see what your variable is storing by running:

```python
print(Name)
```
> Feel free to try this with the other variables as well!


### Try it:

Go ahead and work with your mentor to make several variables that store words or sentences this time. Again, try running your code and see if there are any errors. Then you can try printing your variables to see if they store what you think they do.

## Print Statements
We're now going to talk about `print` statements! Remember the first line of code you wrote in this exercize? `print ("Hello, World')` as well as the times we printed out some of our variables. This line of code is called a print statement. A print statement is used to output lines of **text** to your screen! For example, if I write the following lines of code:

![Sample Code][multiple_print]

[multiple_print]: multiple_print.png

Into a new IDLE script, and run the script, I should see the following output!

![Sample Code][multiple_print1]

[multiple_print1]: multiple_print1.png

If you don't remember how to write a new Python script in IDLE, scroll up to the "First Lesson - using IDLE!" section or ask one of your teachers for help!

Each print statement consists of **4** parts: 

- The word print: **<span style="color:blue">print</span>** 
- An open parenthesis: **<span style="color:purple">(</span>** 
- **Some Text**
- Close parenthesis: **<span style="color:purple">)</span>**

The trickiest part is figuring out what goes inside the open and close parenthesis. In the list above, it says to place **some text** in between the parenthesis. What this means is that you can print out anything that counts as a string. Above, in the variables section, we said that strings are any lines of text contained in quotation marks. So, all of the following code is all valid.


```python
print("Hello, World")
FirstName = "Diwakar"
LastName =  "Ganesan"
print (FirstName + " " + LastName)
print(FirstName + " is a G.")
```

The last example may seem a little weird, but remember since `FirstName` and `LastName` are strings, you are allowed to print out the larger string `FirstName + " " + LastName`. 

### Try it:

Feel free to copy and paste this code into your window to test it out and mess with it. Try making a couple more print statements and printing out various messages, both with and without variables.

## Taking user input

Now that we've learned how to use variables, take a look [here](https://steemit.com/howto/@jackmanmania/python-programming-lesson-1-variables) to see how you can get user input and store it in a variable. You can skip the first part that repeats the things we already covered.
 
## Practice

>Mentors: once again, it could be really helpful to use a seperate piece of paper with "boxes" for each variable that store a value.

Work with a mentor to use the variables you defined to print out various sentences. You can try printing the variables by themselves, printing them with other variables, and combining them with other pieces of text. After that try the same thing, but having the variables equal things that the user types in.

>**Hint:** use the `input` function to do this.

**Some project ideas:** Make your own compliment generator! Ask the user their name, then have your computer make them blush by sweet talking them.

![](Compliments.png)

Alternatively, you could build a roast generator:

![](Roasts.png)


> **Tip:** You might end up with some weird results when you try to print out a variable that stores a number in combination with other things. Before your mentor tells you how to fix it, see if you can figure this out on your own by Googling it.
> 
> Googling is an important skill that you'll end up using a lot the more you program. A good place to start is pasting the error message you see when you ran the program into Google.
 
