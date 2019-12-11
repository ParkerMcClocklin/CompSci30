//Parker mcclocklin
//CS30
//dec 6th 2019

ArrayList<Particle> myParticle = new ArrayList<Particle>();

void setup() {
  size(1200, 800);
  background(49);
}


void mousePressed() {
  myParticle.add(new Particle(mouseX, mouseY));
}


void draw() {
  for (int i = 0; i < myParticle.size(); i ++) {
    myParticle.get(i).move();
    myParticle.get(i).display();
    if (myParticle.get(i).isAlive() == false) {
      myParticle.remove(i);
      i --;
    }
  }
}
