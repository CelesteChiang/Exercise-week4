final int COUNT = 10 ;

void setup()
{
  size(480,480);
  colorMode(HSB);
}

void draw() {
  background(0) ;
  float spacing = width/COUNT ;
  noStroke() ;
  for (float x = 0 ; x < width ; x += spacing ) {
  float bright = 255 - abs(x-mouseX)*255/width ;
  fill(90,255,bright) ;
  rect(x,0,spacing,height) ;
  
  }
}
