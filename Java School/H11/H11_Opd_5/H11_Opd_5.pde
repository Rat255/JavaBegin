int jongste = 0;
int oudste = 150;

int[] leeftijden = {10,16,80,70,50,20};

for(int i = 0; i < leeftijden.length; i++){
  if(jongste > leeftijden[i]){
  jongste = leeftijden[i];
  }

  if(oudste < leeftijden[i]){
  oudste= leeftijden[i];
  }
}
