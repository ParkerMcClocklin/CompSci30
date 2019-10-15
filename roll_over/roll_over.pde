//Parker McClocklin
//October 15th 2019
//computer science 30
//roll-overs with fade 


boolean topLeft = false;
boolean topRight = false;
boolean bottomLeft = false;
boolean bottomRight = false;
int topLeftFill = 255;
int topRightFill = 255;
int bottomLeftFill = 255;
int bottomRightFill = 255;

void setup() {
  size(500, 500);
  
}
  
void draw() {
  background(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  if (mouseX < width/2 && mouseY < height/2) {
    topLeft = true;
  } else {
    topLeft = false;
  }

  if (mouseX > width/2 && mouseY < height/2) {
    topRight = true;
  } else {
    topRight = false;
  }

  if (mouseX < width/2 && mouseY > height/2) {
    bottomLeft = true;
  } else {
    bottomLeft = false;
  }

  if (mouseX > width/2 && mouseY > height/2) {
    bottomRight = true;
  } else {
    bottomRight = false;
  }


  println(topLeft);
  //logic top left
  if (topLeft) {
    topLeftFill = 0;
  } else (topLeftFill) += 7;
  fill(topLeftFill);
  rect(0, 0, width/2, height/2 -1);

  println(topRight);
  //logic top Right
  if (topRight) {
    topRightFill = 0;
  } else (topRightFill) += 7;
  fill(topRightFill);
  rect(width/2, 0, width/2, height/2 -1);

  println(bottomLeft);
  //logic bottom left
  if (bottomLeft) {
    bottomLeftFill = 0;
  } else (bottomLeftFill) += 7;
  fill(bottomLeftFill);
  rect(0, height/2, width/2, height/2 -1);

  println(bottomRight);
  //logic bottom right
  if (bottomRight) {
    bottomRightFill = 0;
  } else (bottomRightFill) += 7;
  fill(bottomRightFill);
  rect(width/2, height/2, width/2, height/2 -1);

} 
