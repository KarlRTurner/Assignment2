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
  if (start==false)
  {
    intro.splash();
    if (keyPressed)
    {
      println(start);
      start=true;
    }
  } else
  {
    mainMenu();
    intro.statusBar();
  }

  //mainMenu();
}//draw

void mainMenu()
{

  int ouline=3;
  stroke(#003399);

  fill(#226644);
  textSize(width/25);
  text("", width/2, height/10);

  fill(#e1e1e1);
  rect(width/2, height/3, -width/3, height/3);
  rect(width/2, height/3, width/3, height/3);

  textSize(150);
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
}