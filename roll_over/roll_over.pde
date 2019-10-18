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
boolean offOn = true;    // state variable for light switch
boolean allOn = false;   //state variable for all lights on

void setup() {
  size(500, 500);
}

//update state variable when mmouse clicked
void mouseClicked() {
  if (mouseX > width/2 && mouseY > height/2) {
    offOn = !offOn;
  }
  if (mouseX < width/2 && mouseY < height/2) {
    allOn = !allOn;
  }
}

// logic for X and Y position of mouse 
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



  if (!topLeft){
    allOn = false;
  }

  println(topLeft);
  //logic top left
  //logic all lights on
  if (topLeft) {
    if (allOn == true) {
      topRightFill = 0;
      bottomLeftFill = 0;
      bottomRightFill = 0;
    } else {
      topRightFill += 5;
      bottomRightFill += 5;
      bottomLeftFill += 5;
    }
    topLeftFill = 0;
  } else topLeftFill += 5;
  fill(topLeftFill, 255, 255);
  rect(0, 0, width/2, height/2 -1);

  println(topRight);
  //logic top Right
  if (topRight) {
    topRightFill = 0;
  } else (topRightFill) += 5;
  fill(255, topRightFill, 255);
  rect(width/2, 0, width/2, height/2 -1);

  println(bottomLeft);
  //logic bottom left
  if (bottomLeft) {
    bottomLeftFill = 0;
  } else bottomLeftFill += 5;
  fill(bottomLeftFill);
  rect(0, height/2, width/2, height/2 -1);

  println(bottomRight);
  //logic bottom right
  //logic for light switch
  if (bottomRight) {

    if (offOn == true) {
      bottomRightFill = 0;
    } else {
      bottomRightFill =  255;
    }
  } else {
    if (offOn == true) {
      bottomRightFill += 5;
    }
  }
  fill(255, 255, bottomRightFill);
  rect(width/2, height/2, width/2, height/2 -1);
}
