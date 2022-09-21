int X = 600;
int Y = 400;

int speed = 5;
int speed2 = 5;

void setup(){
size(1280,720);

player1();


}

void draw(){
  background(0);


  if(key == 'w'){
    speed = 5;  
    Y -=speed;
}

  if(key == 's'){
    speed = 5; 
    Y +=speed;
}


  if(key == 'a'){
    speed2 = 5; 
    X -=speed2;
}



  if(key == 'd'){
    speed2 = 5;
    X +=speed2;
}


  ellipse(X,Y,60,60);
  
}

void player1(){

}
