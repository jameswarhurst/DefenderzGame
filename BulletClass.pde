class Bullet
{
  int bulletX = player1.DefenderX;  //Declaring defenders variables
  int bulletY = player1.DefenderY;
  int speedX=12;

  Bullet(int bulletX, int bulletY, int speedX) //Constructors
  {
   this.bulletX=bulletX;
   this.bulletY=bulletY;
   this.speedX=speedX;
   
   
  }
  
  void render() //This method draws the defender on the canvas when called with player1.render();
  {
   fill(255);
   rect(bulletX,player1.DefenderY,40,15);
   move();
  }
  
  void move()
  {
    
      bulletX = bulletX + speedX;
      //this.bulletY = bulletY;
  }
  
//  boolean drawCrashLineBullet() //Dectects crash in front of the defender using a loop and if the color of the plotted points are = ALIEN1 or ALIEN2 colors then the game ends and tells user GAME OVER!
//{
//  for (int i=0;i<30;i++)
//    {
//      color test=get(bullet1.bulletX,bullet1.bulletY+i);
//       if (test==ALIEN1){
//         stroke(0);
//         fill(255,255,0);
//         textSize(100);
//         text("GAME OVER!",150,230);
//         gameMode=0;
//       }
//       if (test==ALIEN2){
//         stroke(0);
//         fill(255,255,0);
//         textSize(20);
//         text("GAME OVER!" alienCount,150,230);
         
//       }
       
//    }  
    
 //   return true;
 //}
  
}
