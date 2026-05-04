void setup() {
  size(800, 700);
  background(#FFFFFF);
}

void draw() {
  float w=width, h=height, n=6, x=0, diametro=w/18;

  for (int i=0; i<n; i++)
  {
    x+=diametro;
    diametro+= w/18;
    println(x, " ");
    stroke(#0D0C64);
    fill(#FFF398);
    circle(diametro/2+x, h/2, diametro);
  }

  println("\n");
}
