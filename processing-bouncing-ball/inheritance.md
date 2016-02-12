Q: What if we wanted to have a special ball that bounces off the wall at a random angle?

A: One possible solution is to create a new `class` that implements the random bouncing by copying and pasting the current `class`. But what about DRY (don’t repeat yourself)? If we copy and paste, there is going to be a lot of repeated code. One way to be DRY is to use **inheritance**

##### Inheritance

“A class can be defined using another class as a foundation. In object-oriented programming terminology, one class can inherit fields and methods from another. An object that inherits from another is called a subclass, and the object it inherits from is called a superclass. A subclass extends the superclass.”

In other words, our random bouncing ball (subclass) will have all the properties and methods of the bouncing ball (superclass), but more (“extends”).

Some examples in Processing: https://processing.org/reference/extends.html and http://learningprocessing.dreamhosters.com/examples/chapter-22/example-22-1/
<details>
<summary>Q: What should be different in the random bouncing ball?</summary>

A: One possible difference is that the `draw()` method should make the ball bounce off randomly
</details>

##### Refactoring

Now that we have the random bouncing ball, do you notice any repeated code between the `draw()` of the subclass and the superclass? If yes, we can [refactor](https://en.wikipedia.org/wiki/Code_refactoring) the code! Refactoring means changing the structure of the code without changing its behavior. By refactoring, we can make our code more DRY.

<details>
<summary>Q: What specific part of `draw()` is different and how can we break that out into a separate method?</summary>

A: One possible answer is that only the bouncing off the wall part is different. We can refactor that out into a separate `bounce()` method that is overridden in the subclass.
</details>
