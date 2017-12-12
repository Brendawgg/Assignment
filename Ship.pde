class Ship 
{
   int x;
   int y;
   int x2;
   int y2;
   
   Ship(int xpos, int ypos)
   {
       x = xpos;
       y = ypos;
       x2 = 760;
       y2 = 100;
   }
   
   void drawShip()
   {
     
     if (keyCode == UP)
     {
      y = y -3;
      y2 = y2 -3;
     }
     
     if (keyCode == LEFT)
     {
       x = x - 3;
       x2 = x2 - 3;
     }
     fill(0, 10, 255);
      triangle(x, y, x+10, y-50, x +30, y);
      triangle(x2, y2, x2+10, y2-20, x2-50, y2 );
   }
}