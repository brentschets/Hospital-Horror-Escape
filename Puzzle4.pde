void Puzzle4() {
  image(BG_Puzzle[4], 0, 0);

}
boolean puzzleViewed;
void clickArrow3() {
  if(mouseOverRect(665, 215, 705, 50) && (currentRoom == 12)) {
    currentRoom = 3;
    puzzleViewed = true;
  }
}