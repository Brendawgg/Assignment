void setup()
{
  HUD box1;
  HUD box2;
  HUD box3;
  
  size(800, 600);
  background(100);
  box1 = new HUD(0, 0);
  box2 = new HUD(0, 55);
  box3 = new HUD(0, 110);
  
  radar1 = new Radar(width / 2, height / 2, 100, 0.5, color(0, 255, 0));
}

int x;
int y;

Radar radar1;

    void mousePressed()
    {
    
      if(mouseX < 200 && mouseX > 0 && mouseY < 55 && mouseY > 0)
      {
         text("SPEED : 1200 ly/h ", 600, 475);
         text("FUEL : 67 %", 600, 525);
         text("OXYGEN : 85%", 600, 575);
         
      }
      
      if(mouseX < 200 && mouseX > 0 && mouseY < 110 && mouseY > 55)
      {
          
      }
    }

void draw()
{
  fill(200);
  
  radar1.render();
  radar1.update();
  
  drawHUD();

  Map map;
  map = new Map(599, 0);
  
  map.drawStars();
}