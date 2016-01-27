class Race
{
  int winner;
  int[] jockies;
  int[] horses;

  Race(ArrayList<Integer> horses, ArrayList<Integer> jockies)
  {
    this.horses = new int[horses.size()];
    this.jockies = new int[jockies.size()];

    for (int i=0; i<jockies.length; i++)
    {
      horses[i] = horses.get(i);
      jockies[i] = jockies.get(i);
    }
  }
}

