
# Python Fundamentals: Guessing Game

I'm thinking of a number between 0 and 100. Try guessing what it is. If you get it wrong, I'll tell you whether your next guess should be higher or lower.

In the last lesson you learned a lot of the basic tools you can use in python. Now we are going to put it all together to make a guessing game. In this game, your program will come up with a secret number, and you the human will have to try a guess what the number is. You give your program a guess by entering the number, and your program will tell you whether you got it correct, or whether your guess should be higher or lower.

Lets start off by storing the secret number in a variable:
```python
secret_number = 27
```

## Ask the player to enter a number
Now, to start the game, we want to tell the player the range the secret number is in. As you have seen before, your program can show messages to the player by using  the `print()` function. After that, we can use the `input()` function to ask the player to enter a number. Lets try that out now:
```python
secret_number = 27
print('I am thinking of a number between 0 and 100. Can you guess what it is?')
player_guess = input('Try guessing a number. ')
# Try printing out the player's guess here
```
Try running your program. You should see the message you printed to the screen, and then you will be asked to enter a number. To make sure it is working correctly, try printing the `player_guess` at the end.

## Check if the guess is bigger than the secret number
Now that the player has entered a guess, we should see if their guess is bigger, smaller, or correct. Remember the `if` statement? Lets use that to check the player's guess. First, lets add an if statement to check if the player guess is bigger than our secret number.
```python
secret_number = 27
print('I am thinking of a number between 0 and 100. Can you guess what it is?')
player_guess = input('Try guessing a number. ')

# Add an if statement here to check if the player's guess is
# bigger than the secret_number. If it is, then print a message
# to the player telling them their guess is bigger
```

Try running your program again now with the if statement. 

### Oh No! You got an error? What happened?
You might have gotten an error like this:
```python
TypeError: '>' not supported between instances of 'str' and 'int'
```
Ummm... What does this mean? Remember how we learned that there were **text** variables and **number** variables? When we wrote `secret_number = 27`, python made the `secret_number` variable a **number** variable. However when we did `player_guess = input(..)`, python made the `player_guess` variable a **text** variable.

Python is complaining that when you typed `if player_guess > secret_number:`, python did not know how to check if a **text** variable was greater than a **number** variable. To fix this, we can use another python function `int(..)`. This function will take a **text** variable, and convert it into a **number** variable (specifically an integer). Lets change our program a bit to fix the error:

```python
secret_number = 27
print('I am thinking of a number between 0 and 100. Can you guess what it is?')
player_guess = input('Try guessing a number. ')
player_guess_number = int(player_guess)  # Convert a text variable to a number

if player_guess_number > secret_number:
	print('That number is too big. Try something smaller.')
```
Now try running your program again. This time you shouldn't get an error.

## Add two more checks
Awesome! Now we can add two more checks to see if the player's guess is less than the secret number, or equal to the secret number:
```python
secret_number = 27
print('I am thinking of a number between 0 and 100. Can you guess what it is?')
player_guess = input('Try guessing a number. ')
player_guess_number = int(player_guess)

if player_guess_number > secret_number:
	print('That number is too big. Try something smaller.')
	
# Add an if statement here to check if the player's guess is less than
# the secret number.

# Add an if statement here to check if the player's guess is equal to
# the secret number.
```

Now try running your program and entering a number. Does it do what it is supposed to? It is always important to test your code to make sure it is working. Try running it a few more times entering different numbers.

> ### Challenge
> Rewrite the three conditions using if, elif, and else.
> Hint: if the number is not bigger or smaller, then it must be equal.

## Keep guessing

Right now, our guessing game is super hard! The player only has one chance to guess the number. If they get it wrong, then the program exists. It would be nice to keep asking the player to enter another number until they get it right. Do you remember how to make some code do the same thing over and over again?

We can use a loop to do this. But should we use a **for** loop, or a **while** loop? Since we want to keep asking the player to enter a number until they guess it right, we should use a while loop. And we want to keep the loop going so long as the player has not guessed the secret number. Ok, lets do it!

