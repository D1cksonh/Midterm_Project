void ship () {
 imageMode(CENTER);
 image(ship,120,mouseY,150,75);
}

void bullet() {
 if (mousePressed) {
  noStroke();
  fill(0,0,255);
  rect(130,mouseY,width,5);
 }
}
