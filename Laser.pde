public class Laser{
  public float ldx;
  public float ldy;
  private boolean on;
  PVector velo;
  PVector pos;
  PVector pt;
  PVector o;
  
  void display(){
    ldx = inputX;
    ldy = inputY;
    pos = new PVector(posX, posY);
    velo = new PVector(dx, dy);
    pt = new PVector(ldx, ldy);
    o = new PVector(oppX, oppY);
    if (check(pos, pt, o, 25)){
      ldx = oppX;
      ldy = oppY;
    }
    strokeWeight(1);
    stroke(0);
    line(posX, posY, ldx, ldy);
    if (check(pos, pt, o, 15)){    
      on = true;
    }
    else{
      on = false;
    }
  }
  
  void activate(){
    color c = color(255,0,0);
    stroke(c);    
    strokeWeight(20);
    line(posX, posY, ldx, ldy);
    if (on){
      hit = true;
      on = false;
    }
    buttonPressed = false;
  }  
  
  boolean check(PVector p1, PVector p2, PVector c, float r){
    PVector dir = PVector.sub(p2, p1);
    PVector tc = PVector.sub(c, p1);
    float m = PVector.dot(tc, dir) / PVector.dot(dir, dir);
    m = constrain(m, 0, 1);
    PVector cp = PVector.add(p1, PVector.mult(dir, m));
    float dist = PVector.dist(cp, c);
    return dist <= r;
  }
}
