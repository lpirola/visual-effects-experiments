class Star {
  float x = 0;
  float y = 0;
  float speedX = 5.0;
  float speedY = 3.0;
  float r;
  float g;
  float b;
  
  Star(float x, float y) {
    this.x = x;
    this.y = y;
    this.r = random(255);
    this.b = random(255);
    this.g = random(255);
    this.run();
  }
  
  void run() {
    this.display();
    //this.move();
    //this.bounce();
    //this.gravity();
  }
  
  void gravity() {
    this.speedY = this.speedY + 0.2;
  }
  
  void bounce() {
    if ( (this.x > width) || (this.x < 0)) {
       this.speedX = this.speedX * -1; 
    }
    if ( (this.y > height) || (this.y < 0)) {
       this.speedY = this.speedY * -1; 
    } 
  }
  
  void move() {
    this.x = this.x + this.speedX;
    this.y = this.y + this.speedY;
  }
  
  void display() {
    float diameter = random(50.0);
    noStroke();
    fill(this.r, this.g, this.b);
    ellipse(this.x,this.y, diameter, diameter); 
  }
  
}