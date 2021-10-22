float alienX = 9999; // first alien X position
float alienX2 = 9999; // second alien X position
float alienY = 0; // first alien Y position
float alienY2 = 0; // second alien Y position
float moveX = 0; // movement of the alien

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
  if (mouseY > alienY-50 && mouseY < alienY + 50 && mousePressed && alienX > 100 && alienX <= width) {
   alienX = 1000;
   alienY = random(height);
   kill();
  }
  
  if (mouseY > alienY2-50 && mouseY < alienY2 + 50 && mousePressed && alienX2 > 100 && alienX2 <= width) {
   alienX2 = 1000;
   alienY2 = random(height);
   kill();
  }
}
