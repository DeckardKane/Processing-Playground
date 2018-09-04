
Rectangle r1;
Rectangle r2;

Ellipse e1;

void setup() {

  // Rectangle: color, xpos, ypos, width, height, xspeed, yspeed
  r1 = new Rectangle(#FCA761, 0, 500, 75, 50, 15, 0);
  r2 = new Rectangle(#E52A2A, 25, 700, 90, 10, 50, 10);
  
  size(1000, 1000);
  background(255);
  stroke(255);
  fill(100, 100, 255);


  // Ellipse generation

  e1 = new Ellipse(#006699, 0, 200, 200, 100, 5, 50);

}

void draw() {

  background(255);
  
  r1.move();
  r1.display();
  
  r2.bounce();
  r2.display();

  e1.bounce();
  e1.display();

}
