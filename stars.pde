class Star {  
  float x, y;
  int vy;
  
  Star() {
    this.x = random(width);
    this.y = 0;
    this.vy = 8;
  }
  
  void displayStar() {
    y+=vy;
    point(x,y);
    
  }
 
}
