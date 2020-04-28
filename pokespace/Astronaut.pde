class Astronaut{
  float x,y;
  float angle;
  float rand;
  float speedangle;
  float speedmove;
  PImage I;
  Astronaut(PImage I){
    this.I=I;
    x=random(200,500);
    speedmove=3;
    int rand2=int(random(1,3)); 
    if(rand2<2) y=100;
    else {
      y=700;
      speedmove=-speedmove;
    }
    angle=0;
    rand=int(random(1,3));
    speedangle=random(0,1);
    
  }

void move(){
  if(rand<2) angle+=speedangle;
  else angle-=speedangle;
  y+=speedmove;
}


  void show(){
     pushMatrix();
     translate(x,y);
     rotate(radians(angle));
     image(I,50,0);
     popMatrix();
  }
  
  void run(){
    move();
    show();
  }

}
