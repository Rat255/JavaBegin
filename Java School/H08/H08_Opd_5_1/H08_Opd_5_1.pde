int g = 100;

size(800,800);
background(255,255,255);

for(int x = 0; x < 5; x++){
  ellipse(400,400,g,g);
  g-=10 * 2;
}
