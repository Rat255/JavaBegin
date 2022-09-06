//vars
int xScr = 400; int yScr = 400;
size(800,800);
background(200,100,240);

fill(180,80,220);
noStroke();
ellipse(402,402,360,360);

fill(125,50,10);
ellipse(400,350,360,360);

fill(100,200,255);
noStroke();
ellipse(xScr,yScr,360,360);

fill(0,0,0);
arc(400,400,260,260,0,PI);

fill(255,255,0);
rect(400,400,28,30);

fill(255,255,200);
rect(370,400,28,30);

fill(255,255,255);
ellipse(335,300,100,100);
fill(0,0,0);
ellipse(335,300,50,50);
fill(255,255,255);
ellipse(335,320,50,30);

fill(255,255,255);
ellipse(465,300,100,100);
fill(0,0,0);
ellipse(465,300,50,50);
fill(255,255,255);
ellipse(465,320,50,30);

noFill();
stroke(255,255,255);
strokeWeight(10);
arc(400,330,70,70,1*PI,2*PI);

noStroke();
fill(125,50,10);
arc(335,400,130,100,1*PI,2*PI);
arc(465,400,130,100,1*PI,2*PI);