```python
secret_number = 27
print('I am thinking of a number between 0 and 100. Can you guess what it is?')
player_guess = input('Try guessing a number. ')
player_guess_number = int(player_guess)

# Put the if statements into a while loop that keeps looping as long as
# the player hasn't correctly guessed the secret_number
if player_guess_number > secret_number:
	print('That number is too big. Try something smaller.')
	
if player_guess_number < secret_number:
	print('That number is too small. Try something bigger.')
	
if player_guess_number == secret_number:
	print('That is the correct number!')
```

### Test by guessing the correct number
Now try testing your program. Enter the correct number (the secret number). What happens?

Nothing? Why is that?

Remember, the **while** loop only gets run if the question you asked is True. Since you entered the correct number, `player_guess != secret_number` is False, and so everything in the **while** loop is skipped. 

But we still want to tell the player that their guess is correct right? Since we know that the loop is skipped over when the guess is correct, we can put the equal check after the loop. 

```python
secret_number = 27
print('I am thinking of a number between 0 and 100. Can you guess what it is?')
player_guess = input('Try guessing a number. ')
player_guess_number = int(player_guess)

# Only put the first two if statements into the loop
if player_guess_number > secret_number:
	print('That number is too big. Try something smaller.')
	
if player_guess_number < secret_number:
	print('That number is too small. Try something bigger.')
	
# Leave this if statement out of the loop
if player_guess_number == secret_number:
	print('That is the correct number!')
```

Remember, only things indented are part of the loop. While it doesn't look like we changed much, we actually did. Try testing your program again, entering the secret number. Does the message get printed this time?

### Test by guessing an incorrect number
Alright, we tested our program by guessing the secret number. Try testing it again with another number.

Ahhhh! Your program is going crazy. It's stuck in an **infinite loop**! Its ok. If your program ever starts to go crazy, you can **KILL** it with Ctrl-C.

But what happened? Why did we get stuck in an **infinite loop**? Well, every time we get to the end of the loop, we jump back up and check if `player_guess_number != secret_number`, and this is always True if the player entered an incorrect number. 

To fix this, after checking whether the player's guess is bigger or smaller than the `secret_number`, we should ask the player to enter a new number. Lets do that.

```python
secret_number = 27
print('I am thinking of a number between 0 and 100. Can you guess what it is?')
player_guess = input('Try guessing a number. ')
player_guess_number = int(player_guess)

while player_guess_number != secret_number:
	if player_guess_number > secret_number:
		print('That number is too big. Try something smaller.')
		
	if player_guess_number < secret_number:
		print('That number is too small. Try something bigger.')
		
	# Add some code here to ask the player to enter a new number
	
if player_guess_number == secret_number:
	print('That is the correct number!')
```

Alright! Our guessing game is pretty much done. Try playing it and testing different numbers. You could even get someone else to play it. See how many tries it takes for them to guess your secret number.

## Random numbers
For someone else playing your game, it can actually be pretty hard, since they don't know your secret number. However when you play your own game its pretty easy since you already know your own secret number.

Lets change the game so that the secret number is *randomly generated* each time you play the game.

To generate a random number, we first need to **import** the `random` package. A package is a collection of functions. To do this, right at the top of your program, add the line
```python
import random
```

This tells python to look for some useful functions made by other people. Someone very nice wrote a function to generate random numbers. Instead of writing that ourself, lets just use their function.

To use it, lets change the `secret_number` line to:
```python
secret_number = random.randint(0, 100)
```

Now try playing your game again. Is it harder? This time even you don't know the secret number!

## Extra Challenges
1. Change your program to keep track of how many guesses the player has to make before getting the correct number. Print out the number of guesses at the end
2. Allow the player to choose the difficulty of the game. Ask the player whether they want to play EASY, MEDIUM, or HARD. For EASY, the `secret_number` should be between 0 and 10. For MEDIUM, it should be between 0 and 100. For HARD, it should be between 0 and 200.
3. Give the player some hints. If their guess is less than 5 away, tell them they are really close, and if their guess is more than 25 away, tell them that they are really far.
