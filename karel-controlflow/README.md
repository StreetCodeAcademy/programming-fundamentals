# Making Decisions with Karel

Before we get started, head over to [CodeHS](codehs.com/go/0AF7) to enroll in this lesson's class on CodeHS. CodeHS is a great platform for teaching Java online, and we've used it to create custom content for this course. 

Now that we understand that programming is nothing more than instructing a computer to execute certain commands, let's try our hand at it. In this lesson you'll be working with Karel - you might be wondering who that is. Check him out:

![Karel]
(img/Karel.png)

Developed at Stanford University by Rich Pattis, Karel is a robot that understands a certain list of commands that we can use to do interesting things. Part of the art of programming is extending these base commmands that Karel understands into more complex programs that enable Karel to do cool things.

## Getting Started - What Can We Do With Karel?

Let's check out what our little guy can do. Here's a list of things that Karel can do his world:

![Karel Methods]
(img/karelMethods.png)

We see that Karel has quite a few things he can do - for instance, he can move in his world using:
```java
move();
```
He can also pick up balls, tokens that are sometimes scattered in his world, using: 
```java
takeBall();
```

Although the way the command looks may appear odd, don't worry - once typed into Eclipse, Java understands that we are asking Karel to do the specified command as per the methods sheet shown. The parenthesis () and semicolon ; are just pieces of syntax Java uses to know we are sending a command to Karel.

### Example 

Let's try this out. Suppose Karel is put into the following world, where lines represent walls and diamonds represent beepers:

![Karel Newspaper Example]
(img/newspaper.png)

We want Karel to venture outside of his enclosure, pick up the beeper, and return to where he started.

How could we do this? We know from our methods list we have the move() and takeBall() commands at our disposal. However, it seems that just moving forward isn't enough - after a few steps forward Karel would hit a wall. Referencing back to our methods list, we see that Karel can also turn right. We'll have to incorporate a few turns into our list of commands to make sure Karel can move outside of his house and return safely without hitting any walls. A working program would look like this:

```java
move();
move();
turnRight();
move();
turnLeft();
move();
takeBall();
turnAround();
move();
move();
move();
turnRight();
move();
```

Just like we previously talked about, we see that programming is finding a list of instructions that accomplishes what we want. Here, we were able to get Karel to pick up a beeper outside of his house, but we'll see that we can do more interesting things with Karel, and programming in general, very quickly. 

### Exercise

Before we get there though, give this problem a shot:

![Karel Newspaper2 Example]
(img/newspaper2.png)

Similarly, we want Karel to go outside and pick up all the beepers present, ultimately returning to his starting location. Give it a go using the Newspaper Karel exercise in the CodeHS lesson.

## Making Decisions

Unfortuantely for our friend Karel, life is not always as simple as walking around in an unchanging world. To make Karel independent enough to survive, we'll want to give him the ability to make decisions. Say, for example, that Karel had to get from one side of his world to the other in the following situations:

![Karel Wall1 Example]
(img/wall1.png)

and

![Karel Wall2 Example]
(img/wall2.png)

Unfortunatley, we couldn't just tell Karel to `move()` - although he would take a step forward in one world, he'd run into a wall into another.To remedy this we'll have to give Karel the ability to make decisions in his world. We do this using **Control Statements** - statements that incorporate logic Karel undestands. We'll be going over three control statements in this lesson:

* If-Else statements
* For loops
* While loops

We'll explain what each one means as we go, so let's get to it!

## If-Else statements

An if statement is made up of two parts - an `if` and an `else`. The if block allows us to execute a list of commands *only if* a certain condition is satisifed. The general structure looks like this:

```java
if(condition){
	doSomething();
} else{
	doSomethingElse();
}
```

The `(condition)` is the condition that Karel checks before executing. If it's true, the commands specified in the following curly braces `{}` are executed. Otherwise the commands specified in the braces following `else` are executed instead.

For example, in our previous wall example, we could've instructed Karel to move *only if* the front was present, using the `frontIsClear()` method available to us. That would look like:

```java
if(frontIsClear()){
	move();
}
```

Note that the `else{}` block is optional - if we don't have an alternative list of instructions and only need Karel to do something if a condition happens to be satisifed, we can stick with just an `if` statement.

### Exercise

We've seen how we can use an if-else statement to make decisions with Karel. Say Karel's placed in a world that's **exactly** four steps wide(we only need to move four times to get Karel from one end to the other). However, each world has a few beepers scattered at random, and we want Karel to move from one end to the other, ultimately picking up all the beepers. Try writing a program that allows Karel to accomplish this for the following two worlds, and try it out in the two worlds in the CodeHS lesson:

