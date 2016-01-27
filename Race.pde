class Race
{
  int winner;
  int[] jockies;
  int[] horses;

  Race(ArrayList<Integer> horses, ArrayList<Integer> jockies)
  {
    this.horses = new int[horses.size()];
    this.jockies = new int[jockies.size()];

    for (int i=0; i< jockies.size(); i++)
    {
      this.horses[i] = horses.get(i);
      this.jockies[i] = jockies.get(i);
    }
  }
  
  
  
  
}

