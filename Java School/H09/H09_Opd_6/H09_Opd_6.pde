void setup(){
size(800,800);
cickels(100,100,90,80);

}

void draw(){

}

void cickels(int x, int y, int s1, int s2){
  ellipse(x,y,x,y);
  ellipse(x,y,s1,s1);
  ellipse(x,y,s2,s2);

}
