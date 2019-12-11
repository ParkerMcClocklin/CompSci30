//Parker McClocklin  
//CS30 2019/2020
//November 27th
//Create a monster project with class and objects

ArrayList<Monster> myMonster = new ArrayList <Monster>();
int monsterCount = 1;

void setup() {
  size(800, 800);
  ellipseMode(CENTER);
  createObject(width/2,height/2);
  //#of monsters
  if (monsterCount < 0) monsterCount = 0;
}


 void createObject(float x,float y) {
  myMonster.add(new Monster(x, y));
}

void mousePressed() {
  // add/destroy monsters
  if (mouseButton == LEFT && monsterCount > 0) {
    myMonster.remove(0);
    monsterCount -=1;
  }
  if (mouseButton == RIGHT){
    createObject(mouseX,mouseY);
    monsterCount +=1;
  }
}



void draw() {
  background(255);
  for (int i = 0; i < myMonster.size(); i++) {
    Monster m = myMonster.get(i);
    m.move();
    m.checkMouseDistance();
    for (int j = 0; j < myMonster.size(); j++) {
      Monster compare = myMonster.get(j);
      m.checkMonsterCollision(compare);
    }
    m.display();
  }
}
