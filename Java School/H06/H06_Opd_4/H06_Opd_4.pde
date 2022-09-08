float Cijfer = 10;

size(750,150);
background(255,200,255);

fill(250,250,250);
textSize(100);

if(Cijfer == 10){
  background(0,200,255);
text("PERFECT!",20,90);
}
else if(Cijfer >= 7){
  background(0,255,100);
text("Goed",20,90);
}
else if(Cijfer <= 3){
 background(255,0,0);
text("Fout",20,90);
}
else if(Cijfer >= 5.5){
  background(200,255,100);
text("Voldoende",20,90);
}else{
  background(255,155,100);
text("Onvoldoende",20,90);
}
