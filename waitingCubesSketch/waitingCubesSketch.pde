int now;
int wait = 1000;

void setup() {

  now = millis();
  size(2000, 2000, P3D);
  //noCursor();
  
}

void draw() {

  //background(0);

  translate(580, 480, 0); 
  rotateX(3);
  rotateY(0.5);
  rotateZ(1);
  noFill();
  box(400);
  //sphere(400);
  
  /*
  if(millis() - now >= wait) {
    
    translate(100, 100, 0);
    
    box(300);
    println("We waited!");
    now = millis();
    
  }
  */
  
  for (int i = 0; i < 5; i++) {
    translate(-100, -100, 0);
    box(50);
  }

}
