PImage[] zombi = new PImage[46];
PImage[] matahari = new PImage[25];
PImage img;
int[] zombiX = new int[5];
int[] matahariX = new int[5];

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("background.jpg");
  for (int i = 0; i < zombi.length; i++) {
    zombi[i] = loadImage("zombi (" + (i + 1) + ").gif");
  }
  // matahari
  for (int i = 0; i < matahari.length; i++) {
    matahari[i] = loadImage("matahari (" + (i + 1) + ").gif");
    matahari[i].resize(100, 100);  // Adjust the size as needed
  }
  
  //initialize matahari posisi
  for (int j = 0; j > matahariX.length; j++){
    matahariX[j] = 100 + j * 100; 
  }

  // Initialize zombie positions
  for (int i = 0; i < zombiX.length; i++) {
    zombiX[i] = 800 + i * 200; 
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  for (int j = 0; j < matahariX.length; j++){
    image(matahari[frameCount % 6], matahariX[j], 70 + j * 100);
  }

  for (int i = 0; i < zombiX.length; i++) {
    image(zombi[frameCount % 6], zombiX[i], 80 + i * 70);
    zombiX[i] -= 5; // zombi bergerak ke kiri

    // Reset zombie posisi 
    if (zombiX[i] < -200) {
      zombiX[i] = width + 200; 
    }
  }
}
