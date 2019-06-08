import ddf.minim.*;
AudioPlayer player;
Minim minim;

PFont font;
PImage Reset;
PImage Mute;
PImage unMute;
PImage [] BG_Room = new PImage[7];
PImage [] BG_Puzzle = new PImage[5];
int currentRoom = 0;
boolean hoverObject;
boolean hoverMute;
boolean puzzle1_hoverKeyhole;
boolean isMuted;
boolean hoverReset;
boolean puzzle1_keyInserted;
boolean startSimon;
boolean puzzle1Unlocked = false;   
PImage Cursor;
boolean doorOpen;

PImage BG;
int slotsOccupied;
Tool [] tool = new Tool [7];
Tool [] slot= new Tool[7];

public String time1;
public String time2;
public int minutes;
public int seconds;
public int secondsStart;
public int correction;

void setup() {
  size(1366, 768); 
  frameRate(60);
  minim = new Minim(this);
  player = minim.loadFile("Muziek.mp3", 2048);
  player.play();
  for(int i = 0; i < 7; i++) {
  BG_Room[i] = loadImage("Room" + i + ".jpg"); 
  }
    
  BG_Puzzle[1] = loadImage("Puzzle1.jpg"); 
  BG_Puzzle[2] = loadImage("Puzzle2.jpg");
  BG_Puzzle[3] = loadImage("Puzzle3.jpg");
  BG_Puzzle[4] = loadImage("Puzzle4.jpg");
  BG_Room[5] = loadImage("Boekenkamer0.jpg");


  font = createFont("Arial", 100);
  Reset = loadImage("Reset.png");
  unMute = loadImage("unMute.png");
  Mute = loadImage("Mute.png");
  Cursor = loadImage("Cursor.png");
  
  tool[0] = new Tool(560, 424, 50, 50, loadImage("Tool0.png"));    //schroevendraaier
  tool[1] = new Tool(590, 240, 40, 25, loadImage("Tool1.png"));    //sleutel
  tool[2] = new Tool(650, 460, 40, 40, loadImage("Tool2.png"));    //pillen
  tool[3] = new Tool(260, 495, 40, 40, loadImage("Tool3.png"));    //schroevendraaier
  tool[4] = new Tool(1244, 561, 50, 50, loadImage("Tool4.png"));    //mes
  tool[5] = new Tool(1244, 561, 50, 50, loadImage("Tool5.png"));   // koevoet
  tool[6] = new Tool(263, 644, 50, 40, loadImage("Tool6.png"));  // boor
  
  
  time1 = "1000";
  time2 = "1000";
  minutes = 9;
  seconds = 0;
  secondsStart = 59;
}




void draw() {
  switch (currentRoom) {
  case 0: Intro(); break;
  case 1: Room1(); break;
  case 2: Room2(); break;              
  case 3: Room3(); break;
  case 4: Room4(); break;
  case 5: Room5(); break;
  case 6: Room6(); break;
  case 7: Puzzle1(); break;
  case 8: Puzzle2(); break;
  case 9: Puzzle3(); break;
  case 10: Exit(); break;
  case 11: doorAnimate(); break;
  case 12: Puzzle4(); break;
  case 13: GameOver(); break;
  }
  timer();
  checkMute();
  cursor(Cursor);
  
}
void mouseClicked () {
  if(hoverMute) {isMuted = !isMuted;}
  if(startSimon) {checkAnswers();}
  
  for (int i = 0; i < 7; i++) 
  {
  tool[i].clickTool();
  }
  
  clickDoor1();
  clickDoor2();
  clickArrow1();
  clickDoor3();
  clickArrow3();
  clickDoor4();
  clickDoor5();
  doorAnimate();
  clickDoor6();
  clickPadlock();
  clickArrow2();
}


void mousePressed() {
  tileFeedback ();
  for (int i = 0; i < 7; i++) {
  tool[i].pressTool();
  }
}


void mouseDragged() 
{
  for (int i = 0; i < 7; i++) 
  {
  tool[i].dragTool();
  }
}


void mouseReleased() 
{
  float x1 = tool[1].x;
  float y1 = tool[1].y;
  if((sqrt((395-x1)*(395-x1) + (355 - y1)*(355 - y1)) < 100) && (currentRoom == 7)) 
  {
    
    startSimon = true;
    tool[1].x = 1400;
    
  }
  
  for (int i = 0; i < 7; i++) 
  {
    if(startSimon && i==1)
    {

   }
   else{
       tool[i].releaseTool();  
   }
  }
}


boolean mouseOverRect(int top, int right, int bottom, int left) 
{
  
  if((mouseX > left) &&  (mouseX < right) && (mouseY > top) && (mouseY < bottom)) {
    return true;
  }
  else 
  {
    return false;
  }
  
}

boolean mouseOverCirc(int x, int y, int r) 
{
  
  if(sqrt((mouseX-x)*(mouseX-x) + (mouseY-y)*(mouseY-y)) < r) 
  {
  return true;
  }
  else 
  {
  return false;
  }
  
}


void checkMute() 
{
  if(mouseOverRect(335, 77, 380, 36)) {hoverMute = true;}
  else{hoverMute = false;}
  if(isMuted) {image(Mute, 36, 335, 50, 50); player.pause();}
  else {image(unMute, 36, 335, 50, 50); player.play();}
}


void timer() {
    if(currentRoom != 0 && currentRoom != 10 && currentRoom !=13) {
      seconds = secondsStart-int(millis()/1000)+correction;
      time1 = nf(minutes , 2);
      time2 = nf(seconds , 2);
      if(seconds == 0){
        secondsStart+=59;
        minutes--;
      }
      textSize(32);
      text(time1 + ":" + time2, 50, 50);}
      
      int time = int(time1) + int(time2);
      if (time == 0) {
      
      currentRoom=13;
      }
}



 