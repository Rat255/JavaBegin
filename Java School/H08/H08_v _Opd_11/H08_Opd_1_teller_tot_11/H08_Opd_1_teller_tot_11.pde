size(220,220);
background(255,255,255);

strokeWeight(2);

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    rect(i * 20 + 10,j * 20 + 10,20,20);
  }
}
