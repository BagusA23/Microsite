ArrayList<Book> books = new ArrayList<Book>();
color[] bookColors = {#d7e3fc, #F08583, #B4E2C4, #F6F3CC, #ecd8c1, #d4afb9, #d1cfe3};

void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  
  // Tambahkan buku baru secara acak
  if (random(1) < 0.1) {
    books.add(new Book());
  }
  
  // Update dan gambar semua buku
  for (int i = books.size() - 1; i >= 0; i--) {
    Book book = books.get(i);
    book.update();
    book.display();
    
    // Hapus buku yang sudah keluar dari layar
    if (book.y > height + 20) {
      books.remove(i);
    }
  }
}

class Book {
  float x, y;
  color c;
  float speed;
  
  Book() {
    x = random(width);
    y = -20;
    c = bookColors[int(random(bookColors.length))];
    speed = random(1, 3);
  }
  
  void update() {
    y += speed;
  }
  
  void display() {
    drawBook(int(x), int(y), c);
  }
}

void drawBook(int x, int y, color c) {
  pushMatrix();
  translate(x, y);
  scale(0.3); // Perkecil ukuran buku
  
  fill(c);
  quad(0, 0, 60, -20, 160, 0, 100, 40);
  quad(0, 0, 0, 20, 100, 60, 100, 40);
  
  fill(255);
  quad(100, 40, 100, 60, 160, 20, 160, 0);
  
  line(105, 45, 155, 10);
  line(105, 50, 155, 15);
  
  popMatrix();
}
