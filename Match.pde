class Match
{
  int team1;
  int team2;

  int score1;
  int score2;

  Match(int team1, int team2)
  {
    this.team1=team1;
    this.team2=team2;
  }

  int whoWon()
  {
    score1= (int)random(0, 8);
    score2= (int)random(0, 8);

    if (score1>score2)
    {
      return team1;
    }
    if (score2>score1)
    {
      return team2;
    } else
    {
      return 0;
    }
  }
}

