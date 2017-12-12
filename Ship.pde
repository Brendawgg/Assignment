class Ship 
{
   int x;
   int y;
   
   Ship(int xpos, int ypos)
   {
       x = xpos;
       y = ypos;
   }
   
   void drawShip()
   {
     fill(0, 10, 255);
      triangle(740, 100, 750, 80, 770, 100 ); 
   }
}