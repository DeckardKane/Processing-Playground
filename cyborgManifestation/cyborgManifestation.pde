void setup() {

  fullScreen();
  background(0);
  
}

void draw() {

  for (int i = 0; i <= 6; i++) {
    
    if (i == 0) {
      fill(#F71414);
    } else if (i == 1) {
      fill(#F76014);
    } else if (i == 2) {
      fill(#FAE151);
    } else if (i == 3) {
      fill(#8CF746);
    } else if (i == 4) {
      fill(#46F7ED);
    } else if (i == 5) {
      fill(#236FE5);
    } else if (i == 6) {
      fill(#B420F5);
    } else {
      fill(#FFFFFF);
    }
    
    ellipse(width/2, i*250 + 250, 50, 50);
    
  }
  
}
