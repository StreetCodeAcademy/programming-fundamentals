# Introduction to Lists

If you're planning on moving on to the [**Processing Lessons**](https://github.com/StreetCodeAcademy/programming-fundamentals/tree/master/python-curriculum/processing_lesson_1), we highly encourage you to check out the following lesson on lists. If you would like to continue practicing your skills using a Python editor, this is less essential, but we still welcome you to dip your toes into this topic. You will learn more about it in depth in our Next Level Programming class, should you choose to enroll in it in another quarter.

## What is a list?

**List:** A list is a _data structure_.  

Remember how we said that a **variable** also stores data? In a similar way, a list stores data; however, it's even more interesting because it can store more than one piece of data and even more than one type of data at once! Building on our box analogy about variables, you can imagine that a list is a row of boxes, each of which holds a different data point that you could otherwise store into separate variables.  

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

You can reference the data stores in the list using **indexing** and do anything you would usually do with a variable with that data in your code.

For example, assuming our list `favorites` still exists from above, the following two lines will print out equivalent output. If you've been following along and typing the example code snippets from above in your own file, you can run it using IDLE to check that this is true!

```python
fav_city = "Chicago"

#Option 1: Using concatenation with a string variable (which you're familiar with from previous lessons)
print("My favorite city is " + fav_city + " .")

#Option 2: Using concatenation with a string stored in the favorites list
print("My favorite city is " + favorites[0] + " .")
```

### Printing a List
Sometimes, if you just want to see all of the elements in a list, rather than printing each element out through accessing, you can simply call `print()`, passing in the name of your list as an argument. For example, `print(favorites)`.  

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
```

### Inserting Elements
You may have noticed that when you add elements with `append()`, the element is added to the end of the list. To insert elements in other places in the list, use `insert()`. Similar to the `pop()` method, the `insert()` method will scoot down boxes after the specified index to "make room" for the next box. Say I want to insert the name of my favorite author into the `favorites[0]` position in my list:

```python
favorites.insert(0, "Zadie Smith")
```

What's the order of elements now? Why don't you try thinking about what you'd expect? If you've been following along with all the code above, you should see: `["Zadie Smith", "Chicago", 24]`.
