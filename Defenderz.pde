PImage background; //Object can store jpg image 
int bgX=0; //global variable background location
PImage gameOver;
int gameMode = 1;

Alien alienOne,alienTwo,alienThree;
Defender player1;
Bullet bullet1,bullet2,bullet3,bullet4;


void setup()
{
  size(800,400);
  background = loadImage("spaceBackground.jpg");
  background.resize(width,height); //set image to be same size as the canvas
  alienOne = new Alien(500,100);
  alienTwo = new Alien(400,200);
  alienThree = new Alien(300,300);
  player1 = new Defender(50,100);
  bullet1 = new Bullet(player1.DefenderX,player1.DefenderY,12);
}



void draw ()
{
  if (gameMode==1)
  {
   scrollBackground();
   
   
   alienOne.render();
   alienOne.move();
   alienOne.alienCrash();
   
   alienTwo.render();
   alienTwo.move();
   alienTwo.alienCrash();
   
   alienThree.render();
   alienThree.move();
   alienThree.alienCrash();
   
   player1.render();
   player1.playerBoundry();
 
   player1.drawCrashLineDefender();

   //bullet1.drawCrashLineBullet();
   

   
     if (keyCode == RIGHT)
     {
        bullet1.render();
        if (bullet1.bulletX >=  width)
        {
          bullet1.bulletX = player1.DefenderX;
          bullet1.bulletY = player1.DefenderY;
        }
     }

  
  
  if (gameMode==0) 
  {
     gameOver = loadImage("gameOver.jpg");
   }
}
}

void scrollBackground()
{
  
   //scrolling background image
    image(background, bgX, 0); //draw image to fill the canvas
    //draw image again off the right of the canvas
    image(background, bgX+background.width, 0);    
    bgX = bgX- 4;
    if(bgX == -background.width) //if first image completely off the canvas
    {
      bgX=0; //reset back to initial value background
    }
    
    
    
}



  void keyPressed()
  {
    if (key==CODED)
    {
      if(keyCode == UP)
      {
        player1.DefenderY = player1.DefenderY-10;
      }
       if(keyCode == DOWN)
      {
        player1.DefenderY = player1.DefenderY+10;
      }
      
}
  }

  
//}
  //comparing defender color to alien colour

  
