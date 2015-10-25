class Star {
  float x = 0;
  float y = 0;
  float speedX = 10.0;
  float speedY = 10.0;
  float rgb;
  
  Star(float x, float y) {
    this.x = x;
    this.y = y;
    this.rgb = random(255);
    this.run();
  }
  
  void run() {
    this.move();
    this.display();
  }
  
  void move() {
    this.x = this.x + speedX;
    this.y = this.y + speedY;
    
    if ( (this.x > width) || (this.x < 0)) {
       speedX = speedX * -1; 
    }
    if ( (this.y > height) || (this.y < 0)) {
       speedY = speedY * -1; 
    }
    //if (this.x < 0) {
    //  speedX = speedX * -1;
    //}
  }
  
  void display() {
    float diameter = 25.0;
    noStroke();
    fill(rgb, rgb+20, rgb-20);
    ellipse(this.x,this.y, diameter, diameter); 
  }
  
}