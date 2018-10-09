import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class lineLoopsSketch extends PApplet {

/* 
 Draw a dozen lines across the screen. After the first line,
 the lines that follow will be based off the original.
 Define global variables, draw a dozen lines

 First, draw line1.
 */

int x1pos;
int x2pos;
int y1pos;
int y2pos;

int rate1;

public void setup() {

  

  x1pos = 100;
  x2pos = 100;
  y1pos = 100;
  y2pos = 300;

  rate1 = 5;
}

public void draw() {

  //background(0);
  stroke(255);
  line(x1pos, y1pos, x2pos, y2pos);


  // for loop implementation
  for (int i = 0; i < 5; i++) {
    line(x1pos + rate1, y1pos + rate1, x2pos + rate1, y2pos + rate1);
    rate1 = rate1 + 5;
    println(i);
  }




  /* while loop implementation
   while (rate1 <= 200) {
   line(x1pos + rate1, y1pos + rate1, x2pos + rate1, y2pos + rate1);
   rate1 = rate1 + 5;
   println(rate1);
   }
   */
}
  public void settings() {  size(1000, 1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "lineLoopsSketch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
