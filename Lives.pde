public class Lives{
  private boolean l1 = true;
  private boolean l2 = true;
  private int count = 0;

  void reset(){
    l1 = true;
    l2 = true;
    count = 0;
  }
  
  void show(){
    fill(0);
    textSize(25);
    text("Lives: ", 340, 32);
    if (!l1){
      noFill();
      stroke(0);
      strokeWeight(1);
      circle(425, 25, 20);
    }
    else{
      fill(0);
      noStroke();
      circle(425, 25, 20);
    }
    if (!l2){
      noFill();
      stroke(0);
      circle(450, 25, 20);
    }
    else{
      fill(0);
      noStroke();
      circle(450, 25, 20);
    }
    fill(0);
    noStroke();
    circle(475, 25, 20);
  }
  
  void playerHit(){
    l1 = false;
    if (l1 == false && count == 2){
      l2 = false;
    }
    if (l2 == false && count == 3){
      gameOver();
    }
    if (opp.inBounds == false){
    count++;
    }
  }
}
