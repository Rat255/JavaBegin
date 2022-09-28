//pong!

import processing.sound.*;

SoundFile EnemyHit;

SoundFile PlayerHit;

float botAC = 1.15;

int radius = 10;

int BallSize = 20;

float xWaarde = 750/2, yWaarde = 400/2;

float enemySpeed;
float Xspeed = 2, Yspeed = 3;
int PlayerScore, EnemyScore;
float xPlayer, yPlayer, wPlayer, hPlayer;
float xEnemy, yEnemy, wEnemy, hEnemy;

float playerposition = xPlayer+  yPlayer;

boolean start = true;

void setup(){
  size(750,400);
  frameRate(90);
  
  EnemyHit = new SoundFile(this, "EnemyHit");
  PlayerHit = new SoundFile(this, "PlayerHit");
  
  
  
  StartScreen();
  EndScreen();
  enemyplayer();
  player1();
  Ball();
}

void draw(){
  background(0);
 
  textSize(30);
  
  text(EnemyScore,700,50);
  text(PlayerScore,50,50);
 
  player1();
  Ball();
  enemyplayer();
  
  StartScreen();
  EndScreen();
}

void keyPressed(){
  if(keyCode == 32){
    start = false; 
  }
}

void enemyplayer(){
  
  noStroke();
  
  xEnemy = width - 40;
  yEnemy = - 30 + enemySpeed;
  wEnemy = 20;
  hEnemy = 60;
  
 rect(xEnemy,yEnemy,wEnemy,hEnemy,radius);
  if(xWaarde >= 475){
  enemySpeed = yWaarde * botAC;
  }else if(xWaarde <= 475){
  enemySpeed = 200;
  }
}

void player1(){
  
  noStroke();
  
  xPlayer = 20;
  yPlayer = mouseY - 30;
  wPlayer = 20;
  hPlayer = 60;
  rect(xPlayer,yPlayer,wPlayer,hPlayer,radius);
}

void Ball(){
  
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
  
}

void StartScreen(){
  
  if(start == true){
  background(0);
  fill(255);
  textSize(90);
    
  text("Pong!",270,150);
  }else if(start == false){
    
    
  }

}

void EndScreen(){

  if(PlayerScore == 10){
    background(0,255,10);
    textSize(90); fill(255); noStroke();
    text("Winner",240,150);
    noLoop();
  }else if(EnemyScore == 10){
    background(255,10,0);
    textSize(90); fill(255); noStroke();
    text("Defeated",220,150);
    noLoop();
  }

}
