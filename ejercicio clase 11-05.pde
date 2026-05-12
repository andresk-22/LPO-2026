PVector pos, vel;

void setup() {
  size(800, 600);
  pos = new PVector(width/2, height/2);
  vel = new PVector(8, -2);
}

void draw() {
  background(#0000ff);
  pos.add(vel);

  if (pos.x > width || pos.x < 0) {
    vel.x *= -1;
  }

  if (pos.y > height || pos.y < 0) {
    vel.y *= -1;
  }

  ellipse(pos.x, pos.y, 75, 75);
}
