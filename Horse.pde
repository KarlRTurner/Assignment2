class Horse extends Racer
{
  PVector place;
  Horse()
  {
    super();
    weight= random(900, 1100);
    String[] line = loadStrings("horse.txt");
    name=line[(int)random(0,line.length)];
  }

  void display()
  {
  }

  void move()
  {
  }
}