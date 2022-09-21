/**
 * Mouse 2D. 
 * 
 * Moving the mouse changes the position and size of each box. 
 */
 
void setup() {
  size(640, 360); 
  noStroke();
  rectMode(CENTER);
  textSize(20);
}

void draw() {
  background(0); 
  fill(255,0,130,180);
  ellipse(mouseX, height/2, mouseY/2+10, mouseY/2+10);
  fill(0,130,255, 180);
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  ellipse(inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);
}
