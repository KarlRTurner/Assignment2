 class Splash
{
  PImage photo;
  int ouline;
  PFont enter;
  PFont title;

  Splash()
  {
    photo = loadImage("horses1.jpg");
    enter = createFont("Arial", 32);
    title = loadFont("ArialNarrow-BoldItalic-150.vlw");
    ouline=3;
  }

  void display()
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
}