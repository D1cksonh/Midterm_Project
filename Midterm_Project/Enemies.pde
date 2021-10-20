float alienX = 800;
float alienX2 = 800;
float alienY = height/2;
float alienY2 = 400;
float moveX = 10;

void enemies() {
  noFill();
  stroke(255,0,0);
  //ellipse(alienX,alienY,50,50);
  image(alien,alienX,alienY,75,50);
  image(alien,alienX2,alienY2,75,50);
  
  alienX = alienX - moveX;
  alienX2 = alienX2 - moveX;
  
  if (alienX < 0) {
   alienX = 800;
   alienY = random(height);
  }
  
  if (alienX2 < 0) {
   alienX2 = 800;
   alienY2 = random(height);
  }
  
}

void interaction() {
  if (mouseY > alienY-50 && mouseY < alienY + 50 && mousePressed && alienX > 100) {
   resetposition(); 
  }
}

void resetposition() {
  alienX = 800;
  alienY = random(height);
}
