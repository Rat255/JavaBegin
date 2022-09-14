int xWaarde = 0;
int yWaarde = 400;
int aWaarde = 0;
int bWaarde = 400;

int xSpeed = 3;
int ySpeed = 4;

int cA = 0;

int aSpeed = 5;
int bSpeed = 3;

int fps = 60;

void setup(){
size(1280,720);
frameRate(fps);
}
void draw(){
  background(255);

  xWaarde += xSpeed;
  yWaarde += ySpeed;
  aWaarde += aSpeed;
  bWaarde += bSpeed;

  if(xWaarde<= width){
    xSpeed = -xSpeed;
  }
  if(xWaarde >= 0){
    xSpeed = -xSpeed;
  }
  if(yWaarde <= height){
  ySpeed = -ySpeed;
  }
  if(yWaarde >= 0){
  ySpeed = -ySpeed;
  }
  
   if(aWaarde <= width){
    aSpeed = -aSpeed;
  }
  if(aWaarde >= 0){
    aSpeed = -aSpeed;
  }
  if(bWaarde <= height){
  bSpeed = -bSpeed;
  }
  if(bWaarde >= 0){
  bSpeed = -bSpeed;
  }
   noStroke();
   fill(0,100,200);
   ellipse(xWaarde,yWaarde,30,30);
   ellipse(aWaarde,bWaarde,30,30);
}
