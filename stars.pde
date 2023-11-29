class Star {  
  PVector smallStar=new PVector(0,0);
 
Star() {
  smallStar.x=random(width);
  smallStar.y=random(height-50);
}
  
void display(){
    beginShape();
 fill(255,255,255,random(100,200));
 noStroke();
 ellipse(smallStar.x,smallStar.y, 2, 2);
 
 endShape(CLOSE);
}
 
}
