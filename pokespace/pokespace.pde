ArrayList<Star> sky;
PImage A;
PImage B;
PImage O;
Astronaut astro;
boolean leva=false;
void setup(){
  size(1000,900);
  sky=new ArrayList<Star>();
  for(int i=0;i<200;i++){
    sky.add(new Star(random(0,900),random(0,900)));
    if(i%2==0)sky.get(i).c=color(#BA9BE5,200);
  }
  A=loadImage("pika.png");
  B=A.copy();
  A.resize(150,200);
  astro=new Astronaut(A);
  O=loadImage("ship.png");
}

void draw(){
  fill(0,50);
  rect(0,0,900,900);
  noStroke();
  for(Star s:sky) {
    s.run();
  }
  if(leva==true){astro.run();
  if(astro.y>=900||astro.y<=0) astro=new Astronaut(A);
  }
  image(O,0,0);
  if(leva==false)     image(B,width/2,height/2);
}


void mousePressed(){
  leva=!leva;
  setup();
}
