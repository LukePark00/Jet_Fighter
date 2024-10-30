Opp opp = new Opp();
Jet jet = new Jet();
Lives lives = new Lives();
int register = 0;
int rcap = 1;
PImage bg;
float posX = 250;
float posY = 250;
float oppX;
float oppY;
float dx;
float dy;
float inputX;
float inputY;
float level = 1;
int skillcap = 5;
int score = 0;
int scap = 1;
boolean processed = false;
boolean stop = false;
boolean alive = true;
boolean buttonPressed = false;
boolean dead = false;
boolean hit = false;
boolean online = false;
boolean start = false;
boolean end = false;
boolean begin;
String val;  


import processing.serial.*;

Serial myPort; 


void setup()
{
  size(500, 500);
  bg = loadImage("sky.jpg");
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  jet.move();  
  begin = true;
  if (begin){
    startScreen();
  }
  if (start && !end){
    dead = false;
    background(bg);
    jet.move();
    if (!stop){
      jet.fire();
    }
    jet.display();
    if (hit){
      score ++;
      if (score > scap){
        score = scap;
        scap++;
      }
    }
    levels();
    displayScore();
    if ((oppX <= posX + 10 && oppX >= posX - 10) && (oppY <= posY + 10 && oppY >= posY - 10)){
      opp.inBounds = false;
      dead = true;
      register++;
    }
    if (dead && register > rcap){
      register = rcap;
      rcap++;
    }
    if (dead && register == 1){
      lives.l1 = false;
      dead = false;
    }
    if (dead && register == 2){
      lives.l2 = false;
      dead = false;
    }
    if (dead && register == 3){
      end = true;
    }
    lives.show();
    opp.display();
    opp.move();
  }
  if (end){
    gameOver();
  }
}

void levels(){
  if (int(score) == skillcap){
    level += .25;
    skillcap += 5;
  }
}

void displayScore(){
  fill(0);
  textSize(25);
  text("Score: " + score, 15, 32);
}

void startScreen(){
  background(bg);
  textSize(50);
  fill(255, 175, 0);
  text("JET SURVIVAL", 100,250);
  textSize(20);
  fill(0);
  text("Press Button to Start", 165, 300);
  if (buttonPressed){
    start = true;
  }
  buttonPressed = false;
  begin = false;
}

  void gameOver(){
  jet.move();
  end = true;
  background(bg);
  fill(0);
  textSize(50);
  text("GAME OVER", 130, 250); 
  textSize(20);
  fill(0);
  text("Score: " + score, 220, 300);
  textSize(20);
  fill(0);
  text("Press Button to Restart", 165, 350);
  if (buttonPressed){
    newGame();
    end = false;
    begin = true;
  }
 }
 
 void newGame(){
   posX = 250;
   posY = 250;
   dx = 0; 
   dy = 0;
   score = 0;
   scap = 1;
   register = 0;
   rcap = 1;
   level = 1;
   start = false;
   end = false;
   begin = true;
   lives.reset();
 }
