public class Opp{
  
  public PVector oppPos;
  public PVector target;
  public PVector dir;
  private int c;
  private boolean init = true;
  public boolean inBounds = true;

  public Opp(){
    oppPos = new PVector();
    target = new PVector();
    dir = new PVector();
  }
  
  void move(){
    if (init){
      c = int(random(1,5));
      if (c == 1){
        oppPos.set(0, int(random (0, 500)));
      }
      if (c == 2){
        oppPos.set(int(random(0,500)), 0);
      }
      if (c == 3){
        oppPos.set(500, int(random(0,500)));
      }
      if (c == 4){
        oppPos.set(int(random(0,500)), 500);
      }
      init = false;
      inBounds = true;
    }
    target.set(posX, posY);
    dir = PVector.sub(target, oppPos);
    dir.normalize();
    dir.mult(level);
    if (inBounds){
      oppPos.add(dir);
    }
    if (oppPos.x > 500 || oppPos.x < 0 || oppPos.y > 500 || oppPos.y < 0 || hit){
      inBounds = false;
      init = true;
    }
    if (inBounds == false){
      init = true;
    }
    oppX = oppPos.x;
    oppY = oppPos.y;
  }

  
  void display(){
    noStroke();
    fill(0);
    circle(oppPos.x, oppPos.y, 15);
  }
}
