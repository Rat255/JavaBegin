

int teller;

void setup(){
size(300,200);


}


void draw(){

  
  background(0);
  textSize(10);
  text(millis() / 1000,10,10);

  
  if(millis() / 1000 >= 10){
    background(0,255,120);
  }
  
    textSize(90);
    text(teller,100,100);
}

void keyPressed(){
if(keyCode == 32 && millis() / 1000 < 10){
  teller++;
}

}
