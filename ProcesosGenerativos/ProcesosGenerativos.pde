class Epi{
  PVector c;
  PVector e;
  float a;
  float da;
  float r;
  Epi def;
  
  Epi(PVector c_, float a_, float da_, float r_){
    this.c = c_.copy();
    this.a = a_;
    this.da = da_;
    this.r = r_;
    e = c_.copy().add(cos(this.a)*this.r,sin(this.a)*this.r);
  }
  
  Epi(Epi def_, float a_, float da_,float r_){
    this.def = def_;
    this.a = a_;
    this.da = da_;
    this.r = r_;
    this.c = def_.e;
    this.e = c.copy().add(cos(this.a)*this.r,sin(this.a)*this.r);
  }
  
  void step(){
    if (this.def != null){
      this.c = def.e;
    }
    this.a += this.da;
    this.e = c.copy().add(cos(this.a)*this.r,sin(this.a)*this.r);
  }
  
  void display(){
    line(this.c.x,this.c.y,this.e.x,this.e.y);
  }
  void display1(){
    noStroke();
    fill(sin(e.x)*127,sin(a)*127,a*3,5);
    ellipse(this.e.x,this.e.y,a,a*0.5);
  }
}



ArrayList <Epi> epis;
void setup(){
  size(800,600);
  epis = new ArrayList <Epi>();
  epis.add(new Epi(new PVector (width/2,height/2),0,random(0.01),random(40,80)));
  for(int i = 0; i <6;i++){
    epis.add(new Epi(epis.get(i),random(TWO_PI),random(0.01),random(40,80)));
  }
  background(255);


}
void draw(){
}

void keyPressed(){
  if (key == '1'){
    v1();
  }
  if (key == '2'){
    v2();
  }
  if (key == '3'){
    v3();
  }
  if (key == '4'){
    v4();
  }
  if (key == '5'){
    v5();
  }
  
  if (key == '6'){
    v6();
  }
  if (key == '7'){
    v7();
  }
  if (key == '8'){
    v8();
  }
  if (key == '9'){
    v9();
  }
}
