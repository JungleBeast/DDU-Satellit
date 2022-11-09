PShape globe;
PImage Earth;
int r = 200;
float angle = 20;
float lat = 28.385233;
float lon = -81.563873;

JSONObject table;

void setup(){
  size(900,900, P3D);
  Earth = loadImage("Jorden.jpg");
 table = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=BEBJ52-NNDMDB-TGK744-4YA7");
  noStroke();
  globe = createShape(SPHERE,r);
  globe.setTexture(Earth);
}
void draw(){
  background(0);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.005;
  
  lights();
  shape(globe);
  JSONObject station = table.getJSONObject("SPACE STATION");
  JSONArray a = table.getJSONArray("positions");
  JSONObject pos0 = a.getJSONObject(0);
  float lat = pos0.getFloat("satlatitude");
  float lon = pos0.getFloat("satlongitude");
  float alt = pos0.getFloat("sataltitude");

 // println(lat,lon,alt);

float theta = radians(lat)+PI/2;
float phi = radians(lon)+PI;
float x = r * sin(theta) * cos(phi);
float y = r * sin(theta) * sin(phi);
float z = r * sin(theta);


pushMatrix();

translate(lon,lat,alt/2);
box(10);
popMatrix();
}
