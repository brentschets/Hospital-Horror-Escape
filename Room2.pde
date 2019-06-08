void Room2(){
  image(BG_Room[2], 0, 0);
  //startSimon = false;
  puzzle1_keyInserted = false;
  
  for (int i = 0; i < 7; i++) {
    if(tool[i].isInSlot()) {
    tool[i].drawTool();
    }
  }
}

void clickDoor2(){
  if(mouseOverRect(665, 215, 705, 50) && (currentRoom == 2)) {
    currentRoom = 1;
  }
  if(mouseOverRect(327, 860, 360, 827) && (currentRoom == 2)) {
    currentRoom = 7;
  }
  if(mouseOverRect(206, 960, 498, 864) && (currentRoom == 2) && (puzzle1Unlocked)) {
    currentRoom = 3;
  }
}