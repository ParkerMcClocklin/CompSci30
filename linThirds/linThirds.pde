void setup(){
  size(600,600);
}

void draw(){
  drawCantor(width/6,height/3,width*2/3);
}

void drawCantor(float x, float y, float len){
  if (len > 2){
    line(x,y,x + len, y); 
    drawCantor(x,y + 20, len/3);
    drawCantor(x + 2*len/3, y +20, len/3);
  }
}
