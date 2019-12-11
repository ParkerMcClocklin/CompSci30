//Parker McClocklin
//CompSci30 Mr. Scott
//November 15th 2019
//creat a tree with a factorial then make leaves on the ends of the branches


float scale = 15;
float a;
int levelsToDisplay = 5;

void setup() {
  size(500, 500);
  background(255);
  ;
}

void draw() {
  background(255);
  //logic for mouseX input from user
  a = map(mouseX, 0, width, 0, 35);
  drawTree(250, 400, 90, 6);
  randomSeed(0);
}



void drawLine(int x1, int y1, int x2, int y2, int depth) {
  strokeWeight(depth );
  line(x1, y1, x2, y2);
}


//controls amount of leaves 
void keyPressed() {
  if (key == 'z' || key == 'Z') {
    levelsToDisplay -= 1;
  }
  if (key == 'x' || key == 'X') {
    levelsToDisplay += 1;
  }
}

//creates random sized leaves
void drawLeaf(int x2, int y2, int depth) {
  float randLeaf = random(10, 20);
  float randLeaf2 = random(25, 50);



  if (depth < levelsToDisplay) {

    fill(random(120, 220), random(120, 220), random(120, 220));

    if (depth <= 2) ellipse(x2, y2, randLeaf2, randLeaf2);
    if (depth >= 3 ) ellipse(x2, y2, randLeaf, randLeaf);
  }
  if (levelsToDisplay < 1) levelsToDisplay = 1;
  if (levelsToDisplay > 6) levelsToDisplay = 7;
}

//basic tree recursion code
void drawTree(int x1, int y1, float angle, int depth) {

  if (depth > 0) {
    int x2 = (int)(x1 + (cos(radians(angle))*depth*scale)); 
    int y2 = (int)(y1 - (sin(radians(angle))*depth*scale));  

    drawLine(x1, y1, x2, y2, depth);

    //for a 2-branch tree:
    drawTree(x2, y2, angle-a, depth-1);
    drawTree(x2, y2, angle+a, depth-1);
    drawTree(x2, y2, angle, depth-1);
    drawLeaf(x2, y2, depth);
  }
}
