//Parker McClocklin
//October 21st 2019
//Computer science 30
//nested loops demo
float gridSpacing = 10;


void setup() {
  size(400, 400);
}

void draw() {
  
  //gridSpacing += 5;
  //if (gridSpacing > 400) gridSpacing =10;
  
  //0-400  >> 10 - 40
  gridSpacing = map(mouseX, 0, width,10,40);
  background(255);
  for (int y = 0; y < height; y +=gridSpacing) {
    for (int x = 0; x < width; x+= gridSpacing) {
      stroke(30,87,45);
      line(width/2,height/2,x,y);
      fill(140,50,240);
      ellipse(x,y,5,5);
    }
  }
}
