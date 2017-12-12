//Creating Bars class
class Bars
{
  int x = 400;
  int y = 50;
  
  //Creating Bars constructor
  Bars (int xpos, int ypos) 
  {
    x = xpos;
    y = ypos;
    
  }
  
  void drawBars()
  {
          quad(0, 600, 200, 400, 600, 400, 800, 600);
          fill(0, 255, 0);
          quad(45, 570, 80, 540, 300, 540, 300, 570);
          quad(95, 530, 130, 500, 300, 500, 300, 530);
          quad(145, 490, 180, 460, 300, 460, 300, 490);
  }
}