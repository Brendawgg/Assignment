class HUD 
{
  int x;
  int y;
  
  HUD (int xpos, int ypos) 
  {
    x = xpos;
    y = ypos;
    rect(xpos, ypos, 200, 50, 12, 12, 12, 12);
    
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
   text("RADAR", 60, 35);
   text("STATUS", 60, 90);
   text("PHONE", 65, 140);
}