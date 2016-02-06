void setup()
{
  size(1600, 900);

  wager= new ArrayList<Bet>();
  GP = new ArrayList<Race>();
  rider = new ArrayList<Jockey>();
  equine = new ArrayList<Horse>();
  fixtures = new ArrayList<Match>();
  league = new ArrayList<Team>();
  start = false;
  intro = new Menus();
  save = new User();

  String[] line = loadStrings("teams.txt");
  for (int i=0; i<line.length; i++)
  {
    league.add(new Team(i+1, line[i]));
  }

  for (int i=0; i<10; i++)
  {
    equine.add(new Horse());
    rider.add(new Jockey());
  }

  tinder();
}
int week;
boolean start;
Menus intro;
User save;
ArrayList<Bet> wager;
ArrayList<Race> GP;
ArrayList<Jockey> rider;
ArrayList<Horse> equine;
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

  intro.bet();
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
  int g=0;

  for (int i = 0; i < league.size(); i++)
  {
    for (int j = 0; j < league.size(); j++)
    {
      if (i!=j)
      {
        if (league.get(i).pts > league.get(j).pts)
        {
          g++;
        } else if (league.get(i).pts == league.get(j).pts && league.get(i).gd > league.get(j).gd)
        {
          g++;
        } else if (league.get(i).pts == league.get(j).pts && league.get(i).gd == league.get(j).gd && 0>league.get(i).name.compareTo(league.get(j).name))
        {
          g++;
        }
      }
    }
    league.get(i).setPos(19-g);
    g=0;
  }

  save.week++;
}