class Menus
{
  PImage photo;
  int ouline;
  PFont enter;
  PFont title;
  PFont info;
  int selected;
  PVector pb , t;
  Menus()
  {
    photo = loadImage("horses1.jpg");
    enter = createFont("Arial", 32);
    title = loadFont("ArialNarrow-BoldItalic-150.vlw");
    info=createFont("Yu Gothic", 11);
    ouline=3;
    pb = new PVector( (width*0.75), (height/4)+(11*50)  );
    t = new PVector( (width*0.75), (height/5)  );
  }

  void statusBar()
  {
    float barHeight=height/20;

    stroke(#999999);
    fill(#999999);
    rect(0, 0, width, barHeight);

    textAlign(RIGHT, CENTER);
    fill(#ffffff);
    textFont(info, 25);

    text("€" + save.money + " Week " + save.week, width-10, barHeight/2.6);
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

    fill(#ffffff);
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

    fill(#ffffff);
    textAlign(CENTER, CENTER);
    text("Gambling Simulator", width/2, height*(0.13));
    textAlign(LEFT);
    text("2016", width/2, height*(0.3));
    stroke(#226644);

    //horse


    fill(#006600);
    rect(width/2, height/3, -width/3, height/4);

    //football
    fill(#00BDFF);
    rect(width/2, height/3, width/3, height/4);
    //bets
    fill(#0000ff);
    rect(width/2, (height/3)*2, -width/3, height/4);
    //proceed
    fill(#660066);
    rect(width/2, (height/3)*2, width/3, height/4);

    textFont(info, 40);
    fill(#e1e1e1);
    textAlign(LEFT, TOP);
    text(" Football", width/2, height/3);
    text(" Proceed to next week", width/2, (height/3)*2);
    text(" Horses", (width/2) -(width/3), height/3);
    text(" Bets", (width/2) -(width/3), (height/3)*2);
  }

  void football()
  {
    stroke(#000000);
    fill(#00BDFF);
    rect(width/2, -1, (width/2)+1, height+1);

    textFont(info, 30);
    textAlign(CENTER);
    fill(#000000);
    text("Game Week " + save.week, t.x, t.y);
    for (int i=0; i<10; i++)
    {
      noFill();
      rect(width/2, (height/4)+(i*50)-35, (width/2), 50);
      text(league.get(fixtures.get(i).team1).current_odds +"    " + league.get(fixtures.get(i).team1).name +   " vs "  + league.get(fixtures.get(i).team2).name + "    "+ league.get(fixtures.get(i).team2).current_odds, (width*0.75), (height/4)+(i*50));
    }
    text("Place bet", pb.x , pb.y );


    int pick =1;
    if (pick%2==0)
    {
      ellipse((width/2)+(width/20), (height/4)+((pick/2)*50)-15, 20, 20);
    } else
    {
      ellipse(width-(width/20), (height/4)+((pick/2)*50)-15, 20, 20);
    }



    textAlign(LEFT);
    fill(#000000);
    text("Team", (width/20), (height/8)-40);
    text("W", (width/20)+(width/10), (height/8)-40);
    text("D", (width/20)+(width/10)+100, (height/8)-40);
    text("L", (width/20)+(width/10)+200, (height/8)-40);
    text("GD", (width/20)+(width/10)+300, (height/8)-40);
    text("Pts", (width/20)+(width/10)+400, (height/8)-40);

    textFont(info, 24);

    for (int j=0; j<20; j++)
    {
      for (int i=0; i<20; i++)
      {
        if (j==league.get(i).pos)
        {
          text(league.get(i).name, (width/21), (height/8)+(j*40));
          text(league.get(i).wins, (width/20)+(width/10), (height/8)+(j*40));
          text(league.get(i).draws, (width/20)+(width/10)+100, (height/8)+(j*40));
          text(league.get(i).losses, (width/20)+(width/10)+200, (height/8)+(j*40));
          text(league.get(i).gd, (width/20)+(width/10)+300, (height/8)+(j*40));
          text(league.get(i).pts, (width/20)+(width/10)+400, (height/8)+(j*40));
        }
      }
    }
  }//end football

  void horse()
  {
    stroke(#000000);
    fill(#00C42C);
    rect(width/2, -1, (width/2)+1, height+1);

    textFont(info, 30);
    textAlign(CENTER);
    fill(#000000);
    text("Race Week " + save.week, t.x, t.y);

    for (int i=0; i<equine.size(); i++)
    {
      noFill();
      rect(width/2, (height/4)+(i*50)-35, (width/2), 50);
      textAlign(RIGHT);
      text(equine.get(i).name, (width*0.99), (height/4)+(i*50));
      textAlign(CENTER);
      text(equine.get(i).odds, (width*0.75), (height/4)+(i*50));
    }
    
    text("Place bet", pb.x , pb.y );

    int pick =9;
    fill(#ffff00);
    ellipse((width/2)+(width/20), (height/4)+((pick)*50)-15, 20, 20);

    textAlign(LEFT);
    fill(#000000);
    text("Entries", (width/20), (height/5)-40);

    for (int j=0; j<10; j++)
    {
      text(rider.get(j).name, (width/20), (height/4)+(j*50));
    }
  }

  void bet()
  {
    stroke(#000000);
    fill(#DE3838);
    rect(width/2, -1, (width/2)+1, height+1);
    fill(#00A0DE);
    rect(0, -1, (width/2)+1, height+1);
    textFont(info, 30);

    fill(#000000);
    if (wager.size()>=10)
    {
      textAlign(CENTER);
      text("Your Bottoms 10 bets", t.x, t.y);

      for (int i=0; i<10; i++)
      {
        line(width*0.501, (height/4)+(i*50)-35, width, (height/4)+(i*50)-35);
        textAlign(RIGHT);
        text(wager.get(i).winnings, (width*0.49), (height/4)+(i*50));
        textAlign(CENTER);
        text(wager.get(i).odds, (width*0.25), (height/4)+(i*50));
        textAlign(LEFT);
        text(wager.get(i).stake, (width*0.01), (height/4)+(i*50));
      }

      textAlign(CENTER);
      fill(#000000);
      text("Your Top 10 bets", t.x - width/2, t.y);

      for (int i=wager.size()-1; i>wager.size()-11; i--)
      {
        line(0, (height/4)+(wager.size()-1-i)*(50)-35, width/2, (height/4)+ (wager.size()-1-i)*(50)-35);
        textAlign(RIGHT);
        println(wager.size()-i);
        text(wager.get(i).winnings, (width*0.99), (height/4)+((wager.size()-1-i)*50));
        textAlign(CENTER);
        text(wager.get(i).odds, (width*0.75), (height/4)+((wager.size()-1-i)*50));
        textAlign(LEFT);
        text(wager.get(i).stake, (width*0.5), (height/4)+((wager.size()-1-i)*50));
      }
    } else
    {
      textAlign(CENTER);
      text("You must have atleast ten bets to see your record", (width*0.50), (height/5));
    }
  }
}