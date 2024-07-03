PImage[] gambar = new PImage[151];
int currentFrame = 0;

void setup() {
  size(456, 262);
   for (int i = 0; i < gambar.length; i++) {
    gambar[i] = loadImage("mobil (" + (i + 1) + ").gif");
  }
  frameRate(20);
}

void draw() {
  if (gambar[currentFrame] != null) {
    image(gambar[currentFrame], 0, 0);
  }
  currentFrame = (currentFrame + 1) % gambar.length;
}
