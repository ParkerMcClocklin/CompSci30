//Parker McClocklin
//CompSci30
//November 1st 2019
//Sprite animation project

float x = 20;
float y = 20;
int direction = 0;
PImage[] guys = new PImage[16] ;
int frame = 0;

void loadImages() {

  for (int i = 0; i < 4; i++) {
    guys[i] = loadImage("guyE" + (i + 1) + ".png");
  }

  for (int i = 4; i < 8; i++) {
    guys[i] = loadImage("guyN" + (i - 3) + ".png");
  }

  for (int i = 8; i < 12; i++) {
    guys[i] = loadImage("guyS" + (i - 7)+ ".png");
  }

  for (int i = 12; i < 16; i++) {
    guys[i] = loadImage("guyW" + (i - 11) + ".png");
  }
}

void setup() {

  size(1200, 800);
  loadImages();
  imageMode(CENTER);
  frameRate(20);
}

void keyPressed() {
  imageMode(CENTER);
  //logic East
  if (keyCode!=CODED) direction = 5;
  if (keyCode == RIGHT) {
    direction = 1;
  }

  //logic North
  if (keyCode == UP) {
    direction = 2;
  }

  //logic South
  if (keyCode == DOWN) {
    direction = 3;
  }

  //logic West
  if (keyCode == LEFT) {
    direction = 4;
  }
}

void draw() {
  background(255);
  //println(direction);

  //logic idle
  //if (direction == 0) {

  //  image(guyE1, x, y);
  //  image(guyS1, x, y);
  //  image(guyW1, x, y);
  //  image(guyN1, x, y);
  //}

  //east
  if (direction == 1) {
    x += 10;

    if (frame>2) frame = 0;
    else frame ++;
    println(frame);
    image(guys[frame], x, y, 40, 60);
  }


  //north
  if (direction == 2) {
    y -= 10;

    if (frame>7 || frame<4) frame = 4;
    else frame ++;
    image(guys[frame], x, y, 40, 60);
  }


  //south
  if (direction == 3) {
    y += 10;
    if (frame>11 || frame<8) frame = 8;
    else frame ++;
    image(guys[frame], x, y, 40, 60);
  }

  //west
  if (direction == 4) {
    x -= 10;
    if (frame>14 || frame<12) frame = 12;
    else frame ++;
    image(guys[frame], x, y, 40, 60);
  }
}
