//fractal assignment
//Parker McClocklin
//CS30 2019-20
//Create your own fractal


//production rules: 
//create a circle 
//dterming location of four corners 
//draw four more circles

float r = random(5);
void setup(){
  size(600,600,P3D);
  
}

void draw() {
  background(30,73,95);
  fill(86,23,50);
  pushMatrix();
  translate(width/2,height/2);
  sphereFractal(0,0, 100);
  popMatrix();
}


void sphereFractal(float x, float y, float size){
  if (size > 2){
    pushMatrix();
    translate(x,y);
    sphere(size);
    popMatrix();
    
      sphereFractal(x + size*r,y + size, size/2);
      sphereFractal(x - size*r,y - size, size/2);
      sphereFractal(x - size,y + size*1.5, size/2);
      sphereFractal(x + size,y -size*1.5, size/2);
    
  }
}
