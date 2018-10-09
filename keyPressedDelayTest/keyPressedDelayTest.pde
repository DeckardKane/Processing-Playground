PImage Batt0;
PImage black;
PFont myFont;
int holdsecond=second();
int howlongtoshow=10; //how long to show the image/text (seconds)
boolean onoff = false;

void setup(){
  size (400,400);
  myFont = loadFont ("AgencyFB-Reg-48.vlw");
  Batt0 = loadImage("Batt0.JPG");
  }

void draw(){
  background(0);
 
  if (onoff==true){
    image(Batt0,200,20);
    fill (255);
    textFont(myFont, 18);
    text ("Hello World",200,200);
  }
   if (second()==holdsecond){
     //image(black,200,20); this would replace the backdrop rect
     onoff=false;
   }
println (second());
println (holdsecond);
}


void keyPressed(){
  onoff=true;
   if (second()>59-howlongtoshow){
    holdsecond=howlongtoshow+second()-60;
  }else{
    holdsecond=second()+howlongtoshow;
  }
  println ("key pressed");
}
