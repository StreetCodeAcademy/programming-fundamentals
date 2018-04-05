Q: If we wanted to add another bouncing ball, how could we do that?

A: One possible answer is copy and paste what we’ve done already. If we’ve created one bouncing ball, we can create another one with the same code. But, one concept in Computer Science is DRY: [Don’t Repeat Yourself](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself). If we copy code, it becomes harder to remember in the future that when we edit one copy of the code, we also have to edit all other copies of the code. One way to be DRY is to use **objects**

#### Objects

Processing has a great tutorial on objects that we can walk through: https://processing.org/tutorials/objects/

To recap:
##### Classes and Objects
Classes describe objects, objects are instances. “A cookie cutter makes cookies, but it is not a cookie itself. The cookie cutter is the class, the cookies are the objects.” Or, the class is the blueprint, an object is the building

##### Properties (nouns)
Terminology: properties is the term for variables on an object

<details>
<summary>Q: What properties should the bouncing ball have?</summary>

A: Among other properties, we should have the ball’s X and Y location, and it’s X and Y direction. We can also have properties of the ball’s color, size, etc. Any noun that you can think of that describes the ball!
</details>

##### Functions (verbs)
Terminology: method is the term for a function inside an object.

“The things an object can do are functions.”The bouncing ball can have a `draw()` function, let’s move all our drawing code in there

A special function is the constructor function. This is where we can describe how to exactly build the object from the blueprint. “It is just like Processing's `setup()` function, only here it is used to create an individual object within the sketch, whenever a new object is created from this class.” See the Processing tutorial for how to write a constructor https://processing.org/tutorials/objects/

#### Putting it all together!

Now let’s use it! See the Processing tutorial for how to instantiate the object https://processing.org/tutorials/objects/

<details>
<summary>Some hints:</summary>
We should declare the variable at the start, and then inside of the `setup()` we should instantiate the object. Inside `draw()` we should call the `draw()` method on the object
</details>
