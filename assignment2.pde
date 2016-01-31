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
  status = new Status();
  
}

boolean start;
Status status;
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
    status.statusBar();
  }
  
}//draw