float alienX = 800; // first alien starting position
float alienX2 = 1000; // second alien starting position
float alienY = height/2; // first alien stating height
float alienY2 = 400; // second alien starting position
float moveX = 5; // movement of the alien

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
