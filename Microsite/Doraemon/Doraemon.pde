void setup() {
  size(400, 400);
  smooth();
  noStroke();
}

void draw() {
  background(200);
  
  // Badan
  fill(0, 150, 255);
  ellipse(200, 220, 200, 200);
  
  // Kepala
  fill(0, 150, 255);
  ellipse(200, 150, 180, 180);
  
  // Muka putih
  fill(255);
  ellipse(200, 160, 150, 150);
  
  // Mata
  fill(255);
  ellipse(175, 140, 40, 50);
  ellipse(225, 140, 40, 50);
  
  fill(0);
  ellipse(180, 150, 15, 20);
  ellipse(220, 150, 15, 20);
  
  // Hidung
  fill(255, 0, 0);
  ellipse(200, 170, 20, 20);
  
  // Mulut
  noFill();
  stroke(0);
  strokeWeight(2);
  arc(200, 190, 80, 40, 0, PI);
  
  // Kumis
  line(160, 180, 120, 170);
  line(160, 190, 120, 190);
  line(160, 200, 120, 210);
  
  line(240, 180, 280, 170);
  line(240, 190, 280, 190);
  line(240, 200, 280, 210);
  
  // Kalung
  noStroke();
  fill(255, 0, 0);
  rect(150, 230, 100, 20);
  
  // Lonceng
  fill(255, 255, 0);
  ellipse(200, 260, 30, 30);
  fill(0);
  ellipse(200, 265, 5, 5);
  
  // Kantong ajaib
  noFill();
  stroke(0);
  strokeWeight(2);
  arc(200, 270, 100, 60, PI, TWO_PI);
}
