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

void setup() {

  size(1000, 1000);

  x1pos = 100;
  x2pos = 100;
  y1pos = 100;
  y2pos = 300;

  rate1 = 5;
}

void draw() {
  
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
