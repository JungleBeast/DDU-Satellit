PShape globe;
PImage Earth;
int r = 200;
int angle = 20;
float lat = 28.385233;
float lon = -81.563873;

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

float theta = radians(lat)+PI/2;
float phi = radians(lon)+PI;
float x = r * sin(theta) * cos(phi);
float y = r * sin(theta) * sin(phi);
float z = r * sin(theta);

translate(x,y,z);
sphere(10);
}
