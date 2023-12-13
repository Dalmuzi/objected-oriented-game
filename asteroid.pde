class Asteroid{
  float size, x, y; 
  int vy = 5; 
  
  Asteroid(float size){
      this.size = size;
    this.x = random(width);
    this.y = -size;
  }
  
  void displayAsteroid(){
    fill(61);
    stroke(61);
    ellipse(x, y, 20, 20);
    y+=vy;
  }
  
boolean collision(Object other) {
    if (other instanceof Ship) {
      Ship player = (Ship) other;
      float apothem = 10 * tan(60);
      float distance = dist(x, y, player.x, player.y-apothem);
      if (distance < size/2 + apothem + 10) {
        fill(255, 0, 0, 100);
        rect(0, 0, width, height);
        fill(255);
        
        return true;
      }
    } else if (other instanceof Bullet) {
      Bullet bullet = (Bullet) other;
      float distance = dist(x, y, bullet.x, bullet.y); 
      println(distance);
      if (distance <= size/2 + bullet.size/2 ) {
        fill(0, 255, 0, 100);
        rect(0, 0, width, height);
        fill(255);
        
        return true;
      }
    }
    return false;
    
  }
  
}
