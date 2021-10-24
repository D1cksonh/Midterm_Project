// The codes here deal with the text on the screen, counter related functions, and also the reseting function

int difficulty = 10; // dificulty increase counter
float gameoverX = 1000; // gameover X position (off screen)
int liveX = 3; // player lives 
int killed = 0; // # of aliens killed 

void lives() { // lives text 
  textSize(35);
  fill(255);
  text("Lives =",10,50);
  text(liveX,150,50);
}

void defeated () { // # of aliens shot text
 textSize(35);
 fill(255);
 text("Destroyed = ",500,50);
 text(killed,730,50);
}

void gameover() { // gameover screen text
  textSize(50);
  text("Game Over!",gameoverX,200);
  text("Press r to Restart",gameoverX-56,500);
  
  if (liveX == 0){ // if the lives of the player reaches 0, the gameover screen will appear
    moveX = 0;
    gameoverX = 275;
  }
}

void reset() { // happens once the player reaches the gameover screen
  if (keyPressed && key == 'r' && liveX == 0) { // pressing r resets the game code
    gameoverX = 1000;
    liveX = 3;
    killed = 0;
    moveX = 5;
    difficulty = 10;
    alienX = 800;
    alienX2 = 1000;
    alienY = random(height);
    alienY2 = random(height);
  }
}

void left() { // the code fo the aliens reaches the end of the screen
  liveX = liveX - 1; // the lives of the player will decrease by 1
} 

void kill () { // the counter code if the alien gets shots by the laser
  killed = killed + 1; // the destroyed counter goes up
  
  if (killed == difficulty) { // if the amount of aliens killed is equal to the the variable difficulty (10)
    difficulty += 10; // increase the variable value by 10
    moveX += 2; //increase the speeed by 2 
  }
}
