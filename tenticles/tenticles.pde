
float offSet;

void setup(){
  size(1000,1000);
  rectMode(CENTER);
}


void draw(){
  background(112,0,13);
  fill(150,242,255);
  float a = map(mouseX,0,width,0,80);
  offSet = map(mouseY,0,height,0,80);
  drawRectangle(width/2,height/2,a ,100);
  drawRectangle(width/2,height/2,a -90,100);
  
}

void drawRectangle(float x, float y, float angle, float w){
  pushMatrix();
  if(w > 5){
    translate(x,y);
    rotate(radians(angle));
    rect(0,0,w,w);
    
    drawRectangle(w + offSet,0,angle,w*0.85);
  }
  
  popMatrix();
}
