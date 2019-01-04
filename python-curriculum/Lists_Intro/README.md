# Introduction to Lists

If you're planning on moving on to the [**Processing Lessons**](https://github.com/StreetCodeAcademy/programming-fundamentals/tree/master/python-curriculum/processing_lesson_1), we highly encourage you to check out the following lesson on lists. If you would like to continue practicing your skills using a Python editor, this is less essential, but we still welcome you to dip your toes into this topic. You will learn more about it in depth in our Next Level Programming class, should you choose to enroll in it in another quarter.

## What is a list?

**List:** A list is a _data structure_.  

Remember how we said that a **variable** stores data? In a similar way, a list also stores data; however, it's even more interesting because it can store more than one piece of data and even more than one type of data at once! Building on our box analogy about variables, you can imagine that a list is a row of boxes, each of which holds a different data point that you could otherwise store into separate variables.  

To access what a specific box is holding, the list cleverly has an address/name for each box in the row, like a house address in a neighborhood.  

To **initialize** a variable, we often create a new variable name and **assign** it to the value 0 or the empty string like so:

```python
my_variable = 0
your_variable = ""
```

> In the following parts, we'll be using code snippets to show examples of how you can use different list methods. If you want to follow along, feel free to open up a new file in IDLE and run the code as you go.

## How do I create a list?

To create a list, we similarly give it a name and assign it to equal the empty list with the bracket characters, like so:

```python
favorites = []
```

## How do I alter a list?

From previous lessons, you've learned a method is a built in function. There's an entire set of built-in methods in Python you can **call on a list**.

### Add Elements to a List
To add **elements** to the list, we use a **method** called `append()`. Using the `favorites` list created above, we can add **elements** to be stored in the "boxes" in the list. I'm going to add my favorite city, my favorite coffee order and my favorite number:

```python
favorites.append("Chicago")
favorites.append("cold brew")
favorites.append(24)
```

Alternatively, you could have added all of these elements while **initializing** the list (skipping the appending), like so:

```python
#You will typically use this option less in Intro to Hack B
#Don't type this in your file if you're following along with the coding snippets
favorites = ["Chicago", "cold brew", 24] 
```
> Notice how in either case, you can store both numbers and text types (strings) in a single list.

### Accessing Elements in a List
To access elements, let's return to the address analogy. Let's pretend the name of your list is the street and the row of boxes holding data have house addresses counting up from 0, going from first to last, where the order depends on the order in which you added the element to the list. We'll call the "address" of each box an **index**.  

> Keep in mind that similar to loops, lists begin **indexing from 0, NOT 1.**

In our `favorites` list example, since we added my favorite city first, `favorites[0]` stores `"Chicago"`. Since we added my favorite coffee order next, `favorites[1]` stores `"cold brew"`. Since we added my favorite number last, `favorite[2]` stores `24`.  

In memory, the list actually looks a lot like the boxes in a row we described.  

| Label    | favorites[0] | favorites[1]| favorites[2] |
| :-------:|:------------:|:-----------:|:------------:|
| **Data** | "Chicago"    | "cold brew" | 24           |

You can reference the data stores in the list using **indexing** and do anything you would usually do with a variable with that data in your code.

For example, assuming our list `favorites` still exists from above, the following two lines will print out equivalent output. If you've been following along and typing the example code snippets from above in your own file, you can run it using IDLE to check that this is true!

```python
fav_city = "Chicago"

#Option 1: Using concatenation with a string variable (which you're familiar with from previous lessons)
print("My favorite city is " + fav_city + " .")

#Option 2: Using concatenation with a string stored in the favorites list
print("My favorite city is " + favorites[0] + " .")
```

You can also re-assign values to a given address in the list, just like you can re-assign values to variables.  

```python
favorites[0] = "Seattle"

#What do you expect this to print now? 
print("My favorite city is " + favorites[0] + " .")
```

Now, in memory, the `favorites` list look like this. 
| Label    | favorites[0] | favorites[1]| favorites[2] |
| :-------:|:------------:|:-----------:|:------------:|
| **Data** | "Seattle"    | "cold brew" | 24           |

### Printing a List
Sometimes, if you just want to see all of the elements in a list, rather than printing each element out through accessing, you can simply call `print()`, passing in the name of your list as an argument. For example, `print(favorites)`.  

### Length of a List
At times, I'm even too lazy to print out the entire list. When I just want to know how many elements are in the list, I'll use the `len()` method, which gives me the count of the elements in a list when I pass the list name as an argument. What do you expect `print(len(favorites))` to print? Try it out and see if the result matches what you predicted!  

### Deleting Elements in a List
To delete elements from a list, you can use the **method** `clear()` to remove all of the elements in a list. You'll have an empty list if you call this method on a list.  

Another option is to use `pop()`. You can remove a certain element from a list by passing an argument into the parentheses. Returning to the row of boxes analogy, `pop()` removes a box from the row at the specified index. Once it is removed, all the boxes are places back into one contiguous row, with the next door box filling the space and index of the deleted box. `pop()` also returns the value stored at the deleted index, which can come in handy.

