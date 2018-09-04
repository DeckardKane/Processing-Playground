int r1xPos;
int r1yPos;
int r1w;
int r1h;
int r1step;
int[] r1fill = { 100, 100, 255 };

int e1x;
int e1y;
int e1w;
int e1h;
int e1step;
int[] e1fill = { 255, 100, 255 };

void setup() {

  size(800, 800);
  background(255);
  stroke(255);
  fill(100, 100, 255);

  // Rectangle generation
  r1xPos = 0;
  r1yPos = 150;

  r1w = 100;
  r1h = 75;

  r1step = 5;


  // Ellipse generation
  e1x = 0;
  e1y = 600;

  e1w = 200;
  e1h = 100;

  e1step = 15;
  //e1fill = { 255, 100, 255 };
}

void draw() {

  background(255);

  // fill(r1fill[0], r1fill[1], r1fill[2]);
  rect(r1xPos, r1yPos, r1w, r1h);

  r1xPos = r1xPos+r1step;
  if (r1xPos == 800 || r1xPos == 0) {
    r1step = r1step * (-1);
    fill(random(0, 255), random(0, 255), random(0, 255));
  }
  
  /* for (int i = 0; i <= 40; i = i+1) {
    r1fill[0] = r1fill[0]+15;
  }
  */
  
  // fill(255, 100, 255);
  // fill(random(0, 255), random(0, 255), random(0, 255));
  // fill(e1fill[0], e1fill[1], e1fill[2]);
  ellipse(e1x, e1y, 200, 100);

  e1x = e1x+e1step;
  if (e1x >= 800 || e1x == 0) {
    e1step = e1step * (-1);
    fill(random(0, 255), random(0, 255), random(0, 255));
  }
}
