int liveX = 3; // player lives // move in enemies class
int killed = 0; // # of aliens killed < move into enemies class
int difficulty = 10; // dificulty increase counter
float gameoverX = 1000;

void lives() {
  textSize(35);
  fill(255);
  text("Lives =",10,50);
  text(liveX,150,50);
}

void defeated () {
 textSize(35);
 fill(255);
 text("Destroyed = ",500,50);
 text(killed,730,50);
}

void gameover() {
  textSize(50);
  text("Game Over!",gameoverX,200);
  text("Press r to restart",gameoverX-56,500);
}


void left() { // move into enemies class
  liveX = liveX - 1;
} 

void kill () { // move into enemies class
  killed = killed + 1;
  
  if ( killed == difficulty) {
    difficulty += 10;
    moveX += 2;
  }
}

void dead() {
  if (liveX == 0){
    moveX = 0;
    gameoverX = 275;
  }
}

void reset() {
  if(keyPressed && key == 'r' && liveX == 0) {
    gameoverX = 1000;
    liveX = 3;
    killed = 0;
    moveX = 5;
    alienX = 800;
    alienX2 = 1000;
    alienY = random(height);
    alienY2 = random(height);
  }
}
