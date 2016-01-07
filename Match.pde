class Game
{
  int team1;
  int team2;

  int score1;
  int score2;

  float odds1;
  float odds2;

  Game(int team1, int team2)
  {
    this.team1=team1;
    this.team2=team2;
    odds1 = random(1, 2);
    odds2 = random(1, 2);
    
    score1= (int)random(0,8);
    score2= (int)random(0,8);
  }
  
  int whoWon()
  {
    if(score1>score2)
    {
      return team1;
    }
    if(score2>score1)
    {
      return team2;
    }
    else
    {
      return 0;
    }
  }
}

