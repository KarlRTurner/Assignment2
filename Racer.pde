abstract class Racer
{
  float speed;
  float weight;
  int number;
  String name;

  Racer()
  {
    speed = random(1, 10);
    number = (int)random(0, 99);
  }
}

