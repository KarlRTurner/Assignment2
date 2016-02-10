class Horse extends Racer
{
  PVector place;
  float skill;
  Horse(float y)
  {
    
    super();
    place = new PVector(0, (y*50)+(height/4));
    weight= random(900, 1100);
    skill = random(900, 1100);
    odds =random(1.0, 2.0);
    String[] line = loadStrings("horse.txt");
    name=line[(int)random(0, line.length)];
  }

  void setSkill(float spd)
  {
    skill = map(spd, -245, 245, 1.0, 5.0);
  }
  void move(int num)
  {
    place.x-= skill;
   
  }

  void display(color c)
  {
    pushMatrix(); 
    translate(place.x, place.y);
    strokeWeight(10);
    stroke(#936A49);
    line(10, 10, 10, 35);
    line(50, 10, 50, 35);
    line(10, 10, 50, 10);
    line(50, 10, 60, -10);
    stroke(c);
    line(60, -10, 70, 2);
    popMatrix();
    strokeWeight(1);
  }
}