class Acca extends Bet
{
  ArrayList<Integer> picks;
  ArrayList<Float> odds;
  
  void Acca ()
  {
    odds = new ArrayList<Float>();
    for (int i =0; i > 20; i++)
    {
      odds.add(random(1.00,2.00));
    }
  }

  void winnngs()
  {
    float total;
    /*for (int i =0; i > odds.size; i++)
    {
      total*=odds.get(i);
    }*/
    super.odds =total;
  }
  
}

