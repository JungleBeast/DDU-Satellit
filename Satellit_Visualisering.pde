PShape globe;
PImage Earth;
int r = 200;
int angle = 20;

void setup(){
  size(900,900, P3D);
  Earth = loadImage("Jorden.jpg");
 
  noStroke();
  globe = createShape(SPHERE,r);
  globe.setTexture(Earth);
}
void draw(){
  background(0);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle +=0.05;
  
  lights();
  shape(globe);

  
}
