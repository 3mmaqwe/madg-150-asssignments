// code written by Emmaline Bateman

void setup(){

  background(50);
  size(700,400);
  
}


void draw(){

  //cloud top
  ellipseMode(CENTER);
  fill(255);
  noStroke();
  ellipse(100,300,300,200); 
  ellipse(200,280,300,200);
  ellipse(550,260,350,300);
  ellipse(390,290,100,100);
  //bottom cloud
  fill(255);
  stroke(255);
  strokeWeight(6);
  rect(-20,300,800,400);
  
  //moon
  ellipseMode(CENTER);
  fill(240);
  stroke(100);
  strokeWeight(2);
  ellipse(300,70,100,100);
  noStroke();
  fill(50);
  ellipse(270,70,100,100);
  fill(200);
  stroke(170);
  strokeWeight(1);
  ellipse(340,70,10,10);
  ellipse(330,50,4,4);
  ellipse(325,90,4,4);
  ellipse(305,110,4,4);
 
  //stars
  ellipseMode(RADIUS);
  stroke(200);
  strokeWeight(0.2);
  noFill();
  ellipse(200,30,3,3);
  ellipse(100,100,3,3);
  ellipse(60,50,3,3);
  ellipse(550,40,2,2);
  ellipse(690,90,2,2);
  ellipse(300,180,2,2);
  ellipse(400,100,2,2);
  ellipse(210,130,2,2);
  ellipse(120,175,3,3);
  ellipse(67,190,2,2);
  ellipse(600,100,3,3);
  ellipse(690,90,2,2);
  ellipse(340,200,3,3);
  ellipse(360,170,2,2);
  ellipse(450,60,2,2);
  
  //tiny stars
  strokeWeight(2);
  point(10,10);
  point(130,70);
  point(450,100);
  point(650,40);
  point(500,20);
  point(10,200);
  
  
  
  //building and dec
 
  stroke(128);
  strokeWeight(3);
  fill(50);
  rect(650,250,50,300);/* 1st most right building */
  //dec for Most right building building 650,250
  stroke(128);
  strokeWeight(3);
  line(660,251,660,400);
  line(651,260,700,260);
  line(651,270,700,270);
  line(651,290,700,290);
  line(651,300,700,300);
  line(651,320,700,320);
  line(651,330,700,330);
  line(651,350,700,350);
  line(651,360,700,360);
  line(651,380,700,380);
  line(651,390,700,390);
  
   stroke(0);
  strokeWeight(1);
  rect(-10,250,45,300,9);/* lst most left building */
  //decorations for lst left building
  strokeWeight(5);
  stroke(255);
  fill(255);
  strokeJoin(BEVEL);
  rect(3,260,7,20);
  rect(20,260,7,20);
  rect(3,290,7,20);
  rect(20,290,7,20);
  rect(3,320,7,20);
  rect(20,320,7,20);
  rect(20,350,7,20);
  rect(3,350,7,20);
  rect(20,380,7,20);
  rect(3,380,7,20);
  strokeJoin(MITER);
  stroke(50);
  strokeWeight(3);
  line(6,251,6,400);
  line(24,251,24,400);
  
  
  
  stroke(128);
  strokeWeight(3);
  fill(50);
  rect(550,200,80,400); /*2nd most right building*/
  noStroke();
  fill(255);
  ellipse(560,220,7,7);
  ellipse(560,250,7,7);
  ellipse(560,280,7,7);
  ellipse(560,310,7,7);
  ellipse(560,340,7,7);
  ellipse(560,370,7,7);
  ellipse(560,400,7,7);
  ellipse(590,220,7,7);
  ellipse(590,250,7,7);
  ellipse(590,280,7,7);
  ellipse(590,310,7,7);
  ellipse(590,340,7,7);
  ellipse(590,370,7,7);
  ellipse(590,400,7,7);
  //so many windows omg
  ellipse(620,220,7,7);
  ellipse(620,250,7,7);
  ellipse(620,280,7,7);
  ellipse(620,310,7,7);
  ellipse(620,340,7,7);
  ellipse(620,370,7,7);
  ellipse(620,400,7,7);
  stroke(50);
  line(560,210,560,400);
  line(620,210,620,400);
  line(590,210,590,400);
  
  
  noStroke();
  fill(128);
  rect(570,201,10,400);
  rect(600,201,10,400);
  fill(50);
  rect(573,201,4,400);
  rect(603,201,4,400);
  fill(255);
  
  stroke(0);
  strokeWeight(1);
  fill(50);
  rect(400,200,90,200);
  stroke(100);
  noFill();
  rect(402,201,86,10);
  rect(402,215,86,10);
  rect(402,231,86,10);
  rect(402,246,86,10);
  rect(402,260,86,10);
  rect(402,275,86,10);
  rect(402,290,86,10);
  rect(402,305,86,10);
  rect(402,320,86,10);
  rect(402,335,86,10);
  rect(402,350,86,10);
  rect(402,365,86,10);
  rect(402,380,86,10);
  rect(402,395,86,10);
  stroke(0);
  fill(40);
  rect(500,300,79,100);
  stroke(255);
  noFill();
  rect(502,302,10,410);
  rect(515,302,10,410);
  rect(528,302,10,410);
  rect(541,302,10,410);
  rect(554,302,10,410);
  rect(567,302,10,410);  
  fill(50);
  stroke(128);
  rect(60,150,90,400);/*2nd most left building*/
  //dec for building 60,150 
  stroke(128);
  strokeWeight(1);
  line(60,151,72,450);
  line(90,151,80,450);
  line(90,151,100,450);
  line(120,151,110,450);
  line(120,151,130,450);
  line(149,151,139,450);
  stroke(0);
  strokeWeight(1);
  fill(40);
  rect(220,250,90,400);
  line(220,250,310,410);
  line(310,250,220,410);
  strokeWeight(3);
  line(230,250,230,210);
  line(240,250,240,230); 
  stroke(0);
  strokeWeight(1);
  fill(40);
  rect(160,290,90,200);
  noStroke();
  fill(255);
  rect(170,300,10,10);
  fill(128);
  rect(170,320,10,10);
  fill(255);
  rect(170,340,10,10);
  rect(170,360,10,10);
  rect(170,380,10,10);
  rect(190,300,10,10);
  rect(190,320,10,10);
  rect(190,340,10,10);
  rect(190,360,10,10);
  fill(128);
  rect(190,380,10,10);
  fill(128);
  rect(210,300,10,10);
  fill(255);
  rect(210,320,10,10);
  fill(128);
  rect(210,340,10,10);
  fill(255);
  rect(210,360,10,10);
  rect(210,380,10,10);
  rect(230,300,10,10);
  rect(230,320,10,10);
  rect(230,340,10,10);
  rect(230,360,10,10);
  rect(230,380,10,10); 
  stroke(0);
  strokeWeight(1);
  fill(50);
  rect(300,270,90,200);
  stroke(100);
  line(310,270,310,400);
  line(320,270,320,400);
  line(330,270,330,400);
  line(340,270,340,400);
  line(350,270,350,400);
  line(360,270,360,400);
  line(370,270,370,400);
  line(380,270,380,400);
  line(310,280,380,280);
  line(310,290,380,290);
  line(310,300,380,300);
  line(310,310,380,310);
  line(310,320,380,320);
  line(310,330,380,330);
  line(310,340,380,340);
  line(310,350,380,350);
  line(310,360,380,360);
  line(310,370,380,370);
  line(310,380,380,380);
  line(310,390,380,390);
 
  
}
