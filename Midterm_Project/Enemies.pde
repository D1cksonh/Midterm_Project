PImage alien;
float alienX = 800;
float alienY = height/2;
float moveX = 10;

void enemies() {
  alien = loadImage("Enemy.png");
  stroke(1);
  fill(0,255,0);
  ellipse(alienX,alienY,50,50);
  image(alien,alienX,alienY,75,50);
  
  alienX = alienX - moveX;
  
  if (alienX < 0) {
   resetposition();
  }
}

void interaction() {
}

void resetposition() {
  alienX = 800;
  alienY = random(height);
}
