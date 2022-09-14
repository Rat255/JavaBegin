int x;
int y;
int snelheid;

void setup(){
  size(500,500);
 frameRate(60);
  x = 0;
  y = 0;
  
}

void draw(){
  background(80,200,255);
  noStroke();
  
  fill(200);
  rect(0,415,500,500);
  
  fill(255,100,80);
  rect(x, y, 80, 10);
  
  for(int a = 0; a < 2; a++){
    fill(0);
    ellipse(x + 10 + a * 60, y + 12, 10, 10);
  }
  
  snelheid = 4;
  
  x+= snelheid;
  y = 400;
  if(x > width){
    x=0;
  }
}
