void setup()
{
  size(1600, 900);

  wager= new ArrayList<Bet>();
  rider = new ArrayList<Jockey>();
  equine = new ArrayList<Horse>();
  fixtures = new ArrayList<Match>();
  league = new ArrayList<Team>();
  start = false;
  gui = new Menus();


  String[] save1 = loadStrings("savefile.txt");
  if (save1 == null)
  {
    save = new User();
  } else
  {
    save = new User(save1[0], save1[1]);
  }

  String[] line = loadStrings("teams.txt");
  for (int i=0; i<line.length; i++)
  {
    league.add(new Team(i+1, line[i]));
  } 
  save.floppyDisk();
  tinder();
}
int week;
boolean start;
Menus gui;
User save;
ArrayList<Bet> wager;
Race GP;
ArrayList<Jockey> rider;
ArrayList<Horse> equine;
ArrayList<Match> fixtures;
ArrayList<Team> league;

void draw()
{
  background(#f0f0f0);

  if (start==false)
  {
    gui.splash();
  } else
  {
    switch(gui.selected) {
    case 0: 
      gui.mainMenu();
      gui.statusBar();
      break;
    case 1: 
      gui.horse();
      gui.statusBar();
      break;
    case 2: 
      gui.football();
      gui.statusBar();
      break;
    case 3: 
      gui.bet();
      gui.statusBar();
      break;
    case 4: 

      background(#00aa00);
      for (int i=0; i<10; i++)
      {

        equine.get(i).move(i);
        equine.get(i).display(rider.get(i).colour);
        if (equine.get(i).place.x>width+100)
        {
          weekend();
          gui.selected=5;
        }
      }
      break;
    case 5:
      gui.results();
      gui.statusBar();
      break;
    case 10:
      gui.horse();
      gui.statusBar();
      gui.betBox('h');
      break;
    case 20:
      gui.football();
      gui.statusBar();
      gui.betBox('f');
      break;
    }
  }
}//draw

void weekend()
{

  int winner[] = new int[10];
  GP.winner();
  Horse temp = new Horse(0);
  for (int i = 1; i < equine.size(); i++) {
    for (int j = i; j > 0; j--) {
      if (equine.get(j).skill < equine.get(j-1).skill) {
        temp = equine.get(j);
        equine.set(j, equine.get(j-1));
        equine.set(j-1, temp);
      }
    }
  }

  for (int i = 0; i < 10; i++)
  {
    winner[i]=(i*2)+fixtures.get(i).whoWon();
  }

  for (int k=0; k<wager.size(); k++)
  {
    println(winner[0]);
    if (wager.get(wager.size()-1-k).week==save.week &&  wager.get(wager.size()-1-k) instanceof Acca )
    {
      int win =0;
      for (int i = 0; i < wager.get(wager.size()-1-k).picks.length; i++)
      {
        for (int j =0; j < 10; j++)
          if (wager.get(wager.size()-1-k).picks[i]==winner[j])
          {
            println(winner[0]);
            win++;
          }
      }
      if (win==wager.get(wager.size()-1-k).picks.length)
      {
        save.money+=wager.get(wager.size()-1-k).payout();
      }
    } else if (wager.get(wager.size()-1-k).week==save.week &&  wager.get(wager.size()-1-k) instanceof Win )
    {
      if (wager.get(wager.size()-1-k).pickname==equine.get(0).name)
      {
        save.money+=wager.get(wager.size()-1-k).payout();
      }
    }
  }
}

void tinder() {

  fixtures.clear();
  equine.clear();
  rider.clear();
  for (int i=0; i<league.size(); i+=2)
  {

    int h=  ((i+(save.week%19))%19) + 1 ;
    int a =  ((i+(1+save.week)%19)%19) + 1 ;
    if (i==0)
    {
      fixtures.add(new Match(0, a));
    } else
    {
      fixtures.add(new Match(h, a));
    }
  }

  Bet temp;
  for (int i = 1; i < equine.size(); i++) {
    for (int j = i; j > 0; j--) {
      if (wager.get(j).winnings - wager.get(j).stake < wager.get(j-1).winnings- wager.get(j-1).stake) {
        temp = wager.get(j);
        wager.set(j, wager.get(j-1));
        wager.set(j-1, temp);
      }
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

  for (int i=0; i<10; i++)
  {
    equine.add(new Horse(i));
    rider.add(new Jockey());
  }
  GP = new Race();

  save.week++;
}

void keyPressed()
{
  if (start == false)
  {
    start=true;
    gui.selected=0;
  }
}

void mousePressed()
{
  if (start == true )
  {
    if (gui.selected==0)
    {
      if (mouseX> (width/2)-(width/3) && mouseY> height/3 && mouseX < width/2 && mouseY < (height/3) + (height/4))
      {
        gui.selected=1;
      }
      if (mouseX>width/2  && mouseY> height/3 && mouseX < (width/2)+(width/3) && mouseY < (height/3) + (height/4))
      {
        gui.selected=2;
      }
      if (mouseX> (width/2)-(width/3)  && mouseY> (height/3)*2 && mouseX < width/2 && mouseY < ((height/3) * 2) + (height/4))
      {
        gui.selected=3;
      }
      if (mouseX>width/2  && mouseY> (height/3)*2 && mouseX < (width/2)+(width/3) && mouseY < ((height/3) * 2) + (height/4))
      {
        gui.selected=4;
      }
    } else
    {
      if (mouseX> 0 && mouseY> 0 && mouseX < 30 && mouseY < height/20)
      {
        if (gui.selected==5)
        {
          tinder();
        }
        gui.selected=0;
      }
      if (gui.selected==1 || gui.selected==10)
      {
        PVector mouse = new PVector(mouseX, mouseY);
        if (gui.pb.dist(mouse)<100)
        {
          gui.selected=10;
        }

        if (mouseX > width/2 && mouseY > (height/4)-35 && mouseX < width && mouseY < (height/4)+(10*50)+35)
        {
          for (int i=0; i<10; i++ )
          {
            if (mouseY> (height/4)+(i*50)-35 && mouseY < (height/4)+((i+1)*50)-35 && mouseX> width/2 && mouseX < width)
            {
              gui.addPick(i, false);
            }
          }
        }
      }
      if (gui.selected==2 || gui.selected==20)
      {
        PVector mouse = new PVector(mouseX, mouseY);
        if (gui.pb.dist(mouse)<100)
        {
          gui.selected=20;
        }
        if (mouseX> width/2 && mouseY> (height/4)-35 && mouseX < width && mouseY < (height/4)+(10*50)+35)
        {
          int p=0;
          for (int i=0; i<10; i++ )
          {
            if (mouseY> (height/4)+(i*50)-35 && mouseY < (height/4)+((i+1)*50)-35)
            {
              if (mouseX> width/2 && mouseX < width*0.75)
              {
                gui.addPick(p, true);
              }
              if (mouseX> width*0.75 && mouseX < width)
              {
                gui.addPick(p+1, true);
              }
            }
            p+=2;
          }
        }
      }
    }
    if (mouseX> 30 && mouseY> 0 && mouseX < 80 && mouseY < height/20 && start == true)
    {
      save.floppyDisk();
    }
  }
}