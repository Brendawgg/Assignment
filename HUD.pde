class HUD 
{
  int x;
  int y;
  
  HUD (int xpos, int ypos) 
  {
    x = xpos;
    y = ypos;
    rect(xpos, ypos, 200, 55, 3, 6, 12, 18);
    
  }
}