PImage[] gambar = new PImage[87];
int currentFrame = 0;

void setup() {
  size(690, 518);

  frameRate(20);
}

void draw() {
  if (gambar[currentFrame] != null) {
    image(gambar[currentFrame], 0, 0);
  }
  currentFrame = (currentFrame + 1) % gambar.length;
}