![Karel if1 Example]
(img/if1.png)

and 

![Karel if1 Example]
(img/if2.png)

## For Loops

Let's give our friend Karel another cool ability to build on top of.

Let's say we want Karel to be able to repeat a number of steps a certain number of times - in the previous exercise, for example, we knew Karel had to move from one end of the world to the other and it was 4 steps wide. Instead of writing out:

```java
move();
if(beepersPresent()){
	takeBall();
}
```

four times over, we can use something called a **for loop**.

A for loop allows us to make Karel repeat an action *when we know exactly how many times* we need it repeated. The structure looks like this:

```java
for(int i = 0; i < 5; i++){
	doSomething();
}
```
There's a lot there to unpack, so let's take each part of the loop one by one.

The `int i` is a declaration of a variable that we're going to use as our counter to keep track of how many times we've repeated something. We'll get to more on variables later, so don't worry too much about the syntax here. The `int i = 0` is the *initialization* of the loop - it tells Karel where to start his counter. In computer science we usually start counting from 0 instead of 1, and this is one example of that.

The `i < 5` is known as the *condition* - Karel checks to see whether his counter, `i`, satisfies this condition. This allows us to control how many times Karel will repeat an action. If the condition is satisfied, the code in the following block will be executed.

The `i++` is known as the *increment* - this is what Karel uses to increment his counter following each action. The `++` part is a fancy wasy of saying "add 1 to the variable i" in Java. So, **after** the code is executed, the variable `i` is incremented by one. This allows Karel to repeat the action until `i` doesn't satisfy the condition anymore.

### Example

Say we want Karel to move forward exactly five steps. We could do this using a for loop as follows:

```java
for(int i = 0; i < 5; i++){
	move();
}
```

How's this work? `i` is first set to 0 - before executing the `move()` statement, Karel checks to see if the condition `i < 5` is satisfied. Since `i` is first set to 0, and 0 < 5, this evaluates to true. The `move()` command is then executed and the increment statement is executed - in our case, `i++`, which updates `i` to 1. This series of steps is repeated until the condition `i < 5` is evaluated to false - in other words, the condition is satisified for `i` = 0, 1, 2, 3 and 4, which is five steps.

### Exercise

Give it a shot! Karel is in the following world:

![Karel for Exercise]
(img/forProblem.png)

We want Karel to move forward and pick up every beeper in this five step world. Check out the starter file for for-loops in the CodeHS lesson and give it a go.

## While Loops 

There's one last interesting control structure for us to learn about here, and that's the **while** loop. Like the for loop, the while loop allows us to ask Karel to repeat a set of actions - however, while loops are useful for when we *don't know exactly how many times Karel will need to repeat something*. The loop looks like this in Java:

```java
while(condition){
	doSomething();
}
```
The *condition*, similar to the for loop's condition, is evaluated to see whether it's true or not. If it is true, the code in the following block is executed. 

Say we need Karel to get from one end of his world to another but *didn't know* how wide it was. We could do it as follows, using the `frontIsClear()` check:

```java
while(frontIsClear()){
	move();
}
```

Before executing the `move()` command, Karel will check to make sure that his front is indeed clear.

### Exercise

Give the while loop a go - say Karel is sitting on top of a pile of beepers and we want him to pick up every single beeper that's there. However, we have no idea how many he's on top of - his world could look like below:

 ![Karel while Exercise]
(img/whileProblem2.png)

or below:

![Karel while2 Exercise]
(img/whileProblem2.png)

Using a while loop, write a program that enables Karel to pick up all the beepers no matter the world. Try your code out using the starter files for While-Loop1 and While-Loop2 at CodeHS.

## Conclusion

Congratulations! You're now a master of control flow statements and can allow Karel to make decisions. Let's put your skills to one final test.

Say that Karel needs to get from one wall of his world to the other, and there are beepers scattered at random intervals on his path in varying amounts. We want him to pick up every beeper along the way and end up at the other wall. To make it even better, we don't know how wide the world is. Two possible worlds are below:

![Karel combined1 Exercise]
(img/combined1.png)

and

![Karel combined2 Exercise]
(img/combined2.png)


Tackling this might require using an if statement, some while loops, and will definitely require some creative thinking. Another hint: remember Karel can check if frontIsClear() before executing something. Give it a shot! Test your code using the Challenge-World1 and Challenge-World2 files on CodeHS. 


