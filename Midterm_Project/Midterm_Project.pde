PImage space;
PImage alien;
PImage ship;

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
 
 // Player
 bullet();
 ship(); 
 
 // Enemies
 enemies();
 interaction();
 
 // Game state
}
