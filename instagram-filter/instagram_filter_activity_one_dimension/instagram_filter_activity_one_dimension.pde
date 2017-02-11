// Declaring a variable of type PImage and with the name "img"
PImage img;

void setup() {
  // Specifying the size of our canvas
  size(700, 500);
  
  // initialzing the variable with an image file
  img = loadImage("looking-to-the-ocean.jpg");
  
  myInstagramFilter(img);
  
  // noLoop commands the program to only call draw() once.
  // remember that draw is called multiple times
  noLoop();
}

void myInstagramFilter(PImage img) {
  int width = img.width;
  int height = img.height;
  int dimension = width * height;
  
  // *** image processing beginning here ***//
  // loadPixels is a special function that we call to alert our program
  // that we are going to start doing our image processing
  img.loadPixels();
  for (int i = 0; i < dimension; i++) {
    float r = red(img.pixels[i]);
    float b = blue(img.pixels[i]);
    float g = green(img.pixels[i]);
    
    img.pixels[i] = color(r * 1.2, g, b);
  }
  
  // After we've completed our image processing. We call updatePixels to tell our program
  // that we've completed our image processing. 
  img.updatePixels();
  
  // *** image processing ending here ***//
}

void draw() {
  background(0);
  // Draw the image to the screen at coordinate (0, 0)
  image(img, 0, 0);
}