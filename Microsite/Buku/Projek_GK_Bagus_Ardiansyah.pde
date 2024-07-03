void setup() {
  size(300, 300);
  background(255);
  noLoop();
}

void draw() {
  drawBook(80, 180, #d7e3fc);  // buku pertama
  drawBook(60, 160, #F08583);  // buku kedua
  drawBook(100, 140, #B4E2C4); // buku ketiga
  drawBook(80, 120, #F6F3CC); // buku keempat 
  drawBook(60,100, #ecd8c1); //buku kelima
  drawBook(80,80, #d4afb9); //buku keeman
  drawBook(90,60,#d1cfe3); // buku ketujuh
}

void drawBook(int x, int y, int c) {
  fill(c);
  quad(x, y, x+60, y-20, x+160, y, x+100, y+40);
  quad(x, y, x, y+20, x+100, y+60, x+100, y+40);
  
  fill(255);
  quad(x+100, y+40, x+100, y+60, x+160, y+20, x+160, y);
  
  line(x+105, y+45, x+155, y+10);
  line(x+105, y+50, x+155, y+15);
}
