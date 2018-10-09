// Size of cubes
float bounds = 200;

void setup() {
  size(800, 800, P3D);  
  smooth();
}

void draw() {
  background(0);
  lights();

  // Center in display window
  translate(width/2, height/2, -130);

  // Rotate cube
  noFill();
  if (mousePressed)
    rotateY(frameCount * .005);

  stroke(255);

  // Transparent cube, just using box() method 

  box(bounds); 

  beginShape(LINES);
  vertex(100, 100, 200);
  vertex(width, height, 500);
  endShape();
  
}
