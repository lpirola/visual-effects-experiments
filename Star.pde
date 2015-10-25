class Star {
  float x = 0;
  float y = 0;
  float distance;
  
  Star(float x, float distance) {
    this.x = x;
    this.distance = distance;
    this.display();
  }
  
  void display() {
    //delay(10);
    float s = random(200);
    noFill();
    stroke(random(255.0), random(255.0), random(255.0));
    ellipse(this.x,this.distance, s, s); 
  }
  
}