void setup()
{
  size(1800, 900);

  wagers= new ArrayList<Bet>();
  GP = new ArrayList<Race>();
  entries = new ArrayList<Racer>();
  fixtures = new ArrayList<Match>();
  league = new ArrayList<Team>() ;
}

ArrayList<Bet> wagers;
ArrayList<Race> GP;
ArrayList<Racer> entries;
ArrayList<Match> fixtures;
ArrayList<Team> league;

void draw()
{
  boolean start = false;
  ArrayList<Integer> pick;
  pick = new ArrayList<Integer>();
  pick.add(5);
  Bet cheeky;
  cheeky =  new Acca(pick, 2.50);
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
  image(photo, 0, 0, width, height);
  textFont(loadFont("ArialNarrow-BoldItalic-150.vlw"), 150);

  int ouline=3;

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

