class Map
{
  int x = 400;
  int y = 50;
  
  Map (int xpos, int ypos) 
  {
    x = xpos;
    y = ypos;
    rect(xpos, ypos, 200, 200, 3, 6, 12, 18);
    
  }
  
  void drawStars()
  {
     fill(255);
     noStroke();
     ellipse(random(599, 800), random(0, 200), 2, 2);
  }
}