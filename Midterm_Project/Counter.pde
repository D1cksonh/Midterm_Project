int liveX = 3; // player lives
int killed = 0; // # of aliens killed
int difficulty = 10; // dificulty increase counter

void lives() {
  textSize(50);
  fill(255);
  text("Lives =",0,50);
  text(liveX,200,50);
}

void defeated () {
 textSize(50);
 fill(255);
 text(killed,width/2,height/2);
}

void left() {
  liveX = liveX - 1;
} 

void kill () {
  killed = killed + 1;
  
  if ( killed == difficulty) {
    difficulty += 10;
    moveX += 2;
  }
}

void dead() {
  if (liveX == 0){
    moveX = 0;
  }
}
