class Bullet {
  float x, y, vy;
  float size;
  
  Bullet(Ship player) {
    this.x = player.x;
    this.y = player.y - 15;
    this.vy = -10;
    this.size = 10;
  }
  
  void displayBullet() {
    fill(255, 0, 0);
    ellipse(x, y, size, size);
    y+=vy;
  }
    
    
}