```python
temp = favorites.pop(1)
```

The above line of code removes `"cold brew"` stored at `"favorites[1]`. As a result, `24` stored in the `favorites[2]` box scoots up to the `favorites[1]` position. Additionally, the `temp` variable holds the removed string, `"cold brew"`. To test that, add the next two lines:

```python
print(favorites[1]) #this should now print 24 instead of cold brew
print(temp) #this should now print cold brew
print(len(favorites)) #this should now print 2, instead of 3
```

Another look at memory:  
| Label    | favorites[0] | favorites[1]|
| :-------:|:------------:|:-----------:|
| **Data** | "Seattle"    | 24          |


### Inserting Elements
You may have noticed that when you add elements with `append()`, the element is added to the end of the list. To insert elements in other places in the list, use `insert()`. Similar to the `pop()` method, the `insert()` method will scoot down boxes after the specified index to "make room" for the next box. Say I want to insert the name of my favorite author into the `favorites[0]` position in my list:

```python
favorites.insert(0, "Zadie Smith")
```

What's the order of elements now? Why don't you try thinking about what you'd expect? If you've been following along with all the code above, you should see: `["Zadie Smith", "Seattle", 24]` when you print out the list. Notice that `"Seattle"`, which was originally at the `favorites[0]` address has been moved down to the `favorites[1]` address.

One last look at memory:  
| Label    | favorites[0] | favorites[1]| favorites[2] |
| :-------:|:------------:|:-----------:|:------------:|
| **Data** | "Zadie Smith"| "Seattle"   | 24           |

### More Methods
If you're interested in learning more about built-in Python methods for lists, see: https://docs.python.org/3/tutorial/datastructures.html. This link will take you to the official Python documentation on lists. This is a super helpful skill to learn, as most programmers read documentation regularly in their day to day jobs.

# Lists and Loops
Now that you know how to work with a list, we're going to talk about how to **iterate** through a list with a **for loop**. This means that we're going to use a **for loop** to go through a list and access each of the elements in the list, in the order that they are stored in the list.  

Using the `favorites` list from above, we access each element like this:

```python
for i in favorites:
```

Or in general:

```python
for i in list_name:
```

The `i` variable, which we previously called the **counter variable**, now holds the next **element** from the list each time it runs through the for loop (which we call an **iteration**). This means the first time the for loop runs in the example above, `i` stores the string `"Zadie Smith"`, since `"Zadie Smith"` is stored in the first box of the `favorites` list, at the address `favorites[0]`. Can you walk through what `i` stores on the second and third iteration with your mentor?  

Once there are no more elements in the list, the **for loop** stops. This is very similar to how the typical **for loop** works under the hood. For example, `for i in range(3):` creates a list like so `[0, 1, 2]`, which starts at 0 and counts up to but does not include 3. Then, `i` takes on each consecutive value in the list in each iteration of the loop, stopping when it runs out of elements. Pretty cool right?

### Exercise 1
Let's start with a simple exercise to get you acquainted with how to use a loop with a list.  

I'm a big fan of the TV show Grey's Anatomy. Since's the show has been on air for a long time, many of my favorite characters have come and gone from Grey's. The show's producers gave me a list of some of the most popular characters from Grey's, in the order that they departed from the show. How would I print out the name of the characters in the list, from **earliest departure to latest departure**?

```python
old_ga_characters = ["Preston Burke", "George O' Malley", "Izzie Stevens", "Addison Montgomery", "Lexie Grey", "Mark Sloan", "Cristina Yang", "Derek Shepherd", "Callie Torres", "April Kepner", "Arizona Robbins"]

#your code here
```

### Exercise 2
Your friend started watching Grey's Anatomy recently and she wants to know which characters she will get to watch for the longest before they leave the show. This time, print the names of the characters, from the **latest departure to the earliest departure**, using the list created in **Exercise 1**. 

**Hint 1:** There are several good ways to solve this problem. Try using the `len()` method to determine how many elements are in the list. This problem is also solvable with the `reverse()` method in Python, but try to solve it with ONLY what you've learned so far.  

**Hint 2:** Loops may also be useful for this question. Review the [**Loops and Variables Lesson**](https://github.com/StreetCodeAcademy/programming-fundamentals/tree/master/python-curriculum/Variables_Loops) to figure out how to count **backwards** in a **for loop**.  

### Exercise 3
You have two lists, one with vowels and one with consonants. Print out all of the letters in both lists, such that each letter is printed only once and all the consonants are printed first, followed by all of the vowels.  

```python
vowels = ["a", "e", "i", "o", "u"]
consonants = ["c", "h", "j", "m", "t"]

#your code here
```

### Exercise 4
Use the two lists from **Exercise 3**. Print out all of the letters in both lists, such each letter is printed only once and the vowels and consonants in the output alternate (a vowel is always followed by a consonant and vis versa).  

**Hint:** A plain **for loop** could be more handy here.   
> **Note to mentors:** Try drawing out the physical representation of the list like the memory diagrams above to help students visualize the layout of each list.

