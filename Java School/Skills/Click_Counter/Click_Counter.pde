import controlP5. *;

ControlP5 cp; 

Button Knop1;

int teller = 0;

void setup(){
  size(800,800);
  
  cp = new ControlP5(this);
 
  Knop1 = cp.addButton("Knop1").setPosition(300,300).setSize(200,200).setCaptionLabel("ClickMe");

}

void draw(){
}



void Knop1(){
  background(255);
  
  teller ++;
  
  fill(0);
  textSize(50);
  text(teller,375,100); 
  println("user hit button to " + teller);
}
