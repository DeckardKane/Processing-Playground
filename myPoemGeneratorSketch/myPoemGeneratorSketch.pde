import java.util.TimerTask;

String[] myPoem; // Declare!

PFont myFont;

int timeSinceLastLine;
int wait = 1000;

void setup() {

  timeSinceLastLine = millis();

  size(1000, 1000);

  myPoem = new String[3]; // Create!

  // Assign!

  myPoem[0] = "In the beginning";
  myPoem[1] = "In the middle";
  myPoem[2] = "In the end";

  myFont = loadFont("vcrMonoFont.vlw");
}

void draw() {

  textFont(myFont);
  textAlign(CENTER);
  textSize(48);


  storyTeller();

  //println("Next line!");

  /*
     if(frameCount % 30 == 0) {
   text(myPoem[i], width/2, height/2 + (i * 48));
   }
   
   
   text(myPoem[i], width/2, height/2 + (i * 48));
   println(myPoem[i]);
   delay(1000);
   */
}

void storyTeller() {

  //println(timeSinceLastLine);

  for (int i = 0; i < myPoem.length; i++) {

    text(myPoem[i], width/2, height/2 + (i * 48));
    println(myPoem[i]);
    

    /*
    if (millis() - timeSinceLastLine >= 3000) {

      timeSinceLastLine = millis();
      text(myPoem[i], width/2, height/2 + (i * 48));
      println(myPoem[i]);
    }
    */
    
  }
  
}
