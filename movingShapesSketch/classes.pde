class Shape {

  color c;
  float xpos, ypos;

  int w, h;

  int xspeed, yspeed;

  int bounces = 0;

  Shape(color tempC, float tempXpos, 
    float tempYpos, int tempW, int tempH, int tempXspeed, int tempYspeed) {

    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;

    w = tempW;
    h = tempH;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
  }



  void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;

    if (xpos >= width + w) {
      xpos = 0;
    } else if (ypos >= height + h) {
      ypos = 0;
    }
  }

  void bounce() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos >= 1000 - w || xpos <= 0) {
      bounces += 1;
      xspeed = xspeed * (-1);
      println(toString() + "bounced off the wall, " + bounces + " bounces total.");
    } else if (ypos >= 1000 || ypos <= 0 + h) {
      yspeed = yspeed * (-1);
      bounces += 1;
      println(toString() + "bounced off the ceiling or floor, " + bounces + " bounces total.");
    }
  }

  void growOnBounce() {
    
  }

  void pulse() {

    int now = millis();
    int wait = 1000;

    w = w+15;
    h = h+50;

    if (millis()-now >= wait) {
      w = w-15;
      h = h-50;
      now = millis();
    }
  }
  
}

class Triangle extends Shape {

  Triangle(color c, float xpos, 
    float ypos, int w, int h, int xspeed, int yspeed) {
    super(c, xpos, ypos, w, h, xspeed, yspeed);
  }

  void display() {
    fill(c);

    beginShape();
    vertex(xpos, ypos);
    vertex(xpos + w, ypos);
    vertex(xpos + w/2, ypos - h);
    endShape(CLOSE);
  }
  
}

class Rectangle extends Shape {
  Rectangle(color c, float xpos, 
    float ypos, int w, int h, int xspeed, int yspeed) {
    super(c, xpos, ypos, w, h, xspeed, yspeed);
  }


  void display() {
    //rectMode(CENTER);
    fill(c);
    //rect(xpos, ypos, w, h);
    beginShape();
    vertex(xpos, ypos);
    vertex(xpos + w, ypos);
    vertex(xpos + w, ypos + h);
    vertex(xpos, ypos + h);
    endShape(CLOSE);
  }
}

class Ellipse extends Shape {
  Ellipse(color c, float xpos, 
    float ypos, int w, int h, int xspeed, int yspeed) {
    super(c, xpos, ypos, w, h, xspeed, yspeed);
  }

  void display() {
    fill(c);
    ellipseMode(CORNER);
    ellipse(xpos, ypos, w, h);
  }
  
}
