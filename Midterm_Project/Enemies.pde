//The code here is for the alien controls moving across the screen and the interaction with the player and the alien ship

float alienX = 9999; // first alien X position (off screen)
float alienX2 = 9999; // second alien X position (off screen)
float alienY = 0; // first alien Y position (off screen)
float alienY2 = 0; // second alien Y position (off screen)
float moveX = 0; // movement of the alien

void enemies() { // alien information
  noFill();
  stroke(255,0,0);
  image(alien,alienX,alienY,75,50);
  image(alien,alienX2,alienY2,75,50);
  
  alienX = alienX - moveX; // movement code for the alien ship
  alienX2 = alienX2 - moveX;
  
  if (alienX < 0) { // code for aliens once they reach the edge of the screen
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

void interaction() { // the interaction of the player laser and the aliens
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
