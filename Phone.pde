class Phone 
{
  int x;
  int y;
 
  Phone (int xpos, int ypos)
  {
    x = xpos;
     y = ypos;
     fill(0);
     //quad(200, 150, 400, 50, 600, 150, 400, 550);
    
  }
  
  void drawPhone()
  {
      fill(0);
     quad(200, 400, 0, 250, 800, 250, 600, 400);
     fill(0, 255, 0);
     line(200, 400, 600, 400);
  }
}