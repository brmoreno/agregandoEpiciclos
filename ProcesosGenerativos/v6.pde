void v6(){
  epis = new ArrayList <Epi>();
  epis.add(new Epi(new PVector (width/2,height/2),0,random(-0.01,0.01),random(40,80)));
  for(int i = 0; i <6;i++){
    epis.add(new Epi(epis.get(i),random(TWO_PI),random(-0.01,0.01),random(40,80)));
  }
  background(255);

for(int i =0; i<10000;i++){
  for (Epi e: epis){
    for(int j = 0; j<1;j++){
      e.step();
    }
  }
  PVector uno = epis.get(epis.size()-1).e;
  PVector dos = epis.get(epis.size()-2).e;
  PVector tres = epis.get(epis.size()-3).e;
  PVector cuatro = epis.get(epis.size()-4).e;
   PVector cinco = epis.get(epis.size()-5).e;
  PVector seis = epis.get(epis.size()-6).e;
  PVector siete = epis.get(epis.size()-7).e;

  stroke(0,35);
  strokeWeight(0.1);
   noFill();
  bezier(uno.x,uno.y,cinco.x,cinco.y,tres.x,tres.y,siete.x,siete.y);
}
}
