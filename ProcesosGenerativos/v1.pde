void v1(){
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


noStroke();
fill(0,0,0,3);
  bezier(uno.x,uno.y,dos.x,dos.y,dos.x,dos.y,tres.x,tres.y);
  bezier(dos.x,dos.y,tres.x,tres.y,tres.x,tres.y,cuatro.x,cuatro.y);
  bezier(tres.x,tres.y,cuatro.x,cuatro.y,cuatro.x,cuatro.y,cinco.x,cinco.y);
  bezier(cuatro.x,cuatro.y,cinco.x,cinco.y,cinco.x,cinco.y,seis.x,seis.y);
  bezier(cinco.x,cinco.y,seis.x,seis.y,seis.x,seis.y,siete.x,siete.y);
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


noStroke();
fill(0,50,255,4);
  bezier(uno.x,uno.y,dos.x,dos.y,dos.x,dos.y,tres.x,tres.y);
  fill(0,255,255,3);
  bezier(dos.x,dos.y,tres.x,tres.y,tres.x,tres.y,cuatro.x,cuatro.y);
  fill(255,0,255,3);
  bezier(tres.x,tres.y,cuatro.x,cuatro.y,cuatro.x,cuatro.y,cinco.x,cinco.y);
  fill(25,55,255,2);
  bezier(cuatro.x,cuatro.y,cinco.x,cinco.y,cinco.x,cinco.y,seis.x,seis.y);
  fill(0,255,255,1);
  bezier(cinco.x,cinco.y,seis.x,seis.y,seis.x,seis.y,siete.x,siete.y);
}  
}
