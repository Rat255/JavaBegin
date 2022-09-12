float gewicht = 51;
float lengte = 1.68;
float leeftijd = 16;
float BMI = 0;

size(780,300);

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;

textSize(20);
if(BMI <= 16){
  background(255,150,0);
  text("( oei ) Mischien wat meer eten.",90,290);
}else if(BMI >= 24){
  background(255,150,0);
  text("( oops ) Denk aan je gwicht.",90,290);
}else if(BMI <= 20){
  background(0,255,100);
  text("Je gewicht is helemaal prima.",90,290);
}

fill(255,255,255); 

rect(90,30,190,50,10);
rect(290,30,190,50,10);
rect(490,30,190,50,10);

fill(0,0,0);
textSize(30);
text("Leeftijd" + " = " + leeftijd,100,65);
text("Lengte" + " = " + lengte,300,65);
text("Gewicht" + " = " + gewicht,495,65);

fill(255,255,255);
textSize(100);

text("BMI" + " = " + BMI,90,200);
