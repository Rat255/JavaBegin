//cijfer - hoger = beter

float Cijfer = 6;


//Basis

int posY = 400;

size(1280,720);
background(255,200,255);


//sctipt

fill(250,250,250);
textSize(100);

if(Cijfer == 10){
  background(0,200,255);
text("PERFECT!",350,posY);
}
else if(Cijfer >= 7){
  background(0,255,100);
text("Goed",350,posY);
}
else if(Cijfer <= 3){
 background(255,0,0);
text("Fout",350,posY);
}
else if(Cijfer >= 5.5){
  background(200,255,100);
text("Voldoende",350,posY);
}else{
  background(255,155,100);
text("Onvoldoende",350,posY);
}
