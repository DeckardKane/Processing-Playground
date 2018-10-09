String myString = "";
String myOtherString = "Something cool";
String aString = "is going to happen, I promise!";

String secondString = "I love strings, even when they are in knots.";

String inputString = "";

String quadrantString = "";
String consoleString = "";
String location = "";
String dispTime = "";
String hammerTime = "";

PFont myFont;

void setup() {

  myFont = loadFont("vcrMonoFont.vlw");

  size(800, 800);
  background(255);
  smooth();

  myString = myOtherString + " " + aString;
  print(myString);
}

void draw() {

  //background(255);
  //text(myString,width/2,height/2);
  /*
  text(secondString,10,height/4,180,200);
   textAlign(CENTER);
   textSize(20);
   fill(0,0,0);
   */

  /*
  textFont(myFont);
   if(keyPressed) {
   inputString = inputString + key;
   delay(150);
   }
   
   fill(0);
   text(inputString,10,10,width,height);
   */

  background(150, 150, 0);

  if (mouseX <= width/2 && mouseY <= height/2) {
    quadrantString = "UPPER LEFT";
    fill(255);
  } else if (mouseX >= width/2 && mouseY <= height/2) {
    quadrantString = "UPPER RIGHT";
    fill(0, 0, 255);
  } else if (mouseX <= width/2 && mouseY >= height/2) {
    quadrantString = "LOWER LEFT";
    fill(0, 255, 0);
  } else if (mouseX >= width/2 && mouseY >= height/2) {
    quadrantString = "LOWER RIGHT";
    fill(255, 0, 0);
  }

  noStroke();
  ellipse(mouseX, mouseY, 200, 200);
  
  fill(0);
  textFont(myFont);
  textAlign(CENTER);
  textSize(25);
  text(quadrantString,mouseX,mouseY);
  
  String location = "Cursor Location: " + mouseX + "," + mouseY;
  text(location,width/2,height/2);
  
  String dispTime = "Time-> " + hour() + ":" + minute() + ":" + second();
  text(dispTime,width/2,(height/2) + 45);
  
  String hammerTime = "Stop, hammertime";
  text(hammerTime,width/2,(height/2) + 90);
  
}
