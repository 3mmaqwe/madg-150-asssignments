

//notes at bottom

/*

The colors:
  1) #8EB9A8 = Fairy Green     RGB = (142,185,168)
  2) #FEFBD0 = Sandy Moon      RGB = (254,251,208)
  3) #FDCFB7 = Peachy Smile    RGB = (253,207,183)
  4) #F4828C = Faded Sunset    RGB = (244,130,140)
  5) #775D6A = Purple Dreams   RGB = (119,93,106)

*/

//declaring all dem global funtions mate

//gotta make 2 color things for the random funtion to work ;)
//i think i like the random funtion too much
PVector Sunwave = new PVector(100,0.5);
color sunColor;


float fbackgroundcolor;
int   ibackgroundcolor;

color actualbackgroundcolor;
String commentcolor;


color foreground;
String commentForeground;


String FG = "FairyGreen";
String SM = "Sandy Moon";
String PS = "Peach Smile";
String FS = "Faded Sunset";
String PD = "Purple Dreams";
 boolean circles = false;
 boolean sun = false;

color strokecolor;

void setup(){
 
  //random generator... GO
  fbackgroundcolor = random(1,5);
  ibackgroundcolor =round(fbackgroundcolor);
  //have it pick a "color" 1 to 4 
  
  // this program determines what color plate im using
  if(ibackgroundcolor == 1){
    
    actualbackgroundcolor = #8EB9A8;
    commentcolor = FG ;
    foreground = #FEFBD0;
    strokecolor = 200;
    sunColor = foreground - 100;
  } else if (ibackgroundcolor == 2){
    
    actualbackgroundcolor= #FEFBD0;
    commentcolor = SM ;
    foreground =#FDCFB7;
    strokecolor = 200;
    sunColor = foreground - 100;
  } else if (ibackgroundcolor == 3){
    
    actualbackgroundcolor = #FDCFB7;
    commentcolor= PS ;
    foreground = #F4828C;
    strokecolor= 200;
    sunColor = foreground - 100;
  } else if (ibackgroundcolor == 4){
    
    actualbackgroundcolor = #F4828C;
    commentcolor = FS;
    foreground   = #775D6A;
    strokecolor= 200;
    sunColor = foreground + 100;
  } else if(ibackgroundcolor == 5){
    
    actualbackgroundcolor = #775D6A;
    commentcolor = PD;
    foreground   = #8EB9A8;
    strokecolor = 0;
    sunColor = foreground + 100;
    
  }

   
  
  size(400,400);
  
  println("the original background color is: " + commentcolor); 
  println("the color plate is: " + ibackgroundcolor);
}

void draw() {

background(actualbackgroundcolor);

 Sunwave.x = Sunwave.x + Sunwave.y;
 
 if( (Sunwave.x > 110)||(Sunwave.x < 100)){
   
   Sunwave.y= Sunwave.y * -1;
 }

  if(circles == true){
    for(int x=1; x<255; x++){
      noFill();
      stroke(strokecolor);
      ellipse(width/2,height/3, (x*100), (x*5));
    }
  }
 
 noStroke();
 fill(foreground);
 rect(0,height/1.5,width,height);
 
 
 
 int b = int(map(mouseY, 0, height,0,60));

  
  
 fill(sunColor);
 ellipse(200,Sunwave.x,50,50);  

    
}

void keyPressed() {
  
  circles= true;

  
}

void mousePressed() {

  ibackgroundcolor= ibackgroundcolor + 1;
  
 if (ibackgroundcolor == 6){
   
     ibackgroundcolor = 1;
     
 }
  
  if(ibackgroundcolor == 1){
    
    actualbackgroundcolor = #8EB9A8;
    commentcolor = FG ;
    foreground = #FEFBD0;
    strokecolor = 200;
    sunColor = foreground - 100;
  } else if (ibackgroundcolor == 2){
    
    actualbackgroundcolor= #FEFBD0;
    commentcolor = SM ;
    foreground =#FDCFB7;
    strokecolor = 200;
    sunColor = foreground - 100;
  } else if (ibackgroundcolor == 3){
    
    actualbackgroundcolor = #FDCFB7;
    commentcolor= PS ;
    foreground = #F4828C;
    strokecolor= 200;
    sunColor = foreground - 100;
  } else if (ibackgroundcolor == 4){
    
    actualbackgroundcolor = #F4828C;
    commentcolor = FS;
    foreground   = #775D6A;
    strokecolor= 200;
    sunColor = foreground;
  } else if(ibackgroundcolor == 5){
    
    actualbackgroundcolor = #775D6A;
    commentcolor = PD;
    foreground   = #8EB9A8;
    strokecolor = 0;
    sunColor = foreground + 100;
    
  }
  
  println("the new background color is: " + commentcolor); 
  println("the new color plate is: " + ibackgroundcolor);
  
  }



//notes
/*



What is this Sketch all about?
its a planetary scene with a different color arangements
I think I also will have the scene change colors if a key is pressed

im not sure what I want to do with mouse yet tbh
maybe it be like a press anykey or click for color change

i also need animation.... 
maybe like birds animations. that be cool


this sketch has different color arangements 
depending on the randomly selected ibackground color
*/