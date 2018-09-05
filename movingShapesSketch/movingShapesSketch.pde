
Rectangle r1;
Rectangle r2;
Rectangle r3;
Rectangle r4;
Rectangle r5;

Ellipse e1;
Ellipse e2;
Ellipse e3;
Ellipse e4;
Ellipse e5;

Triangle t1;
Triangle t2;
Triangle t3;
Triangle t4;
Triangle t5;
Triangle t6;
Triangle t7;
Triangle t8;
Triangle t9;
Triangle t10;

void setup() {
  
  size(1000, 1000);
  background(255);
  stroke(255);
  fill(100, 100, 255);

  // Rectangle: color, xpos, ypos, width, height, xspeed, yspeed
  r1 = new Rectangle(#FCA761, 0, 500, 75, 50, 5, 0);
  r2 = new Rectangle(#E52A2A, 25, 700, 90, 10, 50, 10);
  r3 = new Rectangle(#7287FA, 0, 25, 20, 20, 5, 2);
  r4 = new Rectangle(#F71ED0, 0, 1000, 50, 25, 2, 5);
  r5 = new Rectangle(#1EF7CE, 42, 42, 35, 72, 100, 2);

  // Ellipse generation

  e1 = new Ellipse(#006699, 0, 200, 200, 100, 5, 50);
  e2 = new Ellipse(#D98CEA, 200, 50, 20, 20, 10, 5);
  e3 = new Ellipse(#722683, 42, 90, 90, 45, 2, 2);
  e4 = new Ellipse(#CD16F7, 400, 50, 30, 30, 5, 2);
  e5 = new Ellipse(#16AAF7, 700, 900, 100, 100, 5, 50);
  
  // Triangle generation
  
  t1 = new Triangle(#E02FEA, 300, 300, 100, 100, 5, 10);
  t2 = new Triangle(#1EADF7, 900, 900, 50, 100, 0, 5);
  t3 = new Triangle(#E02FEA, 0, 300, 100, 100, 5, 2);
  t4 = new Triangle(#83888B, 420, 420, 200, 100, 2, 5);
  t5 = new Triangle(#55CB3E, 20, 40, 50, 200, 100, 5);
  t6 = new Triangle(#5DFAD9, 99, 720, 250, 250, 25, 10);
  t7 = new Triangle(#FFB355, 720, 100, 10, 10, 2, 10);
  t8 = new Triangle(#1E9D7E, 90, 45, 20, 20, 2, 5);
  t9 = new Triangle(#C6FFF1, 800, 400, 50, 50, -15, 2);
  t10 = new Triangle(#EADC8C, 80, 900, 20, 50, 10, 5);
  
}

void draw() {

  background(255);
  
  r1.move();
  r1.display();
  //r1.pulse();
  
  r2.bounce();
  //r2.growOnBounce();
  r2.display();
  
  r3.bounce();
  r3.display();
  r4.move();
  r4.display();
  r5.bounce();
  r5.display();

  e1.bounce();
  e1.display();
  
  e2.move();
  e2.display();
  
  e3.bounce();
  e3.display();
  
  e4.bounce();
  e4.display();
  
  e5.bounce();
  e5.display();
  
  t1.bounce();
  t1.display();
  
  t2.move();
  t2.display();
  
  t3.bounce();
  t3.display();
  
  t4.bounce();
  t4.display();
  
  t5.move();
  t5.display();
  
  t6.bounce();
  t6.display();
  
  t7.bounce();
  t7.display();
  
  t8.bounce();
  t8.display();
  
  t9.bounce();
  t9.display();
  
  t10.bounce();
  t10.display();
}
