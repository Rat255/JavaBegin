//pong!

import processing.sound.*;

SoundFile music;

PImage img;
PImage sad;
PImage happy;

float botAC = 1.19;

int radius = 10;

int BallSize = 20;

float xWaarde = 750/2, yWaarde = 400/2;

float enemySpeed;
float Xspeed = 3, Yspeed = 3;
int PlayerScore, EnemyScore;
float xPlayer, yPlayer, wPlayer, hPlayer;
float xEnemy, yEnemy, wEnemy, hEnemy;

float playerposition = xPlayer+  yPlayer;

boolean start = true;

void setup(){
  size(750,400);
  frameRate(90);
  
  img = loadImage("Anime2.png");
  sad = loadImage("sad.jpg");
  happy = loadImage("happy.jpg");
  
  happy.resize(758,514);
  
  music = new SoundFile(this, "Le Gang - I Don't Need U 2 Say Anything.mp3");
  music.amp(0.05);
  music.play();
  
  StartScreen();
  EndScreen();
  
  
}

void draw(){
  background(0);
  
  image(img,xWaarde/20-650,yWaarde/20-300);
 
  textSize(30);
  
  text(EnemyScore,600,50);
  text(PlayerScore,150,50);
  
  StartScreen();
   
  if(start) return;
   
  player1();
  enemyplayer();
  Ball();
  
  EndScreen();
}

void keyPressed(){
  if(keyCode == 32){
    start = false; 
  }
}

void enemyplayer(){
  fill(255);
  noStroke();
  
  xEnemy = width - 40;
  yEnemy = - 30 + enemySpeed;
  wEnemy = 20;
  hEnemy = 60;
  
  rect(xEnemy,yEnemy,wEnemy,hEnemy,radius);

  //enemySpeed = yWaarde * botAC;
  
  rect(xEnemy,yEnemy,wEnemy,hEnemy,radius);
  if(xWaarde > 400){
  enemySpeed = yWaarde * botAC;
  }else if(xWaarde <= 400){
  enemySpeed = 200;
  }
 }
   

void player1(){
  fill(255);
  noStroke();
  
  xPlayer = 20;
  yPlayer = mouseY - 30;
  wPlayer = 20;
  hPlayer = 60;
  rect(xPlayer,yPlayer,wPlayer,hPlayer,radius);
}

void Ball(){
  fill(255);
  noStroke();
  
  xWaarde += Xspeed;
  yWaarde += Yspeed;
  
  ellipse(xWaarde,yWaarde,BallSize,BallSize);
  
  
  
  if(xWaarde >= width){
    xWaarde = 750/2;
    PlayerScore++;
  }else if(xWaarde > xEnemy && xWaarde < xEnemy + wEnemy && yWaarde > yEnemy && yWaarde < yEnemy + hEnemy){
    Xspeed = -Xspeed;
  }
  
  
    if(xWaarde <= 0){
    xWaarde = 750/2;
    EnemyScore++;
   }else if(xWaarde > xPlayer && xWaarde < xPlayer + wPlayer + 10 && yWaarde > yPlayer && yWaarde < yPlayer + hPlayer){
    Xspeed = -Xspeed;
  }
  
  

    if(yWaarde >= height){
    Yspeed = -Yspeed;
    
  }
    if(yWaarde <= 0){
    Yspeed = -Yspeed;
    
  }
  Yspeed += 0.02;
}

void StartScreen(){
  
  if(start == true){
  background(0);
  fill(255);
  
  textSize(80);
  text("PONG",275,180);
  
  stroke(255);
  noFill();
  strokeWeight(5);
  rect(275,120,200,70,10);
  
  textSize(20);
  text("press space to start",290,290);
  }
}

void EndScreen(){

  if(PlayerScore == 10){
    background(0,255,10);
    image(happy,0,0);
    
    textSize(90); fill(255); noStroke();
    text("Winner",240,200);
    noLoop();
  }else if(EnemyScore == 10){
    background(255,10,0);
    image(sad,0,0);
    textSize(90); fill(255); noStroke();
    text("Defeated",220,200);
    noLoop();
  }

}
