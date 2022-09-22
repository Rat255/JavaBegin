int DrawV = 250;
int DrawH = 250;

void setup(){
size(500,500);

}

void draw(){
  background(0);
  rect(DrawH,DrawV,100,100);

}

void keyPressed(){
  
  if(keyCode == 38){
    DrawV -= 10;
  }else if(keyCode == 40){
    DrawV += 10;
  }
    if(keyCode == 37){
    DrawH -= 10;
  }else if(keyCode == 39){
    DrawH += 10;
  }
}
