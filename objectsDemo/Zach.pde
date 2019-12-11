class Zach {
  //Properties
  float x, y;
  color c;
  float size;
  float speed;
  int type; // behaviour type 
  int colorSpeed = -3;

  //constructor
  Zach(float x_, float y_) {
    x = x_;
    y=y_;
    c = 255;//color(random(255), random(255), random(255));
    size = 30;//random(10, 25);
    speed = random(2, 7);
    type = 4;//int(random(3)); // //0, 1, 2
  }



  //class methods
  void display() {
    fill(c,0,0);
    rect(x, y, size, size);
    c += colorSpeed;
    if (c > 255 || c < 0) colorSpeed *= -1;
    //fill(255, 255, 255, 255);
    //strokeWeight(5);
    //ellipse(x, y, 90, 120);
    //strokeWeight(5);
    //ellipse(x, y - 75, 75, 75);
    //strokeWeight(10);
    //line(x + 50, y- 20, x + 80, y - 45);
    //strokeWeight(10);
    //line(x - 50, y-20, x - 80, y - 45);
    //strokeWeight(5);
    //ellipse(x - 7, y-80, 5, 5);
    //strokeWeight(5);
    //ellipse(x + 7, y-80, 5, 5);
    //line(x-4, y-60, x +4, y -60);
    //strokeWeight(5);
  }

  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  float getSize(){
    return size;
  }

  void move() {
    if (type == 0) {
      x += speed; 
      if (x > width) x = x-width;
    } else if (type == 1) { // random walker algorithm
      int choice = int(random(4)); //1,2,3,4
      if (choice == 0) {
        y = y-speed;
      }
      if (choice == 1) {
        y = y+speed;
      }
      if (choice == 2) {
        x = x-speed;
      } else if (choice == 3) {
        x = x+speed;
      }
    } else if (type == 2) {
      size += (speed/2);
      if (size > 75 || size< 10) speed *= - 1;
    }
  }
}
