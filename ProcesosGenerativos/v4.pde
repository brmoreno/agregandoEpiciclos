void v4(){
  epis = new ArrayList <Epi>();
  epis.add(new Epi(new PVector (width/2,height/2),0,random(-0.01,0.01),random(40,60)));
  for(int i = 0; i <6;i++){
    epis.add(new Epi(epis.get(i),random(TWO_PI),random(-0.01,0.01),random(40,60)));
  }
  background(255);

for(int i =0; i<20000;i+=1){
  for (Epi e: epis){
    for (int j = 0; j<10;j++){
    e.step();
    }
  }
  PVector uno = epis.get(epis.size()-1).e;
  PVector dos = epis.get(epis.size()-2).e;
  PVector tres = epis.get(epis.size()-3).e;
  PVector cuatro = epis.get(epis.size()-4).e;
  stroke(0,10);
  strokeWeight(0.1);
  noStroke();
  rectMode(CORNERS);
  ellipseMode(CORNERS);
  fill(0,7);
  ellipse(uno.x,uno.y,cuatro.x,cuatro.y);
  ellipse(tres.x,tres.y,cuatro.x,cuatro.y);
  ellipse(tres.x,tres.y,dos.x,dos.y);
  ellipse(uno.x,uno.y,dos.x,dos.y);
}

for(int i =0; i<5000;i+=1){
  for (Epi e: epis){
    for (int j = 0; j<15;j++){
    e.step();
    }
  }
  PVector uno = epis.get(epis.size()-1).e;
  PVector dos = epis.get(epis.size()-2).e;
  PVector tres = epis.get(epis.size()-3).e;
  PVector cuatro = epis.get(epis.size()-4).e;
  stroke(0,10);
  strokeWeight(0.1);
  noStroke();
  rectMode(CORNERS);
  ellipseMode(CORNERS);
  fill(30, 102, 255,2);
  ellipse(uno.x,uno.y,cuatro.x,cuatro.y);
  fill(0, 102, 153,2);
  ellipse(tres.x,tres.y,cuatro.x,cuatro.y);
  fill(51, 153, 255,2);
  ellipse(tres.x,tres.y,dos.x,dos.y);
 fill(255,255,30,2);
  ellipse(uno.x,uno.y,dos.x,dos.y);
}
ellipseMode(CENTER);
}
