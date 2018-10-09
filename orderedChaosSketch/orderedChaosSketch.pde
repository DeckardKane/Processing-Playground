
Rectangle r1;
Rectangle r2;

Ellipse e1;
Ellipse e2;

Triangle t1;
Triangle t2;

void setup() {
  
  //fullScreen();
  size(1000, 1000);
  background(255);
  stroke(255);
  fill(100, 100, 255);

  // Rectangle: color, xpos, ypos, width, height, xspeed, yspeed
  r1 = new Rectangle(#FCA761, 0, 500, 75, 50, 5, 0);
  r2 = new Rectangle(#E52A2A, 25, 700, 90, 10, 50, 10);

  // Ellipse generation

  e1 = new Ellipse(#006699, 0, 200, 200, 100, 5, 50);
  e2 = new Ellipse(#D98CEA, 200, 50, 20, 20, 10, 5);
  
  // Triangle generation
  
  t1 = new Triangle(#E02FEA, 300, 300, 100, 100, 5, 10);
  t2 = new Triangle(#1EADF7, 900, 900, 50, 100, 0, 5);
  
}

void draw() {

  background(255);
  
  r1.move();
  r1.display();
  //r1.pulse();
  
  r2.bounce();
  //r2.growOnBounce();
  r2.display();

  e1.bounce();
  e1.display();
  
  e2.move();
  e2.display();
  
  t1.bounce();
  t1.display();
  
  t2.move();
  t2.display();
  
  /*
  if (mousePressed) {
    
    r1.orderChaos();
    r2.orderChaos();
    e1.orderChaos();
    e2.orderChaos();
    t1.orderChaos();
    t2.orderChaos();
    println("Chaos ordered.");
    
    r1.stopShape();
    r2.stopShape();
    e1.stopShape();
    e2.stopShape();
    t1.stopShape();
    t2.stopShape();
    println("Stopped!");
    
    
  }
  */
    
}
