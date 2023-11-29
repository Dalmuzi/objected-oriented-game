class Player {
 
  float playerX = 200;
  float playerY = 400;
 
  Player() {
  }
 
  void Playership() {
    stroke(17, 241, 252);
    strokeWeight(1);
    line(playerX, playerY, playerX+20, playerY+30);
    line(playerX+10, playerY+15, playerX, playerY+30);
    line(playerX, playerY+30, playerX-10, playerY+15);
    line(playerX-20, playerY+30, playerX, playerY);
  }
 
  void display() {
    if (!Right && !Left) {
      Playership();
    }else if (Left) {
      Playership();
    } else if (Right) {
      Playership();
    }
  }
  void move() {
    
    //constraints
    playerX = constrain(playerX, 0, width);
    playerY = constrain(playerY, 0, height-20);
    
    if (Up) {
      playerY = playerY - 6;
    }
    if (Down) {
      playerY = playerY + 6;
    }
    if (Left) {
      playerX = playerX - 6;
    }
    if (Right) {
      playerX = playerX + 6;
    }
    display();
  }
}
 
