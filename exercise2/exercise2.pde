final float SPACING = 40 ;
float upY , y , init_y;

void setup()
{
  size(480,480);
  init_y = 0;
}

void draw() {
  background(255) ;
  
    for (float x = 40 ; x < width-40 ; x += SPACING) {
    fill(0,120,255) ;
    upY = 200 + 50*sin(y) ;
    y+=0.05 ;
    rect(x,0,SPACING,upY) ;
    rect(x,upY+80,SPACING,height) ;
    }
    y = init_y;
    init_y += 0.03;
    
}
