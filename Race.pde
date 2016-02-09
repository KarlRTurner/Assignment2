class Race
{
  int winner;
  float[] horses;

  Race()
  {
    horses = new float[10]; 
    for (int i=0; i< 10; i++)
    {
      horses[i] = equine.get(i).speed-equine.get(i).weight +rider.get(i).speed-rider.get(i).weight;

      equine.get(i).setSkill(horses[i]);
    }
  }

  void winner()
  {
    float temp =0;
    for (int i = 1; i < horses.length; i++) {
      for (int j = i; j > 0; j--) {
        if (horses[j] < horses[j-1]) {
          temp = horses[j];
          horses[j] = horses[j-1];
          horses[j-1] = temp;
        }
      }
    }
  }
}