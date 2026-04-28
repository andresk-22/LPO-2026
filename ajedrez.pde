void setup() {
  size(800, 600);
}

void draw() {
  int cantcol=4, cantfilas=5;
  float ancho=width/cantcol;
  float alto=height/cantfilas;
  float cont = 0;
  background(255);

  for (int i=0; i<cantcol; i++) {
    float x = i*ancho;
    for (int j=0; j<cantfilas; j++) {
      float y = j*alto;
      cont++;
      if (cont % 2 == 0) {
        
        fill(0, 0, 0); 
        rect(x, y, ancho, alto);
      }else{
        fill(255,255, 250);
        rect(x, y, ancho, alto);
        }
    }
  }
}
