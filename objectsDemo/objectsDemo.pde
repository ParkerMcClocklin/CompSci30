//parker mcclocklin  
//compsci30  
//november 25th
//moving object

ArrayList<Zach> myZachs = new ArrayList<Zach>();
int NUM_ZACH = 10000;

void setup(){
 size(1000,600); 
 //myZach = new zach(width/2, height/2);
 createObjects();
 rectMode(CENTER);
 ellipseMode(CENTER);

}




void createObjects(){
  for (int i = 0; i < NUM_ZACH; i ++){
    myZachs.add(new Zach(random(width), random(height)));
  }
}

void mousePressed(){
  if(myZachs.size()>0) removeObject(0);

}

void removeObject(int index){
  myZachs.remove(index);
}

void draw(){
  //fill(255,20);
  //rect(0,0,width,height);
  background(0);
  for (int i = 0; i < myZachs.size(); i++){
    Zach m = myZachs.get(i);
    m.move();
    m.display();
    //should we remove it??
    if (dist(mouseX,mouseY,m.getX(),m.getY()) < m.getSize()){
      removeObject(i);
    }
  }
  //myZach.move();
  //myZach.display();
  
  
  
}
