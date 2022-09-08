int MijnGBd = 14, MijnGBm = 10, MijnGBj = 2005 ;

size(400,200);
background(0,0,0);

fill(255,255,255);
textSize(50);

if(MijnGBd == 14 && MijnGBm == 10 && MijnGBj == 2005){
  background(0,255,100);
  text("Dat Klopt !!!",80,110); 
}else{
  background(255,50,0);
  text("Dat is onjuist :<",40,110);
}
