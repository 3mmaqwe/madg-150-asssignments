// by emmaline bateman 
// god typing with aylics nails is awful :(

//tv that turns on and says hi to u
boolean bPowerButtonState     = false;
color cPowerButton                  = color(255, 0, 0);
color cPowerStroke;
int iPowerX, iPowerY;
int iCountChangePower           = -1;
boolean bChangePower          = false;
color cPowerText;

boolean bChangeNext     = false;
color cNextButton;
int iNextX, iNextY;
int iNextClick                    = 0;

float fFaceLocationX     =  220 ; 
float fFaceSpeed          = 0.2;
float fMouthLocationX   = 245;
float fMouthSpeed        = 0.2;

float fTypeBoxNumber    = 1;
int iTextBoxSetting          = 1;
boolean bText1               = false;
boolean bText2               = false;
boolean bText3               = false;

void setup() {
    size(800, 600); 
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
    
    if (bChangePower) {
        cPowerButton = color(112, 62, 62);
        cPowerText   = color(147,162,166);
        cPowerStroke = color(38,27,27);
    }else {
        cPowerButton = color(185, 62, 62);
        cPowerText = color(175,192,196);
        cPowerStroke =color(54, 37, 37);
    }
    
    if(bChangeNext){
        cNextButton = color(168,108,102);
    }else { 
        cNextButton = color(229,147,139);
    }

    fFaceLocationX = fFaceSpeed + fFaceLocationX;
    fMouthLocationX= fMouthSpeed + fMouthLocationX;

    // animation movement for face
    if ( (fFaceLocationX > 225)||(fFaceLocationX < 215)) {
        fFaceSpeed= fFaceSpeed * -1;
    }

    if ( (fMouthLocationX > 250)||(fMouthLocationX < 240)) {
        fMouthSpeed= fMouthSpeed * -1;
    }
    
    if (bPowerButtonState) {
        textbox();
        blackTvScreen();
        face();
        nextButton();
    
        if (bText1){
            textbox1();
        }if (bText2){
            textbox2();
        }if (bText3){
            textbox3();
        }
    }else { 
        iTextBoxSetting=1;
        blackTvScreen();
    }
  
    //alway run
    tvFrame();
    powerButton();  
}  

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
    if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
        return true;
    } else {
        return false; 
  }
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
    text(".|.", fFaceLocationX, 300);
    fill(89,62,62);
    text("_", fMouthLocationX, 330);
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
    stroke(cPowerStroke);
    strokeWeight(3);
    ellipse(100, 536, 50, 50);

    fill(cPowerText);

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
    text("Remember when we first did meet,\n ur hearts rejoiced and skipped a beat\n Remember our first kiss goodnight,\n the hug we shared that summer's night.\n Remember when we walked the beach \n and all our dreams were within our reach",575, 30, 200, 560);
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
    fill(cNextButton);
    noStroke();
    rect(711, 535, 50, 30);

    textAlign(CENTER, CENTER);
    textSize(15);
    fill(0);
    text("next", 710, 530, 50, 30);
}

void update(int x, int y) {
    if ( overPowerButton(100, 536, 50) ) {
        bChangePower = true;
    } else {
        bChangePower = false;
    }
    
    if(overNext(711,535,50,30)){
        bChangeNext = true;
    }else {
        bChangeNext = false;
  }    
}

void mousePressed() {
    if (bChangePower){
        iCountChangePower= iCountChangePower+1;
    }
    
    // %2 lets us know if the count is odd or even
    if (bChangePower && iCountChangePower%2 == 0) {
        bPowerButtonState = true;
    }if (bChangePower && iCountChangePower%2 != 0) {
        bPowerButtonState = false;
    }

    if (bChangeNext){
        iTextBoxSetting = iTextBoxSetting+1;
    }

    if (iTextBoxSetting == 4){
        iTextBoxSetting = 1;
    }
  
    if (iTextBoxSetting == 1) {
        bText1 = true;
        bText2 = false;
        bText3 = false;
    }if (iTextBoxSetting == 2) {
        bText1 = false;
        bText2 = true;
        bText3 = false;
    }if (iTextBoxSetting == 3){
        bText1 = false;
        bText2 = false;
        bText3 = true;
    }
}