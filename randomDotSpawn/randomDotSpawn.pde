void setup() {
  size(500, 500);
  background(255);
}

void draw() {

  //if(frameCount % 60 == 0) fill(255,150,0);
  //else if (frameCount % 60 == 30) fill(205,0,255);
  //ellipse(random(0,width), random(0,height),10,10);

  if (frameCount % 6 == 0) {
    fill(0);
    ellipse(random(0, width), random(0, height), 10, 10);
    println(frameCount);
  }
  if (frameCount % 30 == 0) {
    fill(0, 0, 255);
    ellipse(random(0, width), random(0, height), 20, 20);
    println(frameCount);
  };
  if (frameCount % 2 == 0) {
    fill(100, 170, 40);
    ellipse(random(0, width), random(0, height), 30, 30);
    println(frameCount);
  }
}
