class Star{
  float x,y;
  float d;
  float v;
  color c;
  Star(float x,float y){
    this.x=x;
    this.y=y;
    d=random(0.21,4.9);
    v=0.05;
    c=color(#B3DCF0,200);
  }
  
  void move(){
    d+=v;
    if (d>=5) v=-v;
    if (d<=0.2) v=-v;
  }
  
  void show(){
    fill(c);
    ellipse(x,y,d,d);
  }
  
  void run(){
    move();
    show();  
  }
}
