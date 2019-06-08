void Room5(){
    image(BG_Room[5], 0, 0);
    tool[6].drawTool();
    for (int i = 0; i < 7; i++) {
      if(tool[i].isInSlot()) {
      tool[i].drawTool();
    }
  }
}

void clickDoor5() {
 if(mouseOverRect(190, 715, 490, 625) && (currentRoom == 5)) {currentRoom = 11;}
 if(mouseOverRect(173, 720, 493, 626) && (animationEnded)) {currentRoom = 6;}
    if (mouseOverRect(665, 215, 705, 50) && (currentRoom == 5)) {currentRoom = 4;}

}