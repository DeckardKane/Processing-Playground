// Draw a rectangle that follows my mouse position

int xpos = 0;
int ypos = 0;
boolean mouseOn = false;

void setup() {

  size(1000,1000);
  noCursor();
  
}

void draw() {
  
  background(0);
  
  /*
  if (mousePressed == true) {
    drawRect();
    //println("Mouse press activated");
  }
  */
  
  
  isMouseOn();
  if (mouseOn) {
    checkMouse();
    drawRect();
  }
  
  //checkMouse();
  
}

void checkMouse() {

  xpos = mouseX;
  ypos = mouseY;
  
}

void isMouseOn() {
  if (mouseX >= 1 && mouseX <= width) {
    mouseOn = true;
  }
}

void drawRect() {
  // Draw a rectangle
  
  rectMode(CENTER);
  
  rect(xpos, ypos, 100, 100);
  println("Rectangle generated at xpos:" + xpos + " and ypos:" + ypos);
  
}
