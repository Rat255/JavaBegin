int xWaarde = 0;
int yWaarde = 105;
int fps = 60;
int srate;
int speedy = 5;
int speedx = 3;

void setup(){
  size(1280,720);  
  frameRate(fps);
}

void draw(){
  background(200);
  
  xWaarde+=speedx;
  yWaarde+=speedy;

  if((xWaarde + 175) >= width){
    speedx = -speedx;
  }
  if(xWaarde <= 0){
    speedx = -speedx;
  }
  
  if(yWaarde >= height){
    speedy = -speedy; 
  }
  
  if(yWaarde <= 100){
   speedy = -speedy;
  }
  
  fill(0);
  textSize(100);
  text("DVD",xWaarde, yWaarde);
}
