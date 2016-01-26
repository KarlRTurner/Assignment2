class Acca extends Bet
{
  int[] picks;

  Acca(ArrayList<Integer> pick)
  {
    this.picks = new int[pick.size()];

    for (int i=0; i<picks.length; i++)
    {
      picks[i] = pick.get(i);
    }
  }
  
  void oddsCalc()
  {
    
  }

  void winnngs()
  {
    float total;
    /*for (int i =0; i > odds.size (); i++)
     {
     total*=odds.get(i);
     }
     super.odds =total;*/

    winnings=(pick*stake)+stake;
    return winnings;
  }
}

