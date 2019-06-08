import java.util.Arrays;
  int [] numbersX  = {535, 540, 542, 545};
  int [] numbersY = {585, 630, 675, 710};
  int [] arrowsLeftX = {470, 483, 499, 508};
  int [] arrowsLeftY = {447, 485, 533, 575};
  int [] arrowsRightX = {846, 859, 881, 897};
  int [] arrowsRightY = {339, 384, 426, 463};
  int [] numberActive = {0, 0, 0, 0};
  int [] code = {4, 7, 6, 5};
  boolean padUnlocked = false;
void Puzzle2() { 
  image(BG_Puzzle[2], 0, 0);

  drawPadlock();
  checkCode();
  
}

void clickPadlock() {
  for (int i = 0; i < 4; i++) {
    if(mouseOverCirc(arrowsLeftX[i], arrowsLeftY[i], 20)) {
    numberActive[i]--;
      if(numberActive[i] < 0) {
      numberActive[i] = 9;
      }  
    }
  
    if(mouseOverCirc(arrowsRightX[i], arrowsRightY[i], 20)) {
      numberActive[i]++;
      if(numberActive[i] > 9) {
      numberActive[i] = 0;
      }
    }
  }
  if(mouseOverRect(665, 215, 705, 50) && (currentRoom == 8)){currentRoom = 6;}
  
}

void drawPadlock() {
  fill(0);
  textAlign(CENTER);
  rotate(-.3);
  for (int i = 0; i < 4; i++) {
  text(str(numberActive[i]), numbersX[i], numbersY[i]);
  }
  rotate(.3);
}

void checkCode() {
  if (java.util.Arrays.equals(numberActive,code)) {
    padUnlocked = true; 
    }
  else {
    padUnlocked = false;
  }
}