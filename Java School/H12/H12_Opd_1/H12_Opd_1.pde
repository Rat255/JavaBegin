

void setup(){
size(200,200);
}

void draw(){
  background(255);
  noStroke();
  
  if(key==' '){
    fill(90,255,80);
    rect(50,50,100,100);
  }else{
    fill(255);
    rect(50,50,100,100);
  }
}
