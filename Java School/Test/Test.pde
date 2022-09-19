import controlP5.*;

ControlP5 cp;

Button knop1;

int ObSpeed;

void setup(){
size(1280,720);
  
ControlP5 cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(1140,580)
          .setSize(100,100);
  
}

void draw(){
background(100,180,255);


}

void knop1(){


}
