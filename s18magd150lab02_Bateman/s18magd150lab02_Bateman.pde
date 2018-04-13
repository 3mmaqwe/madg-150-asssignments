/*

Emmaline Bateman


*/
void setup()
{
  size(900,400);
  background(22,173,255);
  
  
  
}


void draw(){
  colorMode(RGB);
  noStroke();
  
  /*
  //tiny planets (behind)
  fill(150);
  ellipse(430,100,30,30);
  ellipse(390,100,30,30);
                           */
  
  //big planet
  fill(66,81,189,20);
  ellipse(630,280,500,500);
  
  //I didnt like how the big stars look but i didnt want to remove the code
  //feel free to uncomment out the tiny planets if u want to see how it looks
 /* 
  fill(200);
    ellipse(350,125,30,30);
  ellipse(370,160,30,30);
  ellipse(400,180,30,30);
  ellipse(430,200,30,30);
  ellipse(460,220,30,30);
  ellipse(490,240,30,30);
  ellipse(520,260,30,30);
  ellipse(550,280,30,30);
  ellipse(580,300,30,30);
  ellipse(610,320,30,30);
  ellipse(640,340,30,30);
  ellipse(670,360,30,30);
  ellipse(700,380,30,30);
  ellipse(730,400,30,30);
                          */
  
  //mini dust ring
  fill(230);
  ellipse(590,310,10,10);
  ellipse(520,295,10,10);
  ellipse(500,200,10,10);
  ellipse(550,250,10,10);
  ellipse(400,200,10,10);
  ellipse(442,200,10,10);
  ellipse(445,230,10,10);
  ellipse(700,392,10,10);
  ellipse(330,170,10,10);
  ellipse(360,100,10,10);
  ellipse(410,110,10,10);
                           
  
  //planet details
  
  
  //cloudlyness
  
  
 
  fill(255,2);
  rect(0,50,900,50);
  fill(255,3);
  rect(0,100,900,50);
  fill(255,7);
  rect(0,150,900,50);
  fill(255,2);
  rect(0,200,900,50);
   fill(255,3);
  rect(0,250,900,50);
  fill(255,7);
  rect(0,300,900,50);
  //foreground
  /*fill(22,173,255,50);
  rect(0,250,900,400); */
  
  //back peak

  fill(189,73,31);
  quad(20,150,300,155,305,250,22,250);
  triangle(50,150,250,100,250,250);
  fill(107,42,18);
  stroke(107,42,18);
  strokeWeight(4);
  line(50,150,250,155);
  noStroke();
  rect(30,150,5,100);
  rect(37,160,2,50);
  rect(25,170,2,50);
  rect(40,170,2,50);
  rect(40,150,2,13);
  
  fill(59,29,9);
  rect(20,215,285,50);
  
   fill(117,60,18);
  rect(5,290,10,20);
  rect(6,290,3,35);
  rect(20,295,10,30);
  rect(30,295,3,35);
  rect(35,295,10,10);
  
  
  fill(117,60,18);
  quad(20,220,305,220,325,270,3,300);
  fill(59,29,9);
  rect(30,240,270,2);
  rect(24,235,250,4);
  rect(35,235,10,30);
  rect(50,250,10,30);
  rect(77,240,10,10);
  rect(77,260,10,10);
  rect(20,290,5,19);
  rect(30,270,5,19);
  
  
  
  
  //front peak
  fill(59,29,9);
  
  
   fill(117,60,18);
  rect(600,360,5,20);
  rect(625,360,30,20);
  rect(650,360,5,30);
  
  rect(670,360,10,20);
  rect(695,360,10,20);
  rect(690,360,10,30);
   
  rect(750,360,5,20);
  rect(715,360,30,20);
  rect(725,360,10,30);
  
  fill(59,29,9);
  
  
  fill(117,60,18);
  triangle(600,240,3000,240,600,370);
 
  
  fill(59,29,9);
  rect(600,270,1000,15);
  quad(605,275,655,280,655,290,605,275);
  fill(189,73,31);
  rect(600,240,1000,35);
  fill(189,73,31);
  quad(600,270,650,275,650,285,600,270);
  fill(107,42,18);
  stroke(107,42,18);
  strokeWeight(3);
  strokeCap(SQUARE);
  line(630,250,800,250);
  line(750,260,870,260);
  
  //grass patch
  noStroke();
  fill(89,186,89);
  rect(730,240,100,4);
  rect(740,244,85,4);
  fill(59,84,46);
  rect(755,242,3,3);
  rect(759,241,3,3);
  fill(#9FFFAD);
  rect(770,243,3,3);
  rect(780,244,3,3);
  fill(59,84,46);
  rect(781,240,3,3);
  fill(59,84,46);
  rect(795,241,3,3);
  fill(#F5ACFF);
  rect(795,245,3,3);
 //flower
  fill(59,84,46);
  rect(800,220,3,22);
  fill(#F5ACFF);
  rect(800,221,5,5);
  //flower
  fill(59,84,46);
  rect(820,225,3,22);
  fill(255,255,0);
  rect(820,226,5,5);
    //flower
  fill(59,84,46);
  rect(745,223,3,22);
  fill(0,255,255);
  rect(745,224,5,5);
  
  
  //person head
  //use hex and hsb and shape tool here 
  colorMode(HSB);           
  stroke(200);
  strokeWeight(1);
  strokeCap(ROUND);
  fill(29,55,100,100);
  ellipse(770,205,10,10);
 
  //hat
  stroke(255);
  fill(#FF8E25);
  beginShape();
  vertex(760,202);
  vertex(763,202);
  vertex(763,190);
  vertex(770,190);
  vertex(778,190);
  vertex(778,202);
  vertex(782,202);
  endShape(CLOSE);
  
  
  //cape
  stroke(255);
  fill(#FF2C26,20);
  
  beginShape();
  vertex(762,215);
  vertex(780,215);
  vertex(781,220);
  vertex(790,240);
  vertex(765,240);
  
  endShape(CLOSE);
  
  
  
}