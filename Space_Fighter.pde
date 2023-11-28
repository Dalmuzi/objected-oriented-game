boolean Up = false; 
boolean Down = false;
boolean Left = false; 
boolean Right = false; 

float shipX = (200);
float shipY = (450);
float shipSpeed = 1; 

void setup(){
  size (400, 400);
  frameRate(60);
  noCursor();
}

void draw (){
  background (0, 14, 32);
  Stars();
  player();
}

void player(){
  fill (230); 
  stroke(158);
  strokeWeight(1);
  triangle(shipX, shipY-15, shipX-6, shipY, shipX+6, shipY);
  fill(1);
  triangle(shipX, shipY+8, shipX-6, shipY, shipX+6, shipY);
  fill(221);
  stroke(79);
  strokeWeight(1);
  triangle(shipX, shipY-8, shipX-5, shipY+5, shipX+5, shipY+5);
  fill(80);
  triangle(shipX, shipY+15, shipX-5, shipY+5, shipX+5, shipY+5);
  noStroke();
  fill(230);
  triangle(shipX, shipY+6, shipX-2, shipY+10, shipX+2, shipY+10);
  fill(160);
  stroke(60);
  triangle(shipX-18, shipY+30, shipX-5, shipY+12, shipX-1, shipY+14);
  triangle(shipX+18, shipY+30, shipX+1, shipY+14, shipX+5, shipY+12);
  fill(240);
  triangle(shipX-25, shipY+25, shipX-5, shipY+6, shipX-1, shipY+9);
  triangle(shipX+25, shipY+25, shipX+1, shipY+9, shipX+5, shipY+6);
  noStroke();
  fill(240);
  noStroke();
  rect(shipX, shipY + 9, 9, 4);
  stroke(40);
  fill(60);
  rect(shipX, shipY+ 18 , 8, 3);
}

void Movement() {
  if (Up ==false) {
    shipY = shipY+0;
  } else shipY = shipY-5; 
  if (Down ==false) {
    shipY = shipY+0;
  } else shipY = shipY+5; 
  if (Left ==false) {
    shipX = shipX+0;
  } else shipX = shipX-5;
  if (Right ==false) {
    shipX = shipX+0;
  } else shipX = shipX+5;

  if (shipY < 20) {
    shipY = 20;
  }
  if (shipY > 360) {
    shipY = 360;
  }
  if (shipX > 370 ) {
    shipX = 370;
  }
  if (shipX <30) {
    shipX = 30;
  }
}

void Stars()
{
  byte starCount = 0;
  for (int x = 0; x < (width/40 + 1); ++x)
  {
    for (int y = 0; y < (height/40 + 2); ++y)
    {
      fill(random(100, 170));
 
      //check offset
      if (starCount == 1)
      {
        ellipse(48*x - 10*y, 42*y + 3*x, 3, 3);
        ++starCount;
      } else if (starCount == 4)
      {
        ellipse(32*x - 10*y, 39*y + 3*x, 3, 3);
        starCount = 0;
      } else
      {
        ellipse(45*x - 10*y, 40*y + 3*x, 3, 3);
        ++starCount;
      }
    }
  }
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
//check if key released
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
