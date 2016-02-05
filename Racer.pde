abstract class Racer
{
  float speed;
  float weight;
  int id;
  String name;
  float odds;

  Racer()
  {
    speed = random(1, 10);
    id = (int)random(0, 99);
  }
}//end class