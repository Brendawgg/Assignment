/* Brendan O'Dowd - C16476404
   OOP - Assignment 1
*/ 
         // creating objects for sound files
          import processing.sound.*;
          SoundFile ring ;
          SoundFile beep ;
          SoundFile bleep ;
          SoundFile hangup ;
          SoundFile answer ;
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

//initialising gobal variables
int x;
int y;
int rad = 0;
int pon = 0;


PImage img;

Radar radar1;

//Main Displying Functions

//creating the phone object
void makePhone()
{
   Phone phone;
   phone = new Phone(400, 300);
   phone.drawPhone(); 
}

//creating map 
void makeMap()
{
  Map map;
  map = new Map(599, 0);
  map.drawStars();
}

//creating radar
void makeRadar()
{
  radar1.render();
  radar1.update();
}

//creating ship
void makeShip()
{
  Ship ship;
  ship = new Ship(750, 100);
  ship.drawShip();
}

void draw()
{
  fill(200);
  
  //calling all objects
  drawHUD();
  makeMap();
  makeShip();
  makeRadar();
 
  
  
  /*if (mousePressed)
  {
    fill(255);
    line(400, 400, mouseX, mouseY);
  }*/
}

//checking mousepressed for user input
void mousePressed()
    {
      //checking if someone wants the RADAR button
      if(mouseX < 200 && mouseX > 0 && mouseY < 55 && mouseY > 0)
      {
          rad = 1;
          fill(0);
          quad(0, 600, 200, 400, 600, 400, 800, 600);
          fill(0, 255, 150);
          quad(45, 570, 80, 540, 300, 540, 300, 570);
          fill(15, 50, 200);
          quad(95, 530, 130, 500, 300, 500, 300, 530);
          fill(100, 255, 0);
          quad(145, 490, 180, 460, 300, 460, 300, 490);
          makeRadar();
          beep = new SoundFile(this, "beep.mp3");
          beep.play();
      }
      
      //Checking for STATUS button 
      if(mouseX < 200 && mouseX > 0 && mouseY < 110 && mouseY > 55)
      {
         fill(0, 255, 0);
         textSize(15);
         text("SPEED : 1200 ly/h ", 500, 480);
         text("FUEL : 67 %", 500, 515);
         text("OXYGEN : 85%", 500, 550);
         bleep = new SoundFile(this, "bleep.mp3");
         bleep.play();
      }
      
      //Making the phone ring
       if(mouseX < 200 && mouseX > 0 && mouseY < 165 && mouseY > 110)
      {
         makePhone();
          
          ring = new SoundFile(this, "ring.wav");
          ring.play();

       }
      
      //hanging up the phone
       if(mouseX < 290 && mouseX > 150 && mouseY < 330 && mouseY > 270)
      {
         background(10, 0, 35);
         hangup = new SoundFile(this, "hangup.mp3");
         hangup.play();
      }

      //Answering the phone
      if(mouseX < 730 && mouseX > 510 && mouseY < 330 && mouseY > 270)
      {
          answer = new SoundFile(this, "answer.wav");
          answer.play();
      }
       }