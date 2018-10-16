void v3(){
  epis = new ArrayList <Epi>();
  epis.add(new Epi(new PVector (width/2,height/2),0,random(-0.01,0.01),random(40,60)));
  for(int i = 0; i <6;i++){
    epis.add(new Epi(epis.get(i),random(TWO_PI),random(-0.01,0.01),random(40,60)));
  }
  background(255);

for(int i =0; i<5000;i+=1){
  for (Epi e: epis){
    for (int j = 0; j<10;j++){
    e.step();
    }
  }
  PVector uno = epis.get(epis.size()-1).e;
  PVector dos = epis.get(epis.size()-2).e;
  PVector tres = epis.get(epis.size()-3).e;
  PVector cuatro = epis.get(epis.size()-4).e;
  stroke(80,0,0,200);
  strokeWeight(0.5);
  fill(255,102+sin(i*0.0056)*30,102+sin(i*0.0056)*60,10);
  bezier(dos.x,dos.y,uno.x,uno.y,tres.x,tres.y,cuatro.x,cuatro.y);
}
}
