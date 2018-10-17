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

public class seedOfLifeSketch extends PApplet {

int seedRepetition = 1;

int rotationAngle = 45;
int numberOfCircles = 6;

float rotationAngleFloat = 45.000f;

float circleSize = 500; // Width and height of circle (i.e. diameter)
float circleRadius = circleSize/2;
float circleCircumference = 2*PI*circleRadius;

float[] pointsX;
float[] pointsY;

public void setup() {
  
  //fullScreen();
  //smooth();

  /* Can I automate all this? Yes, but how?
   points[0] = width/2; //X
   points[1] = height/2 + circleRadius; //Y
   points[2] = points[0] + circleRadius*sin(rotationAngle); //X
   points[3] = points[1] - circleRadius*(1 - cos(rotationAngle)); //Y

   points[4] = points[0] + circleRadius*sin(rotationAngle*2);
   points[5] = points[1] - circleRadius*(1 - cos(rotationAngle*2));

   points[6] = points[0] + circleRadius*sin(rotationAngle*3);
   points[7] = points[1] - circleRadius*(1 - cos(rotationAngle*3));
   points[8] = points[0] + circleRadius*sin(rotationAngle*4);
   points[9] = points[1] - circleRadius*(1 - cos(rotationAngle*4));
   points[10] = points[0] + circleRadius*sin(rotationAngle*5);
   points[11] = points[1] - circleRadius*(1 - cos(rotationAngle*5));
   */
}

public void draw() {

  noFill();

  stroke(0, 0, 0);

  //line(width/2+50, 0, width/2+50, height);
  //line(width/2-50, 0, width/2-50, height);

  ellipse(width/2, height/2, circleSize, circleSize);
  ellipse(width/2, height/2, circleSize*2, circleSize*2);

  //ellipse(points[0], points[1], circleSize, circleSize);
  //ellipse(points[2], points[3], circleSize, circleSize);

  //println("Loop is starting!");
  /*
  for (int i = 0; i < 6; i++) {

    pointsX = new float[(360/rotationAngle) * 2];
    pointsY = new float[(360/rotationAngle) * 2];

    pointsX[i] = (width/2) + (circleRadius*sin(rotationAngleFloat*i));
    pointsY[i] = (height/2 + circleRadius) - circleRadius*(1 - cos(rotationAngleFloat*i));

    println(i);
    println("X: " + pointsX[i] + " Y: " + pointsY[i]);

    stroke(0, 0, 0);
    ellipse(pointsX[i], pointsY[i], circleSize, circleSize);

    stroke(204, 102, 0);
    ellipse(pointsX[i], pointsY[i], 10, 10);


    for (int j = 0; i < 24; j += 2) {

     println(j);
     ellipse(points[j], points[j+1], circleSize, circleSize);
     println("X: " + points[j] + " Y: " + points[j+1]);

     }

  }
  */

  translate(width/2, height/2);
  for (int i= 0; i<numberOfCircles; i++) {

    float x = cos( i*TWO_PI/numberOfCircles   )*circleRadius;
    float y = sin( i*TWO_PI/numberOfCircles   )*circleRadius;

    ellipse(x, y, circleSize, circleSize);
    /*
    if (seedRepetition > 1) {

    }
    */
  }

}

  public void settings() {  size(1000, 1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "seedOfLifeSketch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
