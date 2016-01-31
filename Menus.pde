class Menus
{
  PImage photo;
  int ouline;
  PFont enter;
  PFont title;
  PFont info;

  Menus()
  {
    photo = loadImage("horses1.jpg");
    enter = createFont("Arial", 32);
    title = loadFont("ArialNarrow-BoldItalic-150.vlw");
    info=createFont("Yu Gothic", 11);
    ouline=3;
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


  void splash()
  {
    image(photo, 0, 0, width, height);

    textFont(enter, 30);
    fill(#00ffff);
    textAlign(CENTER);
    text("Press Any Key to Continue", width/2, height*0.75);


    textFont(title, 150);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Gambling Simulator", (width/2)+ouline, (height/3)+ouline);
    text("Gambling Simulator", (width/2)-ouline, (height/3)+ouline);
    text("Gambling Simulator", (width/2)+ouline, (height/3)-ouline);
    text("Gambling Simulator", (width/2)-ouline, (height/3)-ouline);
    textAlign(LEFT);
    text("2016", (width/2)+ouline, (height/2)+ouline);
    text("2016", (width/2)-ouline, (height/2)+ouline);
    text("2016", (width/2)+ouline, (height/2)-ouline);
    text("2016", (width/2)-ouline, (height/2)-ouline);

    fill(#e1e1e1);
    textAlign(CENTER, CENTER);
    text("Gambling Simulator", width/2, height/3);
    textAlign(LEFT);
    text("2016", width/2, height/2);
  }

  void mainMenu()
  {

    textFont(title, 150);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Gambling Simulator", (width/2)+ouline, (height*(0.13))+ouline);
    text("Gambling Simulator", (width/2)-ouline, (height*(0.13))+ouline);
    text("Gambling Simulator", (width/2)+ouline, (height*(0.13))-ouline);
    text("Gambling Simulator", (width/2)-ouline, (height*(0.13))-ouline);
    textAlign(LEFT);
    text("2016", (width/2)+ouline, (height*(0.3))+ouline);
    text("2016", (width/2)-ouline, (height*(0.3))+ouline);
    text("2016", (width/2)+ouline, (height*(0.3))-ouline);
    text("2016", (width/2)-ouline, (height*(0.3))-ouline);

    fill(#e1e1e1);
    textAlign(CENTER, CENTER);
    text("Gambling Simulator", width/2, height*(0.13));
    textAlign(LEFT);
    text("2016", width/2, height*(0.3));
    stroke(#226644);

    //horse
    fill(#006600);
    rect(width/2, height/3, -width/3, height/4);
    //football
    fill(#226644);
    rect(width/2, height/3, width/3, height/4);
    //bets
    fill(#0000ff);
    rect(width/2, (height/3)*2, -width/3, height/4);
    //proceed
    fill(#e1e1e1);
    rect(width/2, (height/3)*2, width/3, height/4);
  }
}