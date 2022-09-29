//pong!

import processing.sound.*;

SoundFile music;

float Gravity = 0.08;

int maxScore = 10;

PImage img;
PImage sad;
PImage happy;

float botAC = 1.35;

int radius = 20;

int BallSize = 30;

int gameState = 1;

float xWaarde = 750/2, yWaarde = 400/2;

float enemySpeed;
float Xspeed = 5, Yspeed = 7;
int PlayerScore, EnemyScore;
float xPlayer, yPlayer, wPlayer, hPlayer;
float xEnemy, yEnemy, wEnemy, hEnemy;

float playerposition = xPlayer+  yPlayer;

boolean start = true;
boolean win = false;
boolean lose = false;


void setup(){
  frameRate(90);
  fullScreen();
  img = loadImage("Anime2.png");
  sad = loadImage("sad.jpg");
  happy = loadImage("happy.jpg");
  

  happy.resize(758*4,514*4);
  
  music = new SoundFile(this, "Le Gang - I Don't Need U 2 Say Anything.mp3");
  music.amp(0.05);
  music.play();
  

}

void draw(){
  StartScreen();
  
  if(start) return;
  
  if(gameState == 1){
  background(0);
  
  image(img,0,0);
 
  textSize(90);
  
  text(EnemyScore,width - 550,100);
  text(PlayerScore,550,100);    
   
  player1();
  enemyplayer();
  Ball();
  }
  EndScreen();
}
//======================================
void keyPressed(){
  if(keyCode == 32){
    start = false; 
    gameState = 1;
  }
}
//======================================
void enemyplayer(){
  fill(255);
  noStroke();
  
  xEnemy = width - 50;
  yEnemy = - 30 + enemySpeed;
  wEnemy = 30;
  hEnemy = 150;
  
  rect(xEnemy,yEnemy,wEnemy,hEnemy,radius);

  //enemySpeed = yWaarde * botAC;
  
  rect(xEnemy,yEnemy,wEnemy,hEnemy,radius);
  if(xWaarde > width - 400){
  enemySpeed = yWaarde - 75 * botAC;
  }else if(xWaarde <= width - 400){
  enemySpeed = height / 2;
  }
 }
   

void player1(){
  fill(255);
  noStroke();
  
  xPlayer = 20;
  yPlayer = mouseY - 75;
  wPlayer = 30;
  hPlayer = 150;
  rect(xPlayer,yPlayer,wPlayer,hPlayer,radius);
}

void Ball(){
  fill(255);
  noStroke();
  
  xWaarde += Xspeed;
  yWaarde += Yspeed;
  
  ellipse(xWaarde,yWaarde,BallSize,BallSize);
  
  
  
  if(xWaarde > width){
    xWaarde = width/2;
    yWaarde = height/2;
    PlayerScore++;
  }else if(xWaarde > xEnemy && xWaarde < xEnemy + wEnemy && yWaarde > yEnemy && yWaarde < yEnemy + hEnemy){
    Xspeed = -Xspeed;
  }
  
  
    if(xWaarde < 0){
    xWaarde = width/2;
    yWaarde = height/2;
    EnemyScore++;
   }else if(xWaarde > xPlayer && xWaarde < xPlayer + wPlayer + 10 && yWaarde > yPlayer && yWaarde < yPlayer + hPlayer){
    Xspeed = -Xspeed;
  }
  
    if(yWaarde > height){
    Yspeed = -Yspeed;
    
  }
    if(yWaarde < 0){
    Yspeed = -Yspeed;
    
  }
  
  Yspeed += Gravity;
  
}

void StartScreen(){
  
  if(start == true){
  background(0);
  fill(255);
  
  textSize(80);
  
  var offset = textWidth("PONG") / 2;
  text("PONG",((width / 2) - offset),480);
  
  stroke(255);
  noFill();
  strokeWeight(5);
  rect((width / 2) - offset,420,200,70,10);
  
  textSize(20);
  var offset2 = textWidth("press space to start") / 2;
  text("press space to start",((width / 2) - offset2),590);
  }
}

void EndScreen(){
  if(PlayerScore == maxScore || EnemyScore == maxScore){
    background(0,255,10);
    //image(happy,0,0);
    
    textSize(90); fill(255); noStroke();
    var offset3 = textWidth("Winner") / 2;
    text("Winner",((width / 2) - offset3),500);
    if(EnemyScore == maxScore){
       background(255,10,0);
       var offset4 = textWidth("Defeated") / 2;
       text("Defeated",((width / 2) - offset4),500);
    }
    
    
    EnemyScore = 0;
    PlayerScore = 0;
    gameState = 0;
  }
}  
