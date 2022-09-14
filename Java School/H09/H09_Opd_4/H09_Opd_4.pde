void setup(){
size(300,300);
vierkant(100,100,100,100);
}

void vierkant(int x ,int y ,int w ,int h){
  //top line
  line(x,y,x+w,y);
  //bottom line
  line(x,y+h,x+w,y+h);
  //right line
  line(x,y,x,y+h);
  //left line
  line(x+w,y,x+w,y+h);
}
