//Parker McClocklin
//CompSci30
//October 29th
//great image design

PImage[] pinImages = new PImage[9];
int frame = 0;

void setup() {
  size(600, 600);
  loadImages();
  //frameRate(100);
}

void loadImages() {
  for (int i = 0; i < 9; i++) {
    pinImages[i] = loadImage("pin-0" + i + ".png");
  }
}


void draw() {
  background(50, 37, 82);
  if (frameCount % 2 == 0) {
    image(pinImages[frame], mouseX, mouseY);
    imageMode(CENTER);
    frame ++;
    if (frame > 8) {
      frame = 0;
    }
  }
}
