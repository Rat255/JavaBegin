int Quest1 = 11, Quest2 = 11, Quest3 = 11;

size(800,800);
background(230,160,200);

textSize(90);

if(Quest1 == 11 && Quest2 == 11 && Quest3 == 11){
  stroke(90,200,100);
  strokeWeight(9);
  fill(90,200,100);
  rect(400-350,400-85,700,170,10);
  fill(255,255,255);
  text("gefeliciteerd !!!",160-45,470-45);
}else{
  stroke(255,20,100);
  strokeWeight(9);
  fill(255,20,100);
  rect(400-350,400-85,700,170,10);
  fill(255,255,255);
  text("Nog niet alles af",130-45,470-45);

}
