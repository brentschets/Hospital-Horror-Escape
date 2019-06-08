PImage boek;
int n = 0;
boolean animationEnded;

void doorAnimate() {
  if (mouseOverRect(665, 215, 705, 50) && (currentRoom == 11)) 
  {
  currentRoom = 5;

  }
  if(currentRoom ==11){
  frameRate(60);
  
  boek = loadImage("Boekenkamer"+n+".jpg");
  
  image(boek, 0,0);
  
    for (int i = 0; i < 7; i++) {
    if(tool[i].isInSlot()) {
    tool[i].drawTool();
    }
  }
  
  if(n != 60){
    n = n + 1;
  }
  else
  {
  animationEnded = true;
  } 
}
  }