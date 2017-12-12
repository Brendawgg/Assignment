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

Radar radar1;

    void mousePressed()
    {
    
      if(mouseX < 200 && mouseX > 0 && mouseY < 55 && mouseY > 0)
      {
         fill(0, 255, 0);
         textSize(10);
         text("SPEED : 1200 ly/h ", 300, 50);
         text("FUEL : 67 %", 300, 100);
         text("OXYGEN : 85%", 300, 150);
         
      }
      
      if(mouseX < 200 && mouseX > 0 && mouseY < 110 && mouseY > 55)
      {
          HUD box4;
          box4 = new HUD(0, 310);
      }
      
      if(mouseX < 200 && mouseX > 0 && mouseY < 165 && mouseY > 110)
      {
          quad(0, 600, 200, 400, 600, 400, 800, 600);
          fill(0, 255, 0);
          quad(45, 570, 80, 540, 300, 540, 300, 570);
          quad(95, 530, 130, 500, 300, 500, 300, 530);
          quad(145, 490, 180, 460, 300, 460, 300, 490);
      }
      
      
    }

void draw()
{
  fill(200);
  
  radar1.render();
  radar1.update();
  
  drawHUD();

  Map map;
  map = new Map(499, 0);
  
  map.drawStars();
}