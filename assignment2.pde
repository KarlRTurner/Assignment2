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
  save = new User();

  //frameRate(120);

  String[] line = loadStrings("teams.txt");
  for (int i=0; i<line.length; i++)
  {
    league.add(new Team(i+1, line[i]));
  }

  tinder();
  week=0;
}
int week;
boolean start;
Menus intro;
User save;
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

void tinder() {

  fixtures.clear();
  for (int i=0; i<league.size(); i+=2)
  {

    int h=  ((i+(week%19))%19) + 1 ;
    int a =  ((i+(1+week)%19)%19) + 1 ;
    if (i==0)
    {
      fixtures.add(new Match(0, a));
    } else
    {
      fixtures.add(new Match(h, a));
    }
  }

  Team temp = new Team(-1, "temp");
  for (int i = 1; i < league.size(); i++)
  {
    for (int j = i; j > 0; j--)
    {
      if (league.get(j).pts > league.get(j-1).pts) 
      {
        temp.pos = league.get(j).pos;
        league.get(j).setPos(league.get(j-1).pos);
        league.get(j-1).setPos( temp.pos);
      }
    }
  }
  
  save.week++;
}