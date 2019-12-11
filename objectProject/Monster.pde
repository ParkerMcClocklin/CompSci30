class Monster {
  //Properties
  float x, y;
  color c0;
  color c1;
  color backup;
  float size;
  float speed;
  int type;
  float xDirection; 
  float yDirection;
  float xSpeed; 
  float ySpeed;

  //Constructor
  Monster(float x_, float y_) {
    x = x_;
    y = y_;
    c0 = color(random(20, 60), random(200, 250), random(200, 250));
    c1 = color(random(100, 200), random(20, 60), random(50, 100));

    size = 50;
    type = int(random(2));
    if (type == 0) {
      backup = c0;
    } else {
      backup = c1;
    }
    xDirection = 1;
    yDirection = 1;
    xSpeed = random(-5, 5);
    ySpeed = random(-5, 5);
  }


  //Class methods

  void checkMonsterCollision(Monster m) {
    if (dist(x, y, m.getX(), m.getY()) <= size/2+m.getSize()/2  && m != this) {
      //teleport
      x = random(100, 700);
      y = random(100, 700);
    }
  }
  
  //mouseContact
  void checkMouseDistance() {
    if (dist(mouseX, mouseY, x, y) < size) {
      c0 = (0);
      c1 = (0);
    }
  }

    float getX() {
      return x;
    }
    float getY() {
      return y;
    }
    float getSize() {
      return size;
    }




    void display() {
      if (type == 0) fill(c0);
      if (type == 1) fill(c1);
      strokeWeight(2);
      arc(x, y, size, size, PI-QUARTER_PI, 2*PI+QUARTER_PI, CHORD);
    }
    void move() {

      if (type == 0) {
        c0 = backup;
        //direction of bounce
        if (x > width-size/2 || x < size/2) {
          xDirection *= -1;
          c0 +=100;
        }
        if (y > height-(size/2) || y < size/2) {
          yDirection *= -1;
          c0 +=100;
        }
        //position of shape
        x = x + ( xSpeed * xDirection );
        y = y + ( ySpeed * yDirection );
        backup = c0;
      }


      if (type == 1) {
        c1 = backup;
        x +=  random(-1, 1);
        y += random(-1, 1);
        if (x < 0-size/2) x = x+(width+size/2);
        //inflate
        size += (xSpeed/2);
        if (size > 80 || size< 45) xSpeed *= - 1;
      }
    }
  }
