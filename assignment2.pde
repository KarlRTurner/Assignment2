void setup()
{
  size(2100, 900);
}

void draw()
{
  boolean start= false;
  Bet cheeky;
  cheeky =  new Acca();
  background(255);
  if (start==false)
  {
    intro();
  }
}


void intro()
{
  PImage photo;
  photo = loadImage("race.jpg");
  //image(photo, width/4, height/3);
  image(photo, 0, 0,width,height);

  textFont(loadFont("ArialNarrow-BoldItalic-150.vlw"), 150);
  
  int ouline=3;
  
  fill(0);
  textAlign(CENTER,CENTER);
  text("Gambling Simulator", (width/2)+ouline, (height/3)+ouline);
  text("Gambling Simulator", (width/2)-ouline, (height/3)+ouline);
  text("Gambling Simulator", (width/2)+ouline, (height/3)-ouline);
  text("Gambling Simulator", (width/2)-ouline, (height/3)-ouline);
  textAlign(LEFT);
  text("2016", (width/2)+ouline, (height/2)+ouline);
  text("2016", (width/2)-ouline, (height/2)+ouline);
  text("2016", (width/2)+ouline, (height/2)-ouline);
  text("2016", (width/2)-ouline, (height/2)-ouline);
  
  fill(#e1e1e1);
  textAlign(CENTER,CENTER);
  text("Gambling Simulator", width/2, height/3);
  textAlign(LEFT);
  text("2016", width/2, height/2);
  
  
}//end intro

