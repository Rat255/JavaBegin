import controlP5.*;

ControlP5 cp;

Button  knop1;

int keer;

void setup(){
size(500,500);

ControlP5 cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(200,200)
          .setSize(100,100)
          .setColorLabel(color(255))
          .setColorBackground(color(255,00,00));
}

void draw(){
  background(255);
  
  fill(0);
  textSize(20);
  
  
  if(keer >= 140){
    text(".",200,160);
  }else if(keer >= 101){
    text("okay thats to far bro.",200,160);
  }else if(keer >= 90){
    text(":<",200,160);
  }else if(keer >= 80){
    text("BRO ?!?!",200,160);
  }else if(keer >= 60){
    text("stop?",200,160);
  }else if(keer >= 40){
    text("stop please",200,160);
  }else if(keer >= 20){
    text("please",200,160);
  }else if(keer >= 8){
    text("OK",200,160);
  }else if(keer >= 1){
    text("ok",200,160);
  }
  
  text(keer,10,490);
}
void Knop1(){
  
  keer++;

}
