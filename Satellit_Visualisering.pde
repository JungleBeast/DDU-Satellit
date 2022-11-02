PShape globe;
PImage Earth;
int r = 200;

void setup(){
  size(900,900, P3D);
  Earth = loadImage("Jorden.jpg");
 
  noStroke();
  globe = createShape(SPHERE,r);
  globe.setTexture(Earth);
}
void draw(){
  background(0);
  lights();
  translate(450,450,0);
  shape(globe);
  
}
