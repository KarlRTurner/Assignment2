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
  
  String[] line = loadStrings("teams.txt");

  //loop through the data
  for (int i=0; i<line.length; i++)
  {
    league.add(new Team(i,line[i]));
  }
  
  tinder();
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
  background(#f0f0f0);
  /*if (keyPressed && start== false)
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
  }*/
  intro.football();
  intro.statusBar();
}//draw

void tinder()
{
  for (int i=0; i<league.size(); i+=2)
  {
    fixtures.add(new Match(i,i+1));
  }
}