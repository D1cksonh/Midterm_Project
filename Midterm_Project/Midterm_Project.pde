PImage space;
PImage alien;
PImage ship;
float titleY = 200;
float beginX = 1;

void setup() {
  space = loadImage("background.png");
  alien = loadImage("Enemy.png");
  ship = loadImage("ship.png");
  frameRate(60);
  size(800,800,P2D);
}

void draw () {
 background(175);
 image(space,width/2,height/2,width,height);
 
 startProgram();
 
 // Player
 bullet();
 ship(); 
 
 // Enemies
 enemies();
 interaction();
 
 // Interaction with player and enemies
 lives();
 defeated();
 dead();
 gameover();
 reset();
}

void startProgram () {
  textSize(50);
  text("Alien Shooter",250,titleY);
  text("Press Space to Begin",160,titleY+300);
  
  if (keyPressed && key == ' ' && beginX == 1) {
   beginX +=2;
   titleY = 9999;
   alienX = 800; // first alien X position
   alienX2 = 1000; // second alien X position
   alienY = random(height); // first alien Y position
   alienY2 = random(height); // second alien Y position
   moveX = 5; // movement of the alien
  }
}
