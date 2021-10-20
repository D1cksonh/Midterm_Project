float alienX = 800;
float alienX2 = 1000;
float alienY = height/2;
float alienY2 = 400;
float moveX = 5;

void enemies() {
  noFill();
  stroke(255,0,0);
  image(alien,alienX,alienY,75,50);
  image(alien,alienX2,alienY2,75,50);
  
  alienX = alienX - moveX;
  alienX2 = alienX2 - moveX;
  
  if (alienX < 0) {
   alienX = 800;
   alienY = random(height);
   left();
  }
  
  if (alienX2 < 0) {
   alienX2 = 800;
   alienY2 = random(height);
   left();
  }
  
}

void interaction() {
  if (mouseY > alienY-50 && mouseY < alienY + 50 && mousePressed && alienX > 100) {
   alienX = 1000;
   alienY = random(height);
   kill();
  }
  
  if (mouseY > alienY2-50 && mouseY < alienY2 + 50 && mousePressed && alienX2 > 100) {
   alienX2 = 1000;
   alienY2 = random(height);
   kill();
  }
}
