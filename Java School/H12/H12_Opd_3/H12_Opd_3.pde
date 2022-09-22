import java.util.Random;

void setup(){
size(500,500);
background(0);

}
void draw(){

  
  Random rand = new Random();
   
  fill(rand.nextInt(255),rand.nextInt(255),rand.nextInt(255));
  rect(mouseX - 10,mouseY - 10,20,20);

}
