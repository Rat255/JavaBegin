import controlP5.*;

ControlP5 cp;

Button knop1;

int xMove = 1080;
int yMove;
int Speed = 6;

void setup(){
size(1280,720);
frameRate(60);


ControlP5 cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(1140,580)
          .setSize(100,100);
  
}

void draw(){
background(100,180,255);

xMove += Speed;


fill(180);
rect(xMove,600,100,200);

if(xMove + 100 >= width){
  Speed = -Speed;
}

if(xMove <= 0){
  Speed = -Speed;
}

}
 void knop1(){
 fill(255,00,00);
 rect(600,600,200,200);
 }
