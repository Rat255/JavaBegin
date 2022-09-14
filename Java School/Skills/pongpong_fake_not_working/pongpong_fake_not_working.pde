int xWaarde = 400;
int yWaarde = 400;
int fps = 60;
int speedx = 4;
int speedy = 6;

void setup(){
  size(1280,720);
  frameRate(fps);
  
}
void draw(){
  background(0);
  
  xWaarde += speedx;
  yWaarde += speedy;
  
  if(xWaarde <= width){
    speedx = -speedx;
  }
  if(xWaarde >= 0){
    speedx = -speedx;
  }
  if(yWaarde <= height){
    speedy = -speedy;
  }
  if(yWaarde >= 0){
    speedy = -speedy;
  }
  ellipse(xWaarde,yWaarde,40,40);
}
