class Asteroid {
 
  PVector location;
  PVector velocity;
  int radius;
  float Speed;
  float increase;
 
  Asteroid() {
    location = new PVector(random(width), random(-400, -10));
    velocity = new PVector(0.0, random(1, 4));
    radius=11;
    increase=3;
  }
 
  void display() {
    noStroke();
    fill(150);
    ellipse(location.x, location.y, 20, 20);
  }
 
  void move() {
    location.y=(location.y+velocity.y)+Speed;
    
    if (destroy()) {
      destroyed();
    }
  }
 
  void reset() {
    if (location.y>height+20) {
      location.y = random(-400, -10);
      location.x = random(0, width);
    }
  }
 
  void increaseSpeed() {
    if (score>50 && score<99) {
      Speed=increase;
    } else if (score>50 && score<99) {
      Speed=increase*2;
    } else if (score>100 && score<149) {
      Speed=increase*3;
    } else if (score>150) {
      Speed=increase*4;
    }
  }
 
  void destroyed() {
    location.y = random(-400, -10);
    location.x = random(0, width);
    score++;
  }
 
  boolean destroy() {
    for (Bullet bullets : bullet) {
      if (location.dist(bullets.location) < radius) {
        bullets.destroyed();
        return true;
      }
    }
    return false;
  }
  
  
}
