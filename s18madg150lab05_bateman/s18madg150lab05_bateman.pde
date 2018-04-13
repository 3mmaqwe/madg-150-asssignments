
// by emmaline bateman 
// god typing with aylics nails is awful :(

//tv that turns on and says hi to u
boolean tvTurn;
boolean next = true;
color cPowerButton;
color cnext;
color cpowerstroke;
boolean btextbox1;
float faceLocationX =  220 ; 
float faceSpeed = 0.2;
float mouthLocationX = 245;
float mouthSpeed = 0.2;
int powerX, powerY;
int nextX, nextY;
color cNextButton;
int a = -1;
int nextclick = 0;
boolean changePower = false;
color cpowertext;
float typeBoxNumber = 1;
boolean changenext = false;
int b = 1;
boolean text1 = false;
boolean text2 = false;
boolean text3 = false;

//button booleans overPowerButton and next from from buttonExample2 
boolean overPowerButton(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overNext(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false; 
  }
  }


void setup() {

  size(800, 600); 
  cPowerButton= color(255, 0, 0);
}  

void draw(){
  update(mouseX, mouseY); 
  colorMode(HSB);
  background(0, 38, 38, 100);

//floor
 colorMode(RGB);
 fill(166,151,146);
 noStroke();
 rect(0,400,800,400);

  colorMode(RGB);
  if (changePower) {
    cPowerButton = color(112, 62, 62);
    cpowertext   = color(147,162,166);
    cpowerstroke = color(38,27,27);
    
  }
  if (!changePower) {
    cPowerButton = color(185, 62, 62);
    cpowertext = color(175,192,196);
    cpowerstroke =color(54, 37, 37);
  }
  
  if(changenext){
    cnext = color(168,108,102);
  }
  if (!changenext){ 
    cnext = color(229,147,139);
  }

  faceLocationX = faceSpeed + faceLocationX;
  mouthLocationX= mouthSpeed + mouthLocationX;

  // animation movement for face
  if ( (faceLocationX > 225)||(faceLocationX < 215)) {
    faceSpeed= faceSpeed * -1;
  }

  if ( (mouthLocationX > 250)||(mouthLocationX < 240)) {
    mouthSpeed= mouthSpeed * -1;
  }
  if (tvTurn == true) {
    textbox();
    blackTvScreen();
    face();
    nextButton();
    
      if (text1){
         textbox1();
 
     }if (text2){
        textbox2();
   
     }if (text3){
       textbox3();
     }
    
  }
  if (tvTurn == false) { 
    b=1;
   blackTvScreen();
    
  }
  //alway run
  tvFrame();
  powerButton();

 
  
}  


void textbox() {

  colorMode(RGB);
  stroke(175,192,196);
  strokeWeight(10);
  fill(0);
  rect(560, 20, 220, 560, 7);
}

void blackTvScreen() {

  fill(0);
  noStroke();

  rect(60, 60, 410, 450);
}

void face() {
  textAlign(LEFT);
  fill(193,212,217);
  textSize(100);
  text(".|.", faceLocationX, 300);
  fill(89,62,62);
  text("_", mouthLocationX, 330);
}

void tvFrame() {

  colorMode(RGB);
  fill(88,110,115);
  noStroke();
  // tv shape 
  beginShape();
  vertex(20, 20);
  vertex(20, 540);
  vertex(520, 540);
  vertex(520, 20);

  beginContour();
  vertex(70, 90);
  vertex(470, 90);
  vertex(470, 500);
  vertex(70, 500); 
  endContour();

  endShape(CLOSE);

  //top curve
  stroke(88,110,115);
  strokeWeight(1);
  rect(20, 10, 499, 50, 7);
  rect(20, 520, 499, 50, 7);


  noFill();
  stroke(28,38,41);
  strokeWeight(10);
  rect(70, 90, 400, 412, 10);
}

void powerButton() {




  fill(cPowerButton);
  stroke(cpowerstroke);
  strokeWeight(3);
  ellipse(100, 536, 50, 50);

  fill(cpowertext);

  textSize(14);
  textAlign(CENTER);
  text("Power", 100, 542);
}

void textbox1() {
  
  fill(229,147,139);
  textAlign(LEFT);
  textSize(20);
  text("hey, i got a cool poem for you, click the 'next' button to read it \n\t-mr floaty face ", 575, 30, 210, 560);
}

void textbox2() {
  fill(229,147,139);
  textAlign(LEFT);
  textSize(20);
  text("Remember when we first did meet,\n ur hearts rejoiced and skipped a beat\n Remember our first kiss goodnight,\n the hug we shared that summer's night.\n Remember when we walked the beach \n and all our dreams were within our reach", 
    575, 30, 200, 560);
}

void textbox3() {
  fill(229,147,139);
  textAlign(LEFT);
  textSize(20);
  text("did you like it? \n\nI hope you did \n\nclick next button to repeat the message again ", 575, 30, 210, 560);
}


void bigsquare(){
  
  fill(0);
  rect(0,0,600,600);

}

void nextButton() {

  colorMode(RGB);
  fill(cnext);
  noStroke();
  rect(711, 535, 50, 30);

  textAlign(CENTER, CENTER);
  textSize(15);
  fill(0);
  text("next", 710, 530, 50, 30);
}



void update(int x, int y) {
  if ( overPowerButton(100, 536, 50) ) {
    changePower = true;
  } else {
    changePower = false;
  }
  
  if(overNext(711,535,50,30)){
    changenext = true;
  }else {
    changenext = false;
  }
  
    
}

void mousePressed() {
  
  if (changePower){
  a= a+1;
  }
  if (changePower && a%2 == 0) {


    tvTurn = true;
  }if (changePower && a%2 != 0) {
      tvTurn = false;
  }
  
  if (changenext){
   
    b = b+1;
      
  }
  if (b == 4){
    
    b = 1;
  }
  
  if (b == 1) {
    text1 = true;
    text2 = false;
    text3 = false;
 }if (b == 2) {
   text1 = false;
   text2 = true;
   text3 = false;
 }if (b == 3){
   text1 = false;
   text2 = false;
   text3 = true;
 }
 
}