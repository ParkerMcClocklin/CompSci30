//fractal demo 2
void setup() {
  size(600, 600);
  ellipseMode(CENTER);
  noFill();
}

void draw() {
  background(30, 56, 13);
  float initialSize = map(mouseX, 0, width, width/4, width*2);
  drawCircles(width/2, height/2, initialSize);
}

void drawCircles(float x, float y, float diameter) {
  if (diameter > 3) {
    ellipse(x, y, diameter, diameter);
    drawCircles(x+diameter/2, y, diameter/2);
    drawCircles(x-diameter/2, y, diameter/2);
    drawCircles(x, y+ diameter/2, diameter/2);
    //drawCircles(x,y- diameter/2,diameter/2);
  }
}
