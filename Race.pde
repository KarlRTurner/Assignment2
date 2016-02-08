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

  
}