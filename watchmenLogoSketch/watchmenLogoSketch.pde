//void setup is where you put your "ingredients". All of this runs once, and once only.
void setup() {

  size(800, 800);
  background(#000000);
}

void draw() {

  rect(60, 300, 100, 100); //First two are location coordinates, second pair are size x and y
  line(0, 50, 800, 50);


  ellipse(400, 400, 300, 300);
  ellipse(350, 350, 50, 150);
  ellipse(450, 350, 50, 150);
  arc(400,500,100,50,0, PI);
}
