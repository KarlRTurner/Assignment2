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
  
  void oddsCalc()
  {
    
  }

  float payout()
  {
    float total;
    /*for (int i =0; i > odds.size (); i++)
     {
     total*=odds.get(i);
     }
     super.odds =total;*/

    //winnings=(picks*stake)+stake;
    return winnings;
  }
}

