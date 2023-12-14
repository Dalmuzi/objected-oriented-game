class Star {  
  PVector star=new PVector(0,0);
 
Star() {
  star.x=random(width);
  star.y=random(height-50);
}
  
void display(){
 beginShape();
 fill(255,255,255,random(100,200));
 noStroke();
 ellipse(star.x,star.y, 2, 2);
 
 endShape(CLOSE);
}
 
}
