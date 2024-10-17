public class Laser{
  //private float x;
  //private float y;
  public float ldx;
  public float ldy;
  private boolean on;
  //PVector p1;
  //PVector p2;
  //PVector c;
  //private boolean one = false;
  //private boolean two = false;
  //private boolean three = false;
  //private boolean four = false;
  
  //void move(){
  //  ldx = dx;
  //  ldy = dy;
  //  x += ldx;
  //  y += ldy;
  //}
  
  void activate(){
    color c = color(255,0,0);
    stroke(c);    
    strokeWeight(20);
    line(posX, posY, ldx, ldy);
    if (on){
      hit = true;
      on = false;
    }
    //if (posX <= oppX){
    //  hit = true;
    //}
    buttonPressed = false;
  }
  
  void display(){
    //size(500,500);
    ldx = inputX;
    ldy = inputY;
    strokeWeight(1);
    stroke(0);
    line(posX, posY, ldx, ldy);
    PVector p1 = new PVector(posX, posY);
    PVector p2 = new PVector(ldx, ldy);
    PVector c = new PVector(oppX, oppY);
    if (check(p1, p2, c, 25)){    
      println("ONLINE");
      on = true;
    }
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
  
  //void check(){
  //  on = false;
  //  if (posX <= oppX && oppX <= ldx){
  //    if (posY <= oppY && oppY <= ldy){
  //      on = true;
  //    }
  //  }
  //  if (ldx <= oppX && oppX <= posX){
  //    if (posY <= oppY && oppY <= ldy){
  //      on = true;
  //    }
  //  }
  //  if (ldx <= oppX && oppX <= posX){
  //    if (ldy <= oppY && oppY <= posY){
  //      on = true;
  //    }
  //  }   
  //  if (posX <= oppX && oppX <= ldx){
  //    if (ldy <= oppY && oppY <= posY){
  //     on = true;
  //    }
  //  }
  //}
}
