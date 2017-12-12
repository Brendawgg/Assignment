class HUD 
{
  int x;
  int y;
  
  HUD (int xpos, int ypos) 
  {
    x = xpos;
    y = ypos;
    rect(xpos, ypos, 200, 50, 3, 6, 12, 18);
    
  }
}

void drawHUD()
{
  HUD box1;
  HUD box2;
  HUD box3;
  
  box1 = new HUD(0, 0);
  box2 = new HUD(0, 55);
  box3 = new HUD(0, 110);
  
   textSize(20);
   fill(0);
   text("STATUS", 65, 35);
   text("MAP", 75, 90);
   text("RADAR", 60, 140);
}