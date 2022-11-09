PShape globe;
PImage Earth;
int r = 200;
int angle = 20;
float lat = 28.385233;
float lon = -81.563873;

Table table;

void setup(){
  size(900,900, P3D);
  Earth = loadImage("Jorden.jpg");
 table = loadTable("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=BEBJ52-NNDMDB-TGK744-4YA7","Header");
  noStroke();
  globe = createShape(SPHERE,r);
  globe.setTexture(Earth);
}
void draw(){
  background(0);
  translate(width*0.5, height*0.5);

  
  lights();
  shape(globe);
  
  for(TableRow row : table.rows()){
  float lat = row.getFloat("satlatitude");
  float lon = row.getFloat("satlongtitude");
  float alt = row.getFloat("sataltitude");
  }

float theta = radians(lat)+PI/2;
float phi = radians(lon)+PI;
float x = r * sin(theta) * cos(phi);
float y = r * sin(theta) * sin(phi);
float z = r * sin(theta);

translate(x,y,z);
box(10);
}

void keyPressed(){
  if(keyPressed){
  if(key == 'w'){
  globe.rotateX(angle += -0.2);}
  if(key == 's'){
  globe.rotateX(0.2);}
  if(key == 'a'){
  globe.rotateY(-0.2);}
  if(key == 'd'){
  globe.rotateY(0.2);}
  
  
 }
}
