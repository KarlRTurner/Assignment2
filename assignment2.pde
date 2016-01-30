void setup()
{
  size(1800, 900);

  wagers= new ArrayList<Bet>();
  GP = new ArrayList<Race>();
  entries = new ArrayList<Racer>();
  fixtures = new ArrayList<Match>();
  league = new ArrayList<Team>();
  start = false;
  
   photo = loadImage("race.jpg");
}
boolean start;
PImage photo;
ArrayList<Bet> wagers;
ArrayList<Race> GP;
ArrayList<Racer> entries;
ArrayList<Match> fixtures;
ArrayList<Team> league;

void draw()
{
  background(255);
  if (keyPressed)
    {
      println(start);
      start=true;
    }
  
  if (start==false)
  {
    intro();
  }
}



void intro()
{
  
  int ouline=3;
  PFont enter;
  PFont title;

 
  image(photo, 0, 0, width, height);
  enter = createFont("Arial", 32);
  title =loadFont("ArialNarrow-BoldItalic-150.vlw");

  textFont(enter, 30);

  fill(#00ffff);
  textAlign(CENTER);
  text("Press Enter to continue", width/2, height*0.75);


  textFont(title, 150);

  fill(0);
  textAlign(CENTER, CENTER);
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
  textAlign(CENTER, CENTER);
  text("Gambling Simulator", width/2, height/3);
  textAlign(LEFT);
  text("2016", width/2, height/2);
}//end intro

