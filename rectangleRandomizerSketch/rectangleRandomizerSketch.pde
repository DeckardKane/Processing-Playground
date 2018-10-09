int[] rectangles; // Declare array!

int startTime;
final int DISPLAY_DURATION = 10;

boolean bRandomize;

// int[] data = { 19, 42, 69, 10, 90 }; Declare, create, and assign, all in one line!

void setup() {

  //fullScreen();
  size(1000,1000);
  
  rectangles = new int[10]; // Create array, what data type it holds and how many "slots"
  
  //int[] data = new int[5]; Or, declare and create in the same line!
  
  rectangles[0] = 50; // Now assign each slot a value
  rectangles[1] = 61;
  rectangles[2] = 83;
  rectangles[3] = 69;
  rectangles[4] = 71;
  rectangles[5] = 50;
  rectangles[6] = 29;
  rectangles[7] = 31;
  rectangles[8] = 17;
  rectangles[9] = 39;
  
}

void draw() {

  background(255);
  fill(0);
  
  //println("BEFORE the for loop!");
  
  for (int i = 0; i < 10; i++) {
    float m = map(rectangles[i], 0, 100, 0, width);
    float rectanglesY = height/rectangles.length;
    float rectanglesSpacing = 5;
    rect(0, i*rectanglesY, m, rectanglesY - rectanglesSpacing);
    //println(i);
  }
  
  
  if (bRandomize) {
    mixItUp();
    
    if (millis() - startTime > DISPLAY_DURATION) {
      // Stop randomizing!
      bRandomize = false;
    }
    
  }
  
  //println("AFTER the for loop!");
  //delay(1000);
}

void mixItUp() {
  
  //int randomNumber = int(random(0,10));
  for (int i = 0; i < rectangles.length; i++) {
    rectangles[i] = int(random(0,100));
    //println(i);
  }
  
}

void mouseClicked() {

  bRandomize = true;
  println("Mouse clicked, randomizing now!");
  // Record start time of event
  startTime = millis();
  
}
