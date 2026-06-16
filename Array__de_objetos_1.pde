class Movil {

  PVector pos;
  PVector vel;
  int r = 10;


  Movil(float parametroX, float parametroY, float velX, float velY) {
    pos=new PVector(parametroX, parametroY);
    vel = new PVector (velX, velY);
  }

  void mover() {
    pos.add(vel);
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }

  void rebotar() {
    if (pos.x >width-r/2 || pos.x <= r/2) {
      vel.x= vel.x*-1;
    }

    if (pos.y >height-r/2 || pos.y <= r/2) {
      vel.y= vel.y*-1;
    }
  }
}




/////////////////////////////////////
Movil[] m;
int cant =4;
void setup() {
  size(800, 600);

  m = new Movil[cant];

  for (int i=0; i<cant; i++)
  {

    m[i] = new Movil(width/cant*i, height/2, 0, random(10));
  }
}
void draw() {
  background(100);
  for (int i=0; i<cant; i++)
  {
    m[i].mover();
    m[i].mostrar();
    m[i].rebotar();
  }
}
