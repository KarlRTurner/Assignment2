void setup()
{
  size(1600,900);
  
}

void draw()
{
  boolean start= false;
  background(255);
  if(start==false)
  {
    intro();
  }
  
}

void intro()
{
  PImage photo;
  photo = loadImage("horse.png");
  image(photo,width/4,height/3);
  
  textFont(loadFont("ArialNarrow-BoldItalic-150.vlw"), 150);
  fill(0);
  
  textAlign(CENTER);
  text("Gambling Simulator", width/2, height/3);
  textAlign(LEFT);
  text("2016",width/2, height/2);
}
