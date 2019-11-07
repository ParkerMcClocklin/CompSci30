//factorials

void setup() {
  noLoop();
}

void draw() {
  //println(factorial(34));
}






float factorial(float n) {
  if (n<2) return 1;
  else {
  return n*factorial(n-1);
  }
}
