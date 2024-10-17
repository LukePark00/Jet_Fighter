public class Opp{
  //private int y = 0;
  //private int x = 0;
  private float dy = 1 + level;
  private float dx = 1 + level;
  //private float bdx;
  //private float bdy;
  private int c;
  //private int size = 25;
  private boolean init = true;
  public boolean inBounds = true;
  //public void fire(){
  //  //bullX = oppX;
  //  //bullY = oppY;
  //  if (inBounds){
  //    bullmove();
  //    bulldisplay();
  //    //delay(100);
  //  }
  //}
  
  //public void bulldisplay(){
  //  fill(0);
  //  circle(bullX, bullY, 5);
  //}
  
  //public void bullmove(){
  //  //bullX = oppX;
  //  //bullY = oppY;
  //  bdx = (sposX - bullX)/500;
  //  bdy = (sposY - bullY)/500;   
  //  //if (){
  //  //}
  //  //else{
  //  //  bdx = (posX - bullX)/500;
  //  //  bdy = (posY - bullY)/500;
  //  //}
  //  bullX += bdx;
  //  bullY += bdy;
  //}
  
  public void move(){
    //dy = 1;
    //dx = 1;
    if (init){
      c = int(random(1,5));
      if (c == 1){
        oppX = 0;
        oppY = int(random(0,500));
        if (oppY > 250){
          dy = dy*-1;
        }
      }
      if (c == 2){
        oppX = int(random(0,500));
        oppY = 0;
        if (oppX > 250){
          dx = dx*-1;
        }
      }
      if (c == 3){
        oppX = 500;
        oppY = int(random(0,500));
        dx = dx*-1;
        if (oppY > 250){
          dy = dy*-1;
        }
      }
      if (c == 4){
        oppX = int(random(0,500));
        oppY = 500;
        dy = dy*-1;
        if (oppX > 250){
          dx = dx*-1;
        }
      }
      init = false;
      inBounds = true;
    }
    if (inBounds){
      
      oppX += dx; //+ level;
      oppY += dy; //+ level;
    }
    //else{
    //  //y = 0;
    //  //x = 0;
    //  inBounds = true;
    //  init = true;
    //}
    //if (hit){
    //  inBounds = false;
    //  init = true;
    //}
    if (oppX > 500 || oppX < 0 || oppY > 500 || oppY < 0 || hit){
      inBounds = false;
      init = true;
      dx = 1 + level;
      dy = 1 + level;
    }
    if (inBounds == false){
      //inBounds = true;
      init = true;
    }
  }

  
  public void display(){
    noStroke();
    fill(0);
    circle(oppX, oppY, 25);
    //println(inBounds);
  }
}
