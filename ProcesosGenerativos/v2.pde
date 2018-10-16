
void v2(){
  epis = new ArrayList <Epi>();
  epis.add(new Epi(new PVector (width/2,height/2),0,random(-0.01,0.01),random(40,70)));
  for(int i = 0; i <6;i++){
    epis.add(new Epi(epis.get(i),random(TWO_PI),random(-0.01,0.01),random(40,70)));
  }
  background(255);

for(int i =0; i<20000;i++){
  for (Epi e: epis){
    e.step();
  }
  PVector uno = epis.get(epis.size()-1).e;
  PVector dos = epis.get(epis.size()-3).e;
  noStroke();
  fill(0);
  ellipse(uno.x,uno.y,0.5,0.5);
  fill(0,0,0,3);
  stroke(0,51+sin(i*0.0056)*50,153+sin(i*0.0056)*50,20);
  strokeWeight(9);
  line(dos.x,dos.y,uno.x,uno.y);
}
translate(0,0);
for(int i =0; i<5000;i++){
  for (Epi e: epis){
    e.step();
  }
  PVector uno = epis.get(epis.size()-2).e;
  PVector dos = epis.get(epis.size()-4).e;
  noStroke();
  fill(255,20);
  ellipse(uno.x,uno.y,3,3);
  fill(255,255,84);
  ellipse(uno.x,uno.y,1,1);
  fill(0,0,0,3);
  stroke(10+sin(i*0.0056)*50,102+sin(i*0.0056)*40,204+sin(i*0.001)*40,10);
  strokeWeight(4);
  line(dos.x,dos.y,uno.x,uno.y);
}
}
