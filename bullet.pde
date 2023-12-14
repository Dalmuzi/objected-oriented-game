class Bullet {
 
  PVector location;
  PVector velocity;
  int radius;
  Bullet(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(0.0, 5);
    radius=4;
  }
 
  void display() {
    fill(200, 0, 0);
    ellipse(location.x, location.y, 8, 8);
    if (location.y < -10) {
      location.y=height;
      location.x=0-width;
      velocity.y=0;
    }
  }
 
  void move() {
    location.sub(velocity);
  }
 
  void destroyed() {
    velocity.y=0;
    location.y=height+100;
  }
}
