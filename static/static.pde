

void setup() {
  size(800, 800);
  drawGrid();
}

void draw() {
  drawGrid();
}

void mousePressed(){
  drawGrid();
}
  
void drawGrid(){
  for (int x = 0; x < width; x += 2) {
    for (int y = 0; y < height; y += 2) {
      fill(random(255), random(255),random(255));
      rect(x,y,2,2);
    }
  }
}
