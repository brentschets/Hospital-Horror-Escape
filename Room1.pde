void Room1(){
  image(BG_Room[1], 0, 0);
  
  tool[1].drawTool();
  tool[2].drawTool();
  
  for (int i = 0; i < 7; i++) {
    if(tool[i].isInSlot()) {
    tool[i].drawTool();
    }
  }
} 

 void clickDoor1() {
  if(mouseOverRect(270, 1320, 670, 1250) && (currentRoom ==1)) {
    currentRoom = 2;

  }
 }