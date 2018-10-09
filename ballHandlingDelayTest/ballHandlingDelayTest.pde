// Ball handling
float posX, posY;
float speedX, speedY;
int radius;
color ballColor;
 
boolean bDisplayMessage;
int startTime;
final int DISPLAY_DURATION = 5000; // 1s
 
 
void setup()
{
  size(600, 400);
  smooth();
 
  PFont f = createFont("Arial", 48);
  textFont(f);
 
  posX = 120;
  posY = 50;
  speedX = -2;
  speedY = 3;
  radius = 24;
  ballColor = #002277;
}
 
void draw()
{
  background(#AAFFEE);
  if (bDisplayMessage)
  {
    fill(#FFAA88);
    text("You got it!", 150, height / 2);
    // If the spent time is above the defined duration
    if (millis() - startTime > DISPLAY_DURATION)
    {
      // Stop displaying the message, thus resume the ball moving
      bDisplayMessage = false;
    }
  }
  else
  {
    moveBall();
    displayBall();
  }
}
 
void mousePressed()
{
  bDisplayMessage = dist(mouseX, mouseY, posX, posY) < radius;
  // Record the time of the event
  startTime = millis();
}
 
void moveBall()
{
  // Move by the amount determined by the speed
  posX += speedX;
  // Check the horizontal position against the bounds of the sketch
  if (posX < radius || posX > width - radius)
  {
    // We went out of the area, we invert the h. speed (moving in the opposite direction)
    // and put back the ball inside the area
    speedX = -speedX;
    posX += speedX;
  }
  // Idem for the vertical speed/position
  posY += speedY;
  if (posY < radius || posY > height - radius)
  {
    speedY = -speedY;
    posY += speedY;
  }
}
 
void displayBall()
{
  // Simple filled circle
  noStroke();
  fill(ballColor);
  ellipse(posX, posY, radius * 2, radius * 2);
}
