class Boundary {
}



class Rectangle {

  color c;
  float xpos;
  float ypos;

  int w;
  int h;

  int xspeed;
  float yspeed;

  // Rectangle: color, xpos, ypos, width, height, xspeed, yspeed
  Rectangle(color tempC, float tempXpos, 
  float tempYpos, int tempW, int tempH, int tempXspeed, int tempYspeed) {
    
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    
    w = tempW;
    h = tempH;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
    
  }

  void display() {
    //rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, w, h);
  }

  void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    
    if (xpos > width) {
      xpos = 0;
    }
  }

  void bounce() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos >= 1000 || xpos < 0) {
      xspeed = xspeed * (-1);
    } else if (ypos >= 1000 || ypos < 0) {
      yspeed = yspeed * (-1);
    } 
  }
}

class Ellipse {
  
  color c;
  float xpos;
  float ypos;

  int w;
  int h;

  int xspeed;
  float yspeed;
  
  Ellipse(color tempC, float tempXpos, 
  float tempYpos, int tempW, int tempH, int tempXspeed, int tempYspeed) {
    
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    
    w = tempW;
    h = tempH;
    
    xspeed = tempXspeed;
    yspeed = tempYspeed;
    
  }
  
  void display() {
    fill(c);
    ellipse(xpos, ypos, w, h);
  }
  
  void bounce() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos >= 1000 || xpos < 0) {
      xspeed = xspeed * (-1);
    } else if (ypos >= 1000 || ypos < 0) {
      yspeed = yspeed * (-1);
    } 
  }
  
}
