float[] listaX = new float[10]; 
float[] listaY = new float[10];
int proximoEspacio = 0; 


void setup() {
  size(800, 600);
  background(#1A367C);
}

void draw() {
  background(#1A367C);
  
  for (int i = 0; i < 10; i++) {
  ellipse(listaX[i], listaY[i], 60, 60);
  }
}

void mousePressed() {
  listaX[proximoEspacio] = mouseX;
  listaY[proximoEspacio] = mouseY;
  
  proximoEspacio = proximoEspacio + 1;
  if (proximoEspacio == 10) {
    proximoEspacio = 0;
  }
}
