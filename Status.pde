class Status
{
  PFont info;

  Status()
  {
    info=createFont("Yu Gothic", 11);
  }

  void statusBar()
  {
    float cash=500;
    int week=0;
    float barHeight=height/20;

    stroke(#999999);
    fill(#999999);
    rect(0, 0, width, barHeight);

    textAlign(RIGHT, CENTER);
    fill(#ffffff);
    textFont(info, 25);

    text("€" + cash + " Week " + week, width-10, barHeight/2.6);
  }
}