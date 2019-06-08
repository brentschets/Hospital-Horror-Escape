public class Tool{
  // Members - eigenschappen
  public float x, y, w, h; 
  private final PImage img;
  
  boolean MoveObject;
  boolean inSlot = false;

  private final int [] slotX = new int[7];
  private int slotnr;
  private float previousy;
  
  // Constructor - initialiseert voorwerpen
  Tool(float xTemp, float yTemp, float widthTemp, float heightTemp, PImage imgTemp) {
  x = xTemp;
  y = yTemp;
  img = imgTemp;
  w = widthTemp;
  h = heightTemp;
  }
  
  
  // Methods - eigenschappen van een voorwerp
  public void act() {
    drawTool();
  }
  
  void drawTool() { 
    
    image(img, x, y, w, h); 
    for (int i = 0; i < 7; i++) 
    {
      slotX [i] = 450 + 70 * i;
    }
    if(inSlot)
    {
      if(currentRoom == 5 || currentRoom == 11)
      {
        y = 660;
      }
      else{
        if(!hold)
        {
        y = previousy;
        }
      }
    }

    if(MoveObject && !inSlot)
    {
      
      y = 646;
      previousy = y;
      
      
      x = 450 + 70 * slotsOccupied;
      slotnr = slotsOccupied;
      inSlot = true;
      slot[slotsOccupied] = this;
      slotsOccupied++;
    }
   
 
  }
  
  
  public boolean isInSlot() 
  {
    
    if(inSlot) 
    {
      return true;
    }
    else 
    {
      return false;
    }
  
  }
  
  
  public void clickTool() 
  {
    if(sqrt((mouseX+10-(x+w/2))*(mouseX+10-(x+w/2)) + (mouseY-(y+h/2))*(mouseY-(y+h/2))) < 33) {
      MoveObject = true;
    }
  }
  
  
  
  
boolean hold = false;
float xOffset = 0.0; 
float yOffset = 0.0; 

  public void pressTool() 
  {
    
  if (inSlot) 
  { 
    
    if(sqrt((mouseX-(x+w/2))*(mouseX-(x+w/2)) + (mouseY-(y+h/2))*(mouseY-(y+h/2))) < 33) 
    {
      
      hold = true; 
  } 
  
    else 
  {
    
    hold = false;
    
  }
    xOffset = mouseX - x; 
    yOffset = mouseY - y; 
  }
  }
  public void dragTool() 
  {
    
  if (inSlot) 
  { 
    
    if(hold == true) 
    {
      x = mouseX - xOffset; 
      y = mouseY - yOffset; 
      
    }
  }
  }
  
  public void releaseTool() 
  {
    
    if (inSlot) 
    {
      
    if(hold == true)
    {
      x = slotX[slotnr];
      y = 646;
    }
    
  }
  
  }
}