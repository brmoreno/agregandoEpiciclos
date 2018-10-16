void v7(){
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

  //stroke(0,30);
  //strokeWeight(0.1);
   noStroke();
   fill(0,0,20,5);
  bezier(cuatro.x,cuatro.y,cinco.x,cinco.y,seis.x,seis.y,siete.x,siete.y);
  bezier(tres.x,tres.y,cuatro.x,cuatro.y,cinco.x,cinco.y,seis.x,seis.y);
  bezier(dos.x,dos.y,tres.x,tres.y,cuatro.x,cuatro.y,cinco.x,cinco.y);
  bezier(uno.x,uno.y,dos.x,dos.y,tres.x,tres.y,cuatro.x,cuatro.y);
  
  
  
}



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

  //stroke(0,30);
  //strokeWeight(0.1);
   noStroke();
   fill(255,255,0,4);
  bezier(cuatro.x,cuatro.y,cinco.x,cinco.y,seis.x,seis.y,siete.x,siete.y);
   fill(0,110,220,4);
  bezier(tres.x,tres.y,cuatro.x,cuatro.y,cinco.x,cinco.y,seis.x,seis.y);
   fill(0,69,160,3);
  bezier(dos.x,dos.y,tres.x,tres.y,cuatro.x,cuatro.y,cinco.x,cinco.y);
   fill(255,60,155,2);
  bezier(uno.x,uno.y,dos.x,dos.y,tres.x,tres.y,cuatro.x,cuatro.y);
  
  
  
}
}
