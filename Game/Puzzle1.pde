// SIMON SAYS //
int  nullX = 523;
int  nullY = 238;
int [] x = {nullX, nullX + 110, nullX + 220, nullX, nullX + 110, nullX + 220, nullX, nullX + 110, nullX + 220};
int [] y = {nullY, nullY, nullY, nullY + 110, nullY + 110, nullY + 110, nullY + 220, nullY + 220, nullY + 220};
int answersRight;
float t;
int hover = 10;
int a = int(random(0,9));
int b = int(random(0,9));
int c = int(random(0,9));
int d = int(random(0,9));
int e = int(random(0,9));
int f = int(random(0,9));
int g = int(random(0,9));
int h = int(random(0,9));

void Puzzle1(){
  image(BG_Puzzle[1], 0, 0);
  
  for (int i = 0; i < 7; i++) {
    if(tool[i].isInSlot()) {
    tool[i].drawTool();
    }
  }
  
  if(startSimon) 
  {
  startSimon();
  }
}

void clickArrow1() {
  if(mouseOverRect(665, 1320, 705, 680) && (currentRoom == 7)) {
  currentRoom = 2;
}
}
void startSimon() {
   noStroke();
  
  // VIERKANTEN //
  fill(100, 100, 100, 0);
  for (int i = 0; i < 9; i++ ) {
  rect(x[i], y[i], 100, 100);
  }
  
 
  //---------------------------------- ANIMATIE //
  t++;
  
  //-----------------------------------Level 1
  if(t<30) {  
  fill(255, 123, 123, 175);
  ellipse(824, 205, 20, 20);
  }
  fill(255, 255, 255, 0);
  
 
  if((30<t) && (t<80)) {markTile(); rect(x[a], y[a], 100, 100);}
  if((100<t) && (t<150)) {markTile(); rect(x[b], y[b], 100, 100);}
  
  if ((t > 500) && (answersRight == 0)) {t = 0;}
  
  // ----------------------------------Level 2
  if((1000<t) && (t<1030)) {
  fill(255, 255, 255, 75);
  ellipse(782, 205, 20, 20);   
  }
  fill(255, 255, 255, 0);
  
  if((1000<t) && (t<1050)) {markTile(); rect(x[c], y[c], 100, 100);}
  if((1070<t) && (t<1120)) {markTile(); rect(x[d], y[d], 100, 100);}
  if((1140<t) && (t<1190)) {markTile(); rect(x[e], y[e], 100, 100);}
  
  if ((t > 2499) && answersRight == 2) {t = 1000;}
  
  // ----------------------------------Level 3
  if((2500<t) && (t<2530)) {
  fill(255, 255, 255, 75);
  ellipse(782, 205, 20, 20);   
  }
  fill(255, 255, 255, 0);
  
  if((2500<t) && (t<2550)) {markTile(); rect(x[f], y[f], 100, 100);}  
  if((2570<t) && (t<2620)) {markTile(); rect(x[g], y[g], 100, 100);}
  if((2640<t) && (t<2690)) {markTile(); rect(x[h], y[h], 100, 100);}
  if((2710<t) && (t<2760)) {markTile(); rect(x[b], y[b], 100, 100);}
  
  if ((t > 3999) && answersRight == 5) {t = 2500;}
    // --------------------------------Level 4
  if((4000<t) && (t<4030)) {
  fill(255, 255, 255, 75);
  ellipse(782, 205, 20, 20);   
  }
  fill(255, 255, 255, 0);
  
  if((4000<t) && (t<4050)) {markTile(); rect(x[h], y[h], 100, 100);} 
  if((4070<t) && (t<4120)) {markTile(); rect(x[a], y[a], 100, 100);}
  if((4140<t) && (t<4190)) {markTile(); rect(x[e], y[e], 100, 100);}
  if((4210<t) && (t<4260)) {markTile(); rect(x[c], y[c], 100, 100);}
  if((4280<t) && (t<4330)) {markTile(); rect(x[d], y[d], 100, 100);}

  if ((t > 6000) && answersRight == 9) {t = 4000;}
  
  if(puzzle1Unlocked == true) {
    fill(255, 255, 255, 75);
    ellipse(782, 205, 20, 20);   
  }
  
  // HOVER OVER RECHTHOEKEN //  
   
  if ((x[0] < mouseX) && (mouseX < x[0] + 100) && (y[0] < mouseY) && (mouseY < y[0] + 100) ) {hover = 0;}  
  else if ((x[1] < mouseX) && (mouseX < x[1] + 100) && (y[1] < mouseY) && (mouseY < y[1] + 100) ) {hover = 1;} 
  else if ((x[2] < mouseX) && (mouseX < x[2] + 100) && (y[2] < mouseY) && (mouseY < y[2] + 100) ) {hover = 2;}
  else if ((x[3] < mouseX) && (mouseX < x[3] + 100) && (y[3] < mouseY) && (mouseY < y[3] + 100) ) {hover = 3;}
  else if ((x[4] < mouseX) && (mouseX < x[4] + 100) && (y[4] < mouseY) && (mouseY < y[4] + 100) ) {hover = 4;}
  else if ((x[5] < mouseX) && (mouseX < x[5] + 100) && (y[5] < mouseY) && (mouseY < y[5] + 100) ) {hover = 5;}
  else if ((x[6] < mouseX) && (mouseX < x[6] + 100) && (y[6] < mouseY) && (mouseY < y[6] + 100) ) {hover = 6;} 
  else if ((x[7] < mouseX) && (mouseX < x[7] + 100) && (y[7] < mouseY) && (mouseY < y[7] + 100) ) {hover = 7;} 
  else if ((x[8] < mouseX) && (mouseX < x[8] + 100) && (y[8] < mouseY) && (mouseY < y[8] + 100) ) {hover = 8;}
  else {hover = 10;}
  
}

void markTile() {
  fill(255, 255, 255, 150);
}
void tileFeedback () {
    fill(255, 255, 255, 150);
    if (hover  < 10 ) {
    rect(x[hover], y[hover], 100, 100);  
    }
}
void checkAnswers() {
  switch (answersRight) {
  case 0: if(hover == a){answersRight = 1;}
          else {reset();} break;        
  case 1: if(hover == b){answersRight = 2; t = 1000;}
          else {reset();} break;
  case 2: if(hover == c){answersRight = 3;}
          else {reset();} break;
  case 3: if(hover == d){answersRight = 4;}
          else {reset();} break;
  case 4: if(hover == e){answersRight = 5; t = 2500;}
          else {reset();} break;
  case 5: if(hover == f){answersRight = 6;}
          else {reset();} break;
  case 6: if(hover == g){answersRight = 7;}
          else {reset();} break;
  case 7: if(hover == h){answersRight = 8;}
          else {reset();} break;
  case 8: if(hover == b){answersRight = 9; t = 4000;}
          else {reset();} break;
  case 9: if(hover == h){answersRight = 10;}
          else {reset();} break;
  case 10: if(hover == a){answersRight = 11;}
          else {reset();} break;
  case 11: if(hover == e){answersRight = 12;}
          else {reset();} break;
  case 12: if(hover == c){answersRight = 13;}
          else {reset();} break;
  case 13: if(hover == d){answersRight = 14; puzzle1Unlocked = true;}
          else {reset();} break;

  }
}
void reset() {
  answersRight = 0 ;
  t = 0;
}