void setup()
{
  size(1600, 900);
  wagers= new ArrayList<Bet>();
  GP = new ArrayList<Race>();
  entries = new ArrayList<Racer>();
  fixtures = new ArrayList<Match>();
  league = new ArrayList<Team>();
  start = false;
  intro = new Splash();

  status=createFont("Yu Gothic", 11);
}
PFont status;
boolean start;
Splash intro;
ArrayList<Bet> wagers;
ArrayList<Race> GP;
ArrayList<Racer> entries;
ArrayList<Match> fixtures;
ArrayList<Team> league;

void draw()
{
  background(#ffffff);
  if (start==false)
  {
    intro.display();
    if (keyPressed)
    {
      println(start);
      start=true;
    }
  } else
  {
  }
  statusBar();
}//draw

void statusBar()
{
  float cash=500;
  int week=0;
  float barHeight=height/20;

  stroke(#999999);
  fill(#999999);
  rect(0, 0, width, barHeight);

  textAlign(RIGHT, CENTER);
  fill(#ffffff);
  textFont(status, 25);

  text("Cash: €" + cash, width, barHeight/2.6);
  textAlign(LEFT, CENTER);
  text("Week: " + week, 0, barHeight/2.6);
}