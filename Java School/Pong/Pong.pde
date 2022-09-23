PVector player , enemy ball;

float ballSpeedX, ballSpeedY, enemySpeed;

int playerPoints = 0;
int enemyPoints = 0;

float ballSize;

void setup(){
  size(480,320);
  
  ball = new PVector(width/2, height/2);
  player = new PVector(width, height/2);
  enemy = new PVector()0, height/2);
  
  ballSpeedX = width/150;
  ballSpeedY = width/100;
  
  enemySpeed = width/150;
  ballSize = width/20;
  rectMode(CENTER):
}
