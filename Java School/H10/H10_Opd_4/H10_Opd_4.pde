import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

int ouders;
int studenten;
int Tsize = 50;

void setup(){
size(230,200);

cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(10,110)
          .setSize(100,80)
          .setCaptionLabel("Ouders");

knop2 = cp.addButton("Knop2")
          .setPosition(120,110)
          .setSize(100,80)
          .setCaptionLabel("Studenten");

Background();
}

void draw(){

}

void Background(){
background(255);
}

void Knop1(){
ouders++;

noStroke();
fill(255);
rect(1,1,110,100);

fill(0);
textSize(Tsize);
text(ouders,10,50);
}

void Knop2(){
studenten++;

noStroke();
fill(255);
rect(120,1,110,100);

fill(0);
textSize(Tsize);
text(studenten,120,50);
}
