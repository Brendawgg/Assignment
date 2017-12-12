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
     fill(255, 0, 0);
     stroke(255, 0, 0);
     quad(150, 330, 70, 270, 290, 270, 290, 330 );
     fill(0, 255, 0);
     quad(650, 330, 730, 270, 510, 270, 510, 330 );
  }
}