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

public class waitingCubesSketch extends PApplet {

int now;
int wait = 1000;

public void setup() {

  now = millis();
  
  //noCursor();

}

public void draw() {

  //background(0);

  translate(580, 480, 0);
  rotateX(3);
  rotateY(0.5f);
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
  public void settings() {  size(2000, 2000, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "waitingCubesSketch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
