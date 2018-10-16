void v9(){
  float r = random(100);
  float g = random(100);
  float b = random(100);
  float rd = random(0.1);
  float gd = random(0.1);
  float bd = random(0.1);
  int iteras = ceil(random(1000,5000));
  epis = new ArrayList <Epi>();
  epis.add(new Epi(new PVector (width/2,height/2),0,random(-0.005,0.005),random(40,70)));
  for(int i = 0; i <6;i++){
    epis.add(new Epi(epis.get(i),random(TWO_PI),random(-0.005,0.005),random(40,70)));
  }
  background(255);

for(int i =0; i<iteras;i++){
  for (Epi e: epis){
    for(int j = 0; j<6;j++){
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

  
  fill(r+rd*i,g+gd*i,b+bd*i,50);
  noStroke();
  ellipse(uno.x,uno.y,50-i*0.01,50-i*0.01);
}
}
