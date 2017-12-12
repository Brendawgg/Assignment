/* Brendan O'Dowd - C16476404
   OOP - Assignment 1
*/

void setup()
{
  HUD box1;
  HUD box2;
  HUD box3;
  HUD box4;
  
  size(800, 600);
  background(10, 0, 35);
  box1 = new HUD(0, 2);
  box2 = new HUD(0, 55);
  box3 = new HUD(0, 110);
  
  radar1 = new Radar(width / 2, height * .8, 70, 0.1, color(0, 255, 0));
}

int x;
int y;
int rad = 0;
int pon = 0;

PImage img;

Radar radar1;

void makePhone()
{
   Phone phone;
   phone = new Phone(400, 300);
   phone.drawPhone(); 
   fill(255);
   line(200, 400, 600, 400);
   img = loadImage("hello.jpg");
   image(img, 300, 50);
}

void makeMap()
{
  Map map;
  map = new Map(599, 0);
  map.drawStars();
}

void makeRadar()
{
  radar1.render();
  radar1.update();
}

void makeShip()
{
  Ship ship;
  ship = new Ship(750, 100);
  ship.drawShip();
}

void draw()
{
  fill(200);
  
  drawHUD();
  
  makeMap();
  
  makeShip();
  
  if (rad == 1)
  {
    makeRadar();
  }
 
  
  
  /*if (mousePressed)
  {
    fill(255);
    line(400, 400, mouseX, mouseY);
  }*/
}

void mousePressed()
    {
      if(mouseX < 200 && mouseX > 0 && mouseY < 55 && mouseY > 0)
      {
          fill(0);
          quad(0, 600, 200, 400, 600, 400, 800, 600);
          fill(0, 255, 0);
          quad(45, 570, 80, 540, 300, 540, 300, 570);
          quad(95, 530, 130, 500, 300, 500, 300, 530);
          quad(145, 490, 180, 460, 300, 460, 300, 490);
          makeRadar();
          rad = 1;
      }
      
      if(mouseX < 200 && mouseX > 0 && mouseY < 110 && mouseY > 55)
      {
         fill(0, 255, 0);
         textSize(15);
         text("SPEED : 1200 ly/h ", 500, 480);
         text("FUEL : 67 %", 500, 515);
         text("OXYGEN : 85%", 500, 550);
         pon = 0;
      }
      
       if(mouseX < 200 && mouseX > 0 && mouseY < 165 && mouseY > 110)
      {
         makePhone();
         pon = 1;
         

       }
      
      
    }