float[] barras = new float[20];
int ancho;

void setup() {
  size(800, 600);
  
  ancho = width / 20;

  for (int i = 0; i < 20; i++) {
    barras[i] = 120;
  }
}

void draw() {
  background(#0000FF); 

  if (mousePressed) {

    int cual = mouseX / ancho;

    if (cual >= 0 && cual < 20) {
      barras[cual] = height - mouseY;
    }
  }
  fill(#FFFF00); 
  stroke(100, 200, 255);         
  
  for (int i = 0; i < 20; i++) {
    rect(i * ancho, height - barras[i], ancho, barras[i]);
  }
}


/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/


int filas = 20;
int columnas = 20;
int medida = 60;

// Usamos dos matrices para no complicarnos con 3D
// Guardan 0 si no hay nada, 1 si hay pared, 2 si hay diagonal, etc.
int[][] paredes = new int[filas][columnas];
int[][] diagonales = new int[filas][columnas];

void setup() {
  size(800, 600);
  
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      
      paredes[i][j] = int(random(1, 5)); 
      diagonales[i][j] = int(random(1, 3));
    }
  }
}

void draw() {
  background(255);
  stroke(0);
  
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      
      int x = i * medida;
      int y = j * medida;
      
      if (paredes[i][j] == 1) {
        line(x, y, x + medida, y);
      } else if (paredes[i][j] == 2) {
        line(x, y, x, y + medida); 
      }
      if (diagonales[i][j] == 1) {
        line(x, y, x + medida, y + medida); 
      } else if (diagonales[i][j] == 2) {
        line(x + medida, y, x, y + medida); 
      }
      
    }
  }
}
