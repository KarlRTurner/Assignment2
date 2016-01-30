void setup()
{
  size(1800, 900);

  wagers= new ArrayList<Bet>();
  GP = new ArrayList<Race>();
  entries = new ArrayList<Racer>();
  fixtures = new ArrayList<Match>();
  league = new ArrayList<Team>();
  start = false;

  
}
boolean start;

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
    Splash intro = new Splash();
    intro.display();
  }
}


