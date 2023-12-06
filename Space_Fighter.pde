int frequency = 10;

Ship player;

ArrayList<Star> stars = new ArrayList<Star>();

ArrayList<Bullet> bullets = new ArrayList<Bullet>();

ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
int asteroidFrequency = 60;


int score;

void setup(){
  size (400, 400);
  frameRate(60);
  player = new Ship();
  score = 0;

}

void draw (){
  background (0, 14, 42);
  Background();
  displayStar();
  player.drawShip();
  displayBullet();
  displayAsteroid();
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
 
 
 void collision() {
  for (int i = 0; i < asteroids.size(); i++) {
    Asteroid a = asteroids.get(i);
    if (a.collision(player) == true) {
    }
    for (int b = 0; b < bullets.size(); b++) {
      Bullet bullet = bullets.get(b);
      if (a.collision(bullet) == true) {

        asteroids.remove(a);
        bullets.remove(bullet);
        i--;
        b--;
      }
    }
  }
}
 
 
 
void displayAsteroid() {
  if (frameCount % asteroidFrequency == 0) {
    asteroids.add(new Asteroid(random(150, 250)));
  }
  for (int i = 0; i<asteroids.size(); i++) {
    Asteroid currentAsteroid = asteroids.get(i);
    currentAsteroid.displayAsteroid();
    if (currentAsteroid.y > height + currentAsteroid.size) {
      asteroids.remove(currentAsteroid);
      i--;
    }
  }
}

 
 
 
 void displayBullet() {
  for (int i = 0; i<bullets.size(); i++) {
    bullets.get(i).displayBullet();
  }
}
 
 
 
 void displayStar() {
  strokeWeight(8);
  stroke(17, 241, 252);
  if (frameCount % frequency == 0) {
    Star myStar = new Star();
    stars.add(myStar);
  }
  for (int i = 0; i<stars.size(); i++) {
    Star currentStar = stars.get(i);
    currentStar.displayStar();
  }
}
 
 

void keyPressed() {
  if (key == 'w') {
    player.Up = true;
  } else if (key == 's') {
    player.Down = true;
  } else if (key =='a') {
    player.Left = true;
  } else if (key =='d') {
    player.Right = true;
  }else if (key == ' '){
    Bullet b = new Bullet(player);
    bullets.add(b);
  }
}




void keyReleased() {
  if (key == 'w') {
    player.Up = false;
  } else if (key == 's') {
    player.Down = false;
  } else if (key =='a') {
    player.Left = false;
  } else if (key =='d') {
    player.Right = false;
  }
  
}
