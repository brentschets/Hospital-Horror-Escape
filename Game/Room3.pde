void Room3(){
  image(BG_Room[3], 0, 0);
  
  tool[3].drawTool();
  
  for (int i = 0; i < 7; i++) {
    if(tool[i].isInSlot()) {
    tool[i].drawTool();
    }
  }
}

void clickDoor3() {
  if(mouseOverRect(665, 215, 705, 50) && (currentRoom == 3)) {
    currentRoom = 2;
  }
  if(mouseOverRect(140, 740, 385, 690) && (currentRoom == 3)) {
    currentRoom = 4;
  }
  if(mouseOverRect(180, 875, 300, 830) && (currentRoom == 3)) {
    currentRoom = 12;
  }
  
}