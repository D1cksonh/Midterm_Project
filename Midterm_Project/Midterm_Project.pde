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
 
 //startup();
 
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

void startup () {
 text("Alien Shooter",275,200);
}
