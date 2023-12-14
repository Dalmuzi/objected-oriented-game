int frequency = 10;

Ship ship;
Star[] twinkle = new Star[100];
Asteroid[] asteroid = new Asteroid[20];
Bullet[] bullet = new Bullet[50];

int bulletindex;

boolean fire;

String s = "Use WASD to control and press SPACE to shoot.";

boolean gameOver = false;
PImage gameOverScreen;

Timer startTimer;
 
  
boolean Up = false; 

boolean Down = false;

boolean Left = false; 

boolean Right = false;   
  
int score;

void setup(){
  size (400, 400);
  frameRate(60);
  ship = new Ship();
  enemyCreate();
  startTimer = new Timer(0);
    for (int i=0; i <100; i++) {
    twinkle[i] = new Star();
  }
  gameOverScreen = loadImage("data/2d2ba26dd702a4e6.jpg");
}

void draw (){
 if(!gameOver){
     background (0, 14, 42);
    for (int i=0; i <100; i++) {
    twinkle[i].display();
  }
  Background();
  enemySpawn();
  ship.move();
  ship.shoot();
  ship.drawShip();
  ship.display();
  score();
  startTimer.countUp();
  println(s);
  text(startTimer.getTime(), 20, 20);
  fill(255);
  textSize(20);
 }else{
   image(gameOverScreen, 0, 0);
 }
}


void Background() {
  stroke(255);
  strokeWeight(.5);
  noStroke();
  fill(0);
  fill(40, 40, 70, 200-mouseY);
  ellipse(200, 600, 800, 700);
  fill(110, 110, 170);
  ellipse(200, 600, 700, 600);
  
}
 
 
 void score(){
    fill(255);
    text("Score: " +score, 30, 50);
  }
 
 
 
void enemyCreate() {
  for (int i = 0; i < asteroid.length; i++) {
    asteroid[i] = new Asteroid();
  }
}
 
 void enemySpawn() {
  for (int i = 0; i < asteroid.length; i++) {
    asteroid[i].move();
    asteroid[i].reset();
    asteroid[i].display();
    asteroid[i].increaseSpeed();
    if(ship.collision(asteroid[i])) {
      gameOver();
      score = 0;
    }
  }
}
 

void keyPressed() {
  if (key == 'w') {
    Up = true;
  } else if (key == 's') {
    Down = true;
  } else if (key =='a') {
    Left = true;
  } else if (key =='d') {
    Right = true;
  }else if (key == ' '){
    fire = true;
  }
}

void gameOver(){
  image(gameOverScreen, 0, 0);
}


void keyReleased() {
  if (key == 'w') {
    Up = false;
  } else if (key == 's') {
    Down = false;
  } else if (key =='a') {
    Left = false;
  } else if (key =='d') {
    Right = false;
  }else if (key == ' '){
    fire = false;
  }
  
}
