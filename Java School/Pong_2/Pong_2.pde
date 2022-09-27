
int BallSize = 20;

float xWaarde, yWaarde;

float enemySpeed;
float Xspeed = 2, Yspeed = 3;
int PlayerScore, EnemyScore;

float xPlayer, yPlayer, wPlayer, hPlayer;
float xEnemy, yEnemy, wEnemy, hEnemy;

float playerposition = xPlayer+  yPlayer;

void setup(){
  size(750,400);
  frameRate(90);
  
  enemyplayer();
  player1();
  Ball();
}

void draw(){
  background(0);
 
  
  player1();
  Ball();
  enemyplayer();
  
  textSize(30);
  
  text(EnemyScore,700,50);
  text(PlayerScore,50,50);
}

void enemyplayer(){
  
  xEnemy = width - 40;
  yEnemy = enemySpeed - 30;
  wEnemy = 20;
  hEnemy = 60;
  
 rect(xEnemy,yEnemy,wEnemy,hEnemy);
  if(xWaarde >= 575){
  enemySpeed = yWaarde;
  }else if(xWaarde <= 575){
  enemySpeed = yWaarde;
  }
}

void player1(){
  xPlayer = 20;
  yPlayer = mouseY - 30;
  wPlayer = 20;
  hPlayer = 60;
  rect(xPlayer,yPlayer,wPlayer,hPlayer);
}

void Ball(){
  
  xWaarde += Xspeed;
  yWaarde += Yspeed;
  
  ellipse(xWaarde,yWaarde,BallSize,BallSize);
  
  
  
  if(xWaarde >= width){
    xWaarde = 750/2;
    PlayerScore++;
  }else if(xWaarde + 10 >= 710){
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
