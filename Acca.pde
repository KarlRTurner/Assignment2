class Acca extends Bet
{
  int[] picks;

  Acca(ArrayList<Integer> pick, float stake)
  {
    this.picks = new int[pick.size()];
    
    for (int i=0; i<picks.length; i++)
    {
      picks[i] = pick.get(i);
    }

    this.stake=stake;
  }



  float payout()
  {
    float total=0;
    for (int i =0; i < picks.length; i++)
    {
      total*=league.get(picks[i]).current_odds;
    }
    super.odds =total;

    winnings=(odds*stake)+stake;
    return winnings;
  }
}