//Creating phone class
class Phone 
{
  int x;
  int y;
 
 //Creating phone constructer
  Phone (int xpos, int ypos)
  {
    x = xpos;
     y = ypos;
     fill(0);
     //quad(200, 150, 400, 50, 600, 150, 400, 550);
    
  }
  
  //Drawing the phone
  void drawPhone()
  {
      fill(0);
     quad(200, 400, 0, 250, 800, 250, 600, 400);
     fill(0, 255, 0);
     line(200, 400, 600, 400);
     fill(255, 0, 0);
     stroke(255, 0, 0);
     quad(150, 330, 70, 270, 290, 270, 290, 330 );
     fill(0);
     text("REJECT", 160, 310);
     fill(0, 255, 0);
     quad(650, 330, 730, 270, 510, 270, 510, 330 );
     fill(0);
     text("ANSWER", 560, 310);
     int i;
     for (i = 170; i <630; i =i + 5 )
     {
       rect(i, 340, 20, 20);
     }
     fill(255);
    line(200, 400, 600, 400);
    img = loadImage("hello.jpg");
    image(img, 300, 50);
  }
}