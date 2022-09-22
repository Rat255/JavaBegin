int size = 10;

void setup(){
  size(1200,800);
  background(255);
  frameRate(60);
}
void draw(){

}

void mouseDragged(){
  noStroke();
  fill(0);
  ellipse(mouseX,mouseY,size,size);
}
void mouseClicked(){
  noStroke();
  fill(0);
  ellipse(mouseX,mouseY,size,size);
}
