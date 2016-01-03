class Racer
{
  float speed;
  float weight;
  int number;
  color colour;

  Racer()
  {
    speed = random(1, 10);

    number = (int)random(0, 99);
    colour = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

