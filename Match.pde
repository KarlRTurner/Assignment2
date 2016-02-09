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

    league.get(team1).gameday(score1, score2);

    league.get(team2).gameday(score2, score1);


    if (score1> score2)
    {
      return 0;
    } else if (score1== score2)
    {
      return -1;
    } else
    {
      return 1;
    }
  }
}