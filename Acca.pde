class Acca extends Bet
{
  

  Acca(ArrayList<Integer> pick, float stake)
  {
    this.picks = new int[pick.size()];
    
    //store the picks and get the odds
    for (int i=0; i<picks.length; i++)
    {
      picks[i] = pick.get(i);
      if(pick.get(i)%2==0)
      {
        super.odds=super.odds+league.get(fixtures.get(pick.get(i)/2).team1).current_odds;
      }else
      {
        super.odds+=league.get(fixtures.get(pick.get(i)/2).team2).current_odds;
      }
    }

    this.stake=stake;
    week=save.week;
  }



  float payout()
  {
    winnings=(odds*stake)+stake;
    return winnings;
  }
}