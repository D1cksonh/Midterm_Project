//This is the main player's controls

void ship () { // ship controls
 imageMode(CENTER);
 image(ship,120,mouseY,150,75);
}

void bullet() { // bullet controls
 if (mousePressed) {
  noStroke();
  fill(0,0,255);
  rect(130,mouseY,width,5);
 }
}
