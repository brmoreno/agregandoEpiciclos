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
  
  void linea(){
    noFill();
    stroke(0);
    line(this.c.x,this.c.y,this.e.x,this.e.y);
  }
  
  void def(){
    ellipseMode(CENTER);
    noFill();
    stroke(0);
    ellipse(this.c.x,this.c.y,this.r*2,this.r*2);
  }
  void plan(){
    ellipseMode(CENTER);
    noStroke();
    fill(0);
    ellipse(this.c.x,this.c.y,10,10);
    ellipse(this.e.x,this.e.y,10,10);
  }
  
  void trig(){
    noFill();
    stroke(0);
    line(this.c.x,this.c.y,this.e.x,this.c.y);
    line(this.e.x,this.c.y,this.e.x,this.e.y);
  }
}
