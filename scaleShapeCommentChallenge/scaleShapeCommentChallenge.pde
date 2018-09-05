/**
 * Scale Shape.  
 * Illustration by George Brower. 
 * 
 * Move the mouse left and right to zoom the SVG file.
 * This shows how, unlike an imported image, the lines
 * remain smooth at any size.
 */

PShape bot;

void setup() {
  
  size(1000, 1000); // Set size of canvas to 640 x 360 pixels.
  // The file "bot1.svg" must be in the data folder
  // of the current sketch to load successfully
  bot = loadShape("bot1.svg");
  
} 

void draw() {
  
  background(102); // Set background color to 102, which is a dark grey.
  
  translate(width/2, height/2); // "Translate" (move) the shape to width/2 and height/2, or the center of the canvas.
  
  float zoom = map(mouseX, 0, width, 0.1, 4.5); // Declares float zoom as being equal to...this function. More on that below.
  // map() allows us to take an existing value and put it in a different number range that may be more useful.
  // In our case, we're using it to take the mouseX value, which can be anywhere from 0 to the width of the canvas, and "resize" it and place it within 0.1 to 4.5...
  
  scale(zoom); // ...and then we use that resulting number zoom, and use it to scale our shape!
  
  shape(bot, -140, -140); // This is just drawing our shape initially. I'm not sure why it's being initially drawn off screen though.
  
}
