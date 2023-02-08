class Defender
{
  int DefenderX;  //Declaring defenders variables
  int DefenderY;
  
  
  Defender(int DefenderX, int DefenderY) //Constructors
  {
   this.DefenderX=DefenderX;
   this.DefenderY=DefenderY;

  }
  
  void render() //This method draws the defender on the canvas when called with player1.render();
  {
   stroke(0);
   fill(0,0,200);
   rect(DefenderX,DefenderY,20,10); //draw top box
   fill(255,0,0); //draw rocket
   rect(DefenderX,DefenderY+10,50,20);
   triangle(DefenderX+50,DefenderY+10,DefenderX+50,DefenderY+30,DefenderX+60,DefenderY+20);   
  }
  
  void playerBoundry() //This stops the player from moving off the screen, but if it does it brings it back at the opposite Y value 
  {
  
  if (this.DefenderY <= 0)
    {
      DefenderY = 500;
    }
    
    if (this.DefenderY >= 400)
    {
      DefenderY = 0;
    }
  }


boolean drawCrashLineDefender() //Dectects crash in front of the defender using a loop and if the color of the plotted points are = ALIEN1 or ALIEN2 colors then the game ends and tells user GAME OVER!
{
  for (int i=0;i<40;i++)
    {
      color test=get(player1.DefenderX+65,player1.DefenderY+i);
       if (test==ALIEN1){
         stroke(0);
         fill(255,255,0);
         textSize(100);
         text("GAME OVER!",150,230);
         gameMode=0;
       }
       if (test==ALIEN2){
         stroke(0);
         fill(255,255,0);
         textSize(100);
         text("GAME OVER!",150,230);
         gameMode=0;
       }
       
    }  
    
    return true;
 }
}
