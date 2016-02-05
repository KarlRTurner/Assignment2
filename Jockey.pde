class Jockey extends Racer
{

  color colour;
  Jockey()
  {
    super();
    super.weight= random(100, 145);
    colour = color(random(0, 255), random(0, 255), random(0, 255));
    
    String[] line = loadStrings("jockies.txt");
    name=line[(int)random(0,line.length)];
  }
}