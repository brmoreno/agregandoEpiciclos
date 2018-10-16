void v5(){
  int step = ceil(random(7));
  epis = new ArrayList <Epi>();
  epis.add(new Epi(new PVector (width/2,height/2),0,random(-0.01,0.01),random(40,80)));
  for(int i = 0; i <6;i++){
    epis.add(new Epi(epis.get(i),random(TWO_PI),random(-0.01,0.01),random(40,80)));
  }
  background(255);

for(int i =0; i<10000;i++){
  for (Epi e: epis){
    for(int j = 0; j<step;j++){
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

  stroke(0,20);
  strokeWeight(0.1);
  line(dos.x,dos.y,uno.x,uno.y);
  line(dos.x,dos.y,tres.x,tres.y);
  line(cuatro.x,cuatro.y,tres.x,tres.y);
  line(cuatro.x,cuatro.y,cinco.x,cinco.y);
  line(seis.x,seis.y,cinco.x,cinco.y);
  line(seis.x,seis.y,siete.x,siete.y);
}
}
