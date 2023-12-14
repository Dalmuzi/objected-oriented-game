class Ship {
  PVector location;
  PVector velocity;
  int radius;
  
  Ship() {
    location = new PVector(width/2, height/1.2);
    velocity = new PVector(4, 4);
    radius=12;
    for (int i = 0; i < bullet.length; i++) {
      bullet[i] = new Bullet(location.x, location.y);
    }
  }
  
  void drawShip() {
    fill(255);
    noStroke();
    fill(255);
    triangle(location.x, location.y, location.x+10, location.y+15, location.x-10, location.y+15);
  }
  
   void move() {
    if (Left==true) {
      location.x=location.x-velocity.x;
    } 
    if (Right==true) {
      location.x=location.x+velocity.x;
    } 
    if (Up==true) {
      location.y=location.y-velocity.y;
    } 
    if (Down==true) {
      location.y=location.y+velocity.y;
    }
  }
  
    void display() {
    if (location.y>height-29) {
      location.y=location.y-velocity.y;
    } else if (location.y<0) {
      location.y=location.y+velocity.y;
    }
    if (location.x>width-17) {
      location.x=location.x-velocity.x;
    } else if (location.x<17) {
      location.x=location.x+velocity.x;
    }
  }
  
  
  
  void shoot(){
     if (frameCount%15==0 && fire==true) {
      bullet[bulletindex] = new Bullet(location.x, location.y);
      bulletindex++;
      bulletindex=bulletindex%bullet.length;
    }
    for (Bullet bullets : bullet) {
      bullets.move();
      bullets.display();
    }
  
  }
    boolean collision(Asteroid d) {
    float distance = dist(location.x, location.y+14, d.location.x, d.location.y);
    if (distance < radius + d.radius) {
      return true;
    } else {
      return false;
    }
  }
  
}
