void Puzzle3() {
  image(BG_Puzzle[3], 0, 0);
}

void clickArrow2() {
  if(mouseOverRect(665, 215, 705, 50) && (currentRoom == 9)) {
    currentRoom = 6;
  }
}