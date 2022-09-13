int af = 30;

size(500,500);
background(255,255,255);

for(int x = 0; x < 10; x++){
    strokeWeight(5);
    line(x * af + 10,10,x * af + 10,200);
}
