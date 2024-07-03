PShape globe;
float theta;
void setup() {
  size(600, 600, P3D);
  noStroke();
  PImage img = loadImage("bulan.jpg");
  globe = createShape(SPHERE, 100);
  globe.setTexture(img);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotateY(radians(theta));
  shape(globe);
  theta += 0.5;
}
