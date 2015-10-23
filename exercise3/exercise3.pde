final float SPACING = 40 ;
final int GAME_RUN = 1 , GAME_OVER=2 ;
float upY , y , init_y;
int gameState , r ;
PImage restart ;

void setup()
{
  size(480,480);
  init_y = 0;
  restart= loadImage("img/restart.png") ;
  gameState = GAME_RUN ;
  r = 10 ;
}

void draw() {
  background(255) ;
  
  switch(gameState){

    case GAME_RUN :
    for (float x = 40 ; x < width-40 ; x += SPACING) {
    fill(0,120,255) ;
    upY = 200 + 50*sin(y) ;
    y+=0.05 ;
    stroke(0) ;
    strokeWeight(1) ;
    rect(x,0,SPACING,upY) ;
    rect(x,upY+80,SPACING,height) ;
    }
    y = init_y;
    init_y += 0.03;
    
    fill(0,250,200);
    noStroke();
    ellipse(mouseX,mouseY,2*r,2*r) ;
    
    if ( mouseX >= 40 && mouseX <= 440 ){
      if( mouseY <= upY+r || mouseY >= upY+80-r) {
      gameState = GAME_OVER ;
      }}else if (mouseX >= 40-r && mouseX <= 440+r){
              if (mouseY <= upY+r || mouseY >= upY+80-r){gameState=GAME_OVER;}
              }
    break ;
    
    case GAME_OVER :
    image(restart,0,0) ;
    if(mousePressed){
        gameState = GAME_RUN ;
    }
    break ;
}
}
