PImage[] gambar = new PImage[87];
int currentFrame = 0;

void setup() {
  size(690, 518);
 for (int i = 0; i < gambar.length; i++) {
    gambar[i] = loadImage("1 (" + (i + 1) + ").gif");
  }
  frameRate(20);
}

void draw() {
  if (gambar[currentFrame] != null) {
    image(gambar[currentFrame], 0, 0);
  }
  currentFrame = (currentFrame + 1) % gambar.length;
}
