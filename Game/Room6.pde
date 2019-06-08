void Room6(){
    image(BG_Room[6], 0, 0);
    tool[5].drawTool();
    for (int i = 0; i < 7; i++) {
    if(tool[i].isInSlot()) {
    tool[i].drawTool();
    }
  }
  
}

void clickDoor6() {
  if(mouseOverRect(275, 100, 640, 25) && (currentRoom == 6) && padUnlocked){currentRoom = 10;}
  if(mouseOverCirc(45, 465, 50) && (currentRoom == 6)){currentRoom = 8;}
  if(mouseOverCirc(1030, 180, 100) && (currentRoom ==6)) {currentRoom = 9;}
  if (mouseOverRect(665, 215, 705, 50) && (currentRoom == 6)) {currentRoom = 5;}

}