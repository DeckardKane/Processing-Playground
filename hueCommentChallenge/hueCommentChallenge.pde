/**
 * Hue. 
 * 
 * Hue is the color reflected from or transmitted through an object 
 * and is typically referred to as the name of the color (red, blue, yellow, etc.) 
 * Move the cursor vertically over each bar to alter its hue. 
 */

int barWidth = 20; // Allows you to set the width of the rectangles in pixels
int lastBar = -1; //

void setup() 
{
  size(640, 360); // Sets the size of the canvas
  colorMode(HSB, height, height, height);  
  noStroke();
  background(0); //Sets a black background
}

void draw() 
{
  int whichBar = mouseX / barWidth; /* Defines the whichBar variable as being equal to the mouse's X position divided by the value of the barWidth variable (previously set as 20 pixels).
  * This basically gives you a value that represents which bar on the screen was last hovered over, with 0-1 being the first bar on the left, 1-2 being the second bar, and so on.
  * For the sake of argument, let's say your mouse is currently placed at around x=15 on the canvas. mouseX will return 15, and 15 divided by barWidth, 20, is 0.75.
  */
  
  if (whichBar != lastBar) {
    int barX = whichBar * barWidth;
    fill(mouseY, height, height);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
  
  /*
  * This here is an if statement. It compares whichBar to lastBar, and if the two values are not equal, it begins to run some more code.
  * What we're asking is essentially "has the mouse moved?".
  * In our previous example, whichBar has returned 0.75, which is not equal to the initial value of lastBar, -1. We have now triggered this conditional statement!
  * It then defines integer barX as being equal to whichBar multiplied by barWidth, 0.75 * 20, or 15.
  * Then, we set the fill color using the mouseY value for the H value, and the height of the canvas (360) for the S and B values.
  * Next, we draw a rectangle using the barX value (which will have been set by the position of the mouse), 0 for the Y position, the barWidth value for the width of the rectangle, 
  * and the height value (the height of the canvas) for the height of the rectangle.
  * Finally, we set lastBar to the value of whichBar. This informs the program what bar we're currently hovering over, and allows our conditional statement to keep running as long
  * as we keep moving the mouse.
  */
  
}
