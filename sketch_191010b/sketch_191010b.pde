// random 


void setup(){
  size(500,500);
  rectMode(CENTER);
}



void draw(){
  rect(random(width), random(height), random(10,100), random(10,100));
  stroke(random(width), random(height), random(10,100), random(10,100));
  strokeWeight(map(mouseX, 0, width, 1,20));
  //println((int)random(255));
  fill(random(255),random(255),random(255), random(128,255));
  
  
}
