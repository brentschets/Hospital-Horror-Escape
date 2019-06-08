void GameOver()
{
  background(0);
  textAlign(CENTER);
  text("You didn't manage to escape in time. Try again. Press 'Enter' to restart;. ", width/2, height/2);
  if(keyPressed) 
  {
   currentRoom = 0; minutes = 9; secondsStart = 59; time1 = "1000"; time2 = "1000"; seconds = 0;
  }
  
}