class Asteroid {
  float xposition;
  float yposition;
  float velocity;
  
  float size; 
  float rotate = 100;
  int direction;
  
  Asteroid(float speed){
    xposition = random(width);
    yposition = random(-500, 0);
    velocity = speed;
    size = random(10, 50);
    
    direction = 10;
    
  }
  
  void collision(){
    
  }
  
}
