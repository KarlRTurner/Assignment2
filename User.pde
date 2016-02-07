class User
{
  float money;
  int week;
  PrintWriter output;

  User()
  {
    week=0;
    money=500;
  }

  User(String one, String two)
  {
    int week = Integer.parseInt(one);
    float money = Float.parseFloat(two);
    this.week = week;
    this.money= money;
  }

  void floppyDisk()
  {
    output = createWriter("savefile.txt");
    output.println(week + "\n" + money);
    output.flush();
    output.close(); 
  }
}