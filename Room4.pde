void Room4(){
  image(BG_Room[4], 0, 0);

  
  

}

void clickDoor4() {
  
   if(mouseOverRect(280, 1170, 760, 910) && (currentRoom == 4) && puzzleViewed) 
   { 
   currentRoom = 5;
   }
   
   if (mouseOverRect(665, 215, 705, 50) && (currentRoom == 4)) 
   {
   currentRoom = 3;
 }
 
}