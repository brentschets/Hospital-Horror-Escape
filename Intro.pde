void Intro(){
  image(BG_Room[0],0,0);
  textSize(15);
  fill(255);
  textAlign(CENTER);
  text("Welcome in this old hospital. It hasn’t used in decades.",width/2, height-180);
  text("You’re the first person that walks through this hallway in years but someone wants to play a game with you.",width/2, height-160);
  text("Clues can be found in this hospital.",width/2, height-140);
  text("These clues will help you solve puzzles or help you find a way out of this spooky old building.",width/2, height-120);
  text("Now it’s all up to you; give it a try!",width/2, height-100);
  textSize(10);
  text("Press ENTER to begin.", width/2, height-80);
  if(keyPressed) {
    if(key == ENTER ||key == RETURN ){
    currentRoom = 1;
    }
  }
}