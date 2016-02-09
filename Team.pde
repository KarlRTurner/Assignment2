class Team
{
  int pos;
  String name;
  int wins;
  int losses;
  int draws;
  int pts;
  int gd;
  float current_odds;

  Team(int pos, String name) 
  {
    this.pos=pos;
    this.name= name;
    current_odds=random(1.00, 2.00);
  }
  
  void setPos(int pos)
  {
    this.pos=pos;
  }

  void gameday(int score1, int score2)
  {
    if (score1> score2)
    {
      wins++;
    } else if (score1== score2)
    {
      draws++;
    } else
    {
      losses++;
    }
    current_odds=random(1.00, 2.00);
    pts = (wins*3 )+(draws);

    gd+=score1;
    gd-=score2;
  }
}