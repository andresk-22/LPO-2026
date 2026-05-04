void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  
  int filas = 10;
  int columnas = 8;
  
  // 
  float ancho = width / columnas;
  float alto = height / filas;

  for (int j = 0; j < filas; j++) {
    for (int i = 0; i < columnas + 1; i++) {
      
      float x = i * ancho;
      float y = j * alto;

     
      if (j % 2 != 0) {
        x = x - (ancho / 2);
      }

      fill(255);  
      stroke(0);  
      rect(x, y, ancho, alto);
    }
  }
}
