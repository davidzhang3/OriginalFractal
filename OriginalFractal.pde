public void setup() {
  size(500, 500);
}

public void draw() {
  fractal(250, 250, 250);
}

public void fractal(int x, int y, int size) {
  ellipse(x, y, size, size);
  if (size > 10) {
    fractal(x - size/2, y, size/2 - mouseX); 
    fractal(x + size/2, y, size/2 - mouseX);
    fractal(x, y + size/2, size/2 - mouseX);
    fractal(x, y - size/2, size/2 - mouseX);
  }
}
