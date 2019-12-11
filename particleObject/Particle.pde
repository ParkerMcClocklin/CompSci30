class Particle{
  //class properties
  PVector position, velocity, acceleration;
  float size;
  color c;
  int lifetime;
  
  // class constructot
  Particle(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(2,-2);
    acceleration = new PVector(0,0.02);
    c = color(250,40,80);
    lifetime = 125;
    size = 20;
    
    
  }
  
  
  // class methods
  void display(){
    
    pushMatrix();
    fill(c);
    translate(position.x,position.y); 
    float currentSize = map(lifetime,125,0,size,0);
    ellipse(0, 0, currentSize,currentSize);
    popMatrix();
  }
  
  void move(){
    position.add(velocity);
    velocity.add(acceleration);
    lifetime --;
  }
  
  Boolean isAlive(){
    if(lifetime> 0) return true;
    else{
      return false;
    }
  }
}
