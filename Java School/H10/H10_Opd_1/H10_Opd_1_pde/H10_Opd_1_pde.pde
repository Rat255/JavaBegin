import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
size(800,800);

cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(450,350)
          .setSize(100,100)
          .setCaptionLabel("ClickMe");
          
knop2 = cp.addButton("Knop2")
          .setPosition(250,350)
          .setSize(100,100)
          .setCaptionLabel("ClickMe");

knop1.setColorForeground(color(90,255,200));
knop1.setColorBackground(color(100,200,200));

knop2.setColorForeground(color(90,255,200));
knop2.setColorBackground(color(100,200,200));
}

void draw(){

}

void Knop1(){
  println("niet goed");
}

void Knop2(){
  println("goed");
}
