size(1400,720);
background(255,255,255);

strokeWeight(4); 
textSize(30);

//Lijn

line(90,90,500,90);


//Rechthoek


rect(90,150,410,200);


//Afgeronde rechthoek


rect(90,400,410,200,20);


//Gevulde rechthoek met ovaal


fill(200,90,255);
ellipse(750,500,410,200);
rect(545,150,410,200);


//Gevulde ovaal


ellipse(750,250,410,200);


//Taartpunt met ovaal eromheen


fill(255,255,255);
ellipse(1180,250,410,200);
fill(200,90,255);
arc(1180,250,410,200,1.8*PI,2*PI);


//Cirkel


fill(255,255,255);
ellipse(1180,500,200,200);

//text

fill(0,0,0);
text("Lijn",260,120);
text("Rechthoek",220,380);
text("Afgeronde rechthoek",170,630);
text("Gevulde ovaal",660,630);
text("Gevulde rechthoek met ovaal",560,380);
text("Taartpunt met ovaal eromheen",990,380);
text("Cirkel",1145,630);
