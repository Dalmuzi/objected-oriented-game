boolean Up = false; 
boolean Down = false;
boolean Left = false; 
boolean Right = false; 
Player player = new Player();
Star[] twinkle = new Star[100];

int score = 0; 

void setup(){
  size (400, 400);
  frameRate(60);
    for (int i=0; i <100; i++) {
    twinkle[i] = new Star();
  }
}

void draw (){
  background (0, 14, 42);
  Background();
  for (int i=0; i <100; i++) {
    twinkle[i].display();
  }
  player.move();
}

void Background() {
  stroke(255);
  strokeWeight(.5);
  noStroke();
  fill(0);
}
 

void keyPressed() {
  if (key == 'w') {
    Up = true;
  } else if (key == 's') {
    Down = true;
  } else if (key =='a') {
    Left=true;
  } else if (key =='d') {
    Right = true;
  }
}
void keyReleased() {
  if (key == 'w') {
    Up = false;
  } else if (key == 's') {
    Down = false;
  } else if (key =='a') {
    Left=false;
  } else if (key =='d') {
    Right = false;
  }
  
}
