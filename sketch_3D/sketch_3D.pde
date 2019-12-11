void setup() {
  size(600, 600,P3D);
  
}

void draw() {
  background(0);
  fill(0,200,0);
  pushMatrix(); // adds new coordinate system
  //translate(width/2, height/2);
  rotateY(radians(frameCount%360));
  //box(100);
  popMatrix();
  translate(width/2, height/2);
  rotateY(radians(frameCount%360));
  rotateX(radians(map(mouseX,0,height,-180,180)));
  //rotateZ(radians(map(mouseY,0,height,-180,180)));
  sphere(100);
  boxFractal(0,0,100);
}


void boxFractal(float x, float y, float size){
  if (size > 10){
    pushMatrix();
    translate(x,y);
    box(size);
    popMatrix();
    boxFractal(x + size, y, size/1.5);
  }
}
