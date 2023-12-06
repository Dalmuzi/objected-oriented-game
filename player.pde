class Ship {
  float x, y, vx, vy;
  
  boolean Up = false; 

  boolean Down = false;

  boolean Left = false; 

  boolean Right = false;   
  
  int speed = 7;
  
  Ship() {
    this.x = width/2;
    this.y = height - height/4;
    this.vy = 0;
    this.vx = 0;
  }
  
  void drawShip() {
    if (Up == true) {
      vy= -speed;
    } else if (Down == true) {
      vy = speed;
    } else {
      y -= vy;
      vy = 0;
    }
    
    if (Left == true) {
      vx= -speed;
    } else if (Right == true) {
      vx= speed;
    } else {
      vx=0;
    }
    
    x += vx;
    
    if (y-20>=50 && y<height) {
      y += vy;
    }
    
    
    if (x+10 < 0)
      x = width+9;
    
    if (x-10 > width) x = -9;
    
    triangle(x, y-10, x-7, y, x+7, y);
  }
}
