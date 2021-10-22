float debugX = 5;

void debug() {
 if(keyPressed && key == 'd' && debugX == 5){
  ellipse(alienX,alienY,50,50);
  ellipse(alienX2,alienY2,50,50); 
  debugX += 5;
 }
}
