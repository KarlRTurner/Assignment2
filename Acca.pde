class Acca extends Bet
{
  ArrayList<Integer> picks;
  ArrayList<Float> odds;
  
  Acca(int picks)
  {
    
  }

  void winnngs()
  {
    float total;
    for (int i =0; i > odds.size; i++)
    {
      total*=odds.get(i);
    }
    //super.odds =total;
  }
}

