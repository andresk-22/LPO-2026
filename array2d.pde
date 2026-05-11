int filas = 15;
int columnas = 15;
float tamaño; 
float[][] distancias = new float[filas][columnas];

void setup() {
  size(800, 600);

  tamaño = width / columnas;
  noStroke();
}

void draw() {
  background(0);

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
    
      float centroX = i * tamaño + tamaño/2;
      float centroY = j * tamaño + tamaño/2;
      
      float d = dist(centroX, centroY, mouseX, mouseY);
      distancias[i][j] = d;
    }
  }


  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {

      float colorGris = map(distancias[i][j], 0, 400, 255, 0);
      
      fill(colorGris);
      rect(i * tamaño, j * tamaño, tamaño, tamaño);
    }
  }
}
