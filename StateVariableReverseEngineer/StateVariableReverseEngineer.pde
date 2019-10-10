//State variable reverse engineer
int x=0;
int y=0;
int state = 0;


void setup(){
  size(200,200);
}
void draw(){
  background(255);
  fill(10);
  rect(x, y,10,10);
  
  if (state == 0){
    x += 2;
    if (x == width - 10) state = 1;
  }
  else if (state == 1){
    y += 2;
    if (y == height - 12) state = 2;
  }
  else if (state == 2){
    x -= 2;
    if (x == 0 ) state = 3;
  }
  else if (state == 3){
    y -= 2;
    if (y == 0 ) state = 0;
  }
}
