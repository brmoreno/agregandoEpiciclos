ArrayList <Epi> epis;
float base = -0.009;
PGraphics fondo;

boolean t1 = true;
boolean t2 = false;

void setup(){
  size(800,600);
  fondo = createGraphics(800,600);
  fondo.beginDraw();
  fondo.background(255);
  fondo.endDraw();
  
  epis = new ArrayList <Epi>();
  background(255);
  epis.add(new Epi(new PVector (width/2,height/2),0,base,120));
}

void draw(){
  background(255);
  image(fondo,0,0);
  if (t1){
    traza();
  }
  if (t2){
    traza2();
  }
  strokeWeight(1);
  for (Epi e:epis){
    e.step();
    e.linea();
    e.def();
    e.plan();
    e.trig();
  }
  
  if (keyPressed){
    if (key == 32){
      fondo.beginDraw();
      fondo.noStroke();
      fondo.fill(255,30);
      fondo.rect(0,0,800,600);
      fondo.endDraw();
    }
  }
}

void keyPressed(){
  if (key>=49&&key<=57){

    int n = Integer.parseInt(str(key));
    epis.get(epis.size()-1).da=base*n;

  }
  else if (key==8){
    if (epis.size()>1){
      epis.remove(epis.size()-1);
    }
  }
  
  else if (key == 'r'){
    for (Epi e:epis){
      e.da =random(-0.01,0.01);
    }
  }
  else if (key == 't'){
    for (Epi e:epis){
      e.r =random(50,100);
    }
  }

  else if (key == 'a'){
    epis.add(new Epi(epis.get(epis.size()-1),0,epis.get(epis.size()-1).da*2,epis.get(epis.size()-1).r/2));
  }
  
  else if(key == 'z'){
    t1 = !t1;
  }
  else if(key == 'x'){
    t2 = !t2;
  }
}

void traza(){
  PVector p = epis.get(epis.size()-1).e;
  fondo.beginDraw();
  fondo. noStroke();
  fondo.fill(255);
  fondo.ellipse(p.x,p.y,2,2);
  fondo.endDraw();
}

void traza2(){
  
  fondo.beginDraw();
  fondo.stroke(0,10);
  fondo.strokeWeight(6);
  for(int i = 0; i<epis.size()-1;i++){
    PVector p1 = epis.get(i).e;
    PVector p2 = epis.get(i+1).e;
    fondo.line(p1.x,p1.y,p2.x,p2.y);
  }
  fondo.endDraw();
}
