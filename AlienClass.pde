final color ALIEN1 = color(0,255,0);
final color ALIEN2 = color(50,100,0);
int killCounter = 0;
class Alien
{
  int alienX;
  float alienY;
  int speedX=2;
  float randomY;
  
  Alien(int alienX, int alienY)
  {
   this.alienX=alienX;
   this.alienY=alienY;
  
  }
  
  void render()
  {
   stroke(0);
   fill(ALIEN1);
   ellipse(alienX,alienY,30,30);
   fill(ALIEN2);
   ellipse(alienX,alienY,50,15);
  }

  void move()
  {
    this.alienX = this.alienX-speedX;
    randomY = random(-5,5);
    this.alienY = alienY + randomY;
    
    if (this.alienX <= 0)
    {
      alienX = 800;
    }
    
    if (this.alienY <= 0)
    {
      alienY = alienY+10;
    }
    
    if (this.alienY >= 400)
    {
      alienY = alienY-10;
    }
  }
  
  
  void alienCrash()
  {
    if(alienOne.isShot(bullet1))
    {
      alienOne.alienX =1000;
      killCounter=killCounter+1;
    }
    if(alienTwo.isShot(bullet1))
    {
      alienTwo.alienX =1000;
      killCounter=killCounter+1;
    }
    if(alienThree.isShot(bullet1))
    {
      alienThree.alienX =1000;
      killCounter=killCounter+1;
    }
    
    textSize(20);
    fill(0,255,255);
    text("Aliens Killed: ",580,50);
    text(killCounter,700,50);
  }
  
  boolean isShot(Bullet other)
  {
    if(bullet1 !=null)
    {
      if(abs(this.alienX-other.bulletX)<20 && abs(this.alienY - other.bulletY)<20)
      return true;
    }
    return false;
  }
 
}
