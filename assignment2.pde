void setup()
{
  size(1600, 900);
  
  wagers= new ArrayList<Bet>();
  GP = new ArrayList<Race>();
  entries = new ArrayList<Racer>();
  fixtures = new ArrayList<Match>();
  league = new ArrayList<Team>();
  start = false;
  intro = new Menus();
}

boolean start;
Menus intro;
ArrayList<Bet> wagers;
ArrayList<Race> GP;
ArrayList<Racer> entries;
ArrayList<Match> fixtures;
ArrayList<Team> league;

void draw()
{
  background(#ffffff);
  if (keyPressed && start== false)
    {
      println(start);
      start=true;
    }
  if (start==false)
  {
    intro.splash();
  } else
  {
    intro.mainMenu();
    intro.statusBar();
  }
}//draw