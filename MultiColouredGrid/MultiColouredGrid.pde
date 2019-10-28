//Parker McClocklin  
//october 22nd 2019
//CompSci30
//multicoloured grid

int squareSize = 50;
int randColour = 255;


void setup() {
  size(800, 800);
  drawGrid();
}

void draw() {
}

void keyPressed() {
  randColour += 20;
  fill(random(randColour), random(randColour), random(randColour));
  drawGrid();
  if (randColour < 20) {
    randColour = 255;
  }
}

void mousePressed() {
  drawGrid();
  if (mouseButton == RIGHT) {
    squareSize += 5;
  }
  if (mouseButton == LEFT) {
    squareSize -= 5;
  }
  if (squareSize > 150 || squareSize < 5) {
    squareSize = 50;
  }
}

void drawGrid() {
  for (int x = 0; x < width; x += squareSize) {
    for (int y = 0; y < height; y += squareSize) {
      fill(random(randColour), random(randColour), random(randColour));
      rect(x, y, squareSize, squareSize);
    }
  }
}
