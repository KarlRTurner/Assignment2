class Menus
{
  PImage photo;
  int ouline;
  PFont enter;
  PFont title;
  PFont info;
  int selected;
  PVector pb, t;
  color h, f, b, p;
  ArrayList<Integer> acca;
  int pick;
  ArrayList<Integer> amount;
  int c=0;
  boolean err;
  String bets;

  Menus()
  {
    photo = loadImage("horses1.jpg");
    enter = createFont("Arial", 32);
    title = loadFont("ArialNarrow-BoldItalic-150.vlw");
    info=createFont("Yu Gothic", 11);
    ouline=3;
    pb = new PVector( (width*0.75), (height/4)+(11*50)  );
    t = new PVector( (width*0.75), (height/5)  );
    acca= new ArrayList<Integer>();

    c=0;
    amount = new ArrayList<Integer>();
    err=false;
    
    

    h =  color(#00C42C);
    f =  color(#00BDFF);
    b =  color(#DE3838);
    p =  color(#EE00EE);
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

    text("€" + nf(save.money,1,2) + " Week " + save.week, width-10, barHeight/2.6);

    strokeWeight( 2 );
    stroke(#ffffff);
    noFill();
    beginShape();
    vertex(50, 10);
    vertex(60, 10);
    vertex(70, 15);
    vertex(70, 30);
    vertex(50, 30);
    vertex(50, 10);
    endShape();

    beginShape();
    vertex(55, 30);
    vertex(55, 21);
    vertex(65, 21);
    vertex(65, 30);
    endShape();
    bets="bets placed this week:";
    for (int i=0; i<wager.size(); i++)
    {
    if(wager.get(wager.size()-i-1).week==save.week)
    {
     bets=bets+'$';
    }
    
    }
    textAlign(LEFT,CENTER);
    text(bets, 100+(0*20),barHeight/2);

    line(10, height/40, 30, height/40 + height/50);
    line(10, height/40, 30, height/40 - height/50);
    strokeWeight( 1 );
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
    acca.clear();
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


    stroke(#ffffff);
    //horse
    fill(h);
    rect(width/2, height/3, -width/3, height/4);
    //football
    fill(f);
    rect(width/2, height/3, width/3, height/4);
    //bets
    fill(b);
    rect(width/2, (height/3)*2, -width/3, height/4);
    //proceed
    fill(p);
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
    fill(f);
    rect(width/2, -1, (width/2)+1, height+1);

    textFont(info, 30);
    textAlign(CENTER);
    fill(#000000);
    text("Game Week " + save.week, t.x, t.y);
    for (int i=0; i<10; i++)
    {
      noFill();
      rect(width/2, (height/4)+(i*50)-35, (width/2), 50);
      text(nf(league.get(fixtures.get(i).team1).current_odds ,1,2)+"    " + league.get(fixtures.get(i).team1).name +   " vs "  + league.get(fixtures.get(i).team2).name + "    "+ nf(league.get(fixtures.get(i).team2).current_odds ,1,2), (width*0.75), (height/4)+(i*50));
    }
    text("Place bet", pb.x, pb.y );


    fill(#ffff00);
    for (int i=0; i<acca.size(); i++)
    {
      if (acca.get(i)%2==0)
      {
        ellipse((width/2)+(width/20), (height/4)+((acca.get(i)/2)*50)-15, 20, 20);
      } else
      {
        ellipse(width-(width/20), (height/4)+((acca.get(i)/2)*50)-15, 20, 20);
      }
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
    fill(h);
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
      text(nf(equine.get(i).odds,1,2), (width*0.75), (height/4)+(i*50));
    }

    text("Place bet", pb.x, pb.y );

    fill(#ffff00);
    ellipse((width/2)+(width/20), (height/4)+((pick)*50)-15, 20, 20);

    textAlign(LEFT);
    fill(#000000);
    text("Entries", (width/20), (height/5)-40);

    for (int j=0; j<10; j++)
    {
      text(rider.get(j).name, (width/20), (height/4)+(j*50));
      strokeWeight(10);
      stroke(#936A49);
      line(10+(width*0.3), 10+(height*0.20)+(j*50), 10+(width*0.3), 35+(height*0.20)+(j*50));
      line(50+(width*0.3), 10+(height*0.20)+(j*50), 50+(width*0.3), 35+(height*0.20)+(j*50));
      line(10+(width*0.3), 10+(height*0.20)+(j*50), 50+(width*0.3), 10+(height*0.20)+(j*50));
      line(50+(width*0.3), 10+(height*0.20)+(j*50), 60+(width*0.3), -10+(height*0.20)+(j*50));
      stroke(rider.get(j).colour);
      line(60+(width*0.3), -10+(height*0.20)+(j*50), 70+(width*0.3), 2+(height*0.20)+(j*50));
    }
  }

  void bet()
  {
    stroke(#000000);
    fill(b);
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

  void results()
  {
    stroke(#000000);
    fill(f);
    rect(width/2, -1, (width/2)+1, height+1);
    fill(h);
    rect(0, -1, (width/2)+1, height+1);
    textFont(info, 30);

    fill(#000000);

    textAlign(CENTER);
    text("Game week "+ (save.week%40) +" results", t.x, t.y);

    for (int i=0; i<10; i++)
    {
      noFill();
      rect(width/2, (height/4)+(i*50)-35, (width/2), 50);
      text(league.get(fixtures.get(i).team1).name +"    " +  fixtures.get(i).score1   + " - "+ fixtures.get(i).score2  + "    "+league.get(fixtures.get(i).team2).name, (width*0.75), (height/4)+(i*50));
    }

    textAlign(CENTER);
    fill(#000000);
    text("Results", t.x - width/2, t.y);
    for (int i=0; i<10; i++)
    {
      noFill();
      rect(width/2, (height/4)+(i*50)-35, (width/2), 50);
      textAlign(LEFT);
      text( i+1 + ". " + equine.get(i).name, (width*0.01), (height/4)+(i*50));
    }
  }

  void betBox(char s)
  {

    fill(#000000, 155);
    rect(0, 0, width, height);
    stroke(#000000);
    fill(#ffffff);
    rect(width/3, height/3, width/3, height/3);
    fill(#000000);
    textAlign(CENTER);
    text("Enter Amount to Bet", (width/2), (height/2)-80);
    if (keyPressed)
    {
      if (key>47 && key<58 && c<5)
      {
        int num = Character.getNumericValue(key);
        amount.add(num);
        c++;
      }
      if (key==8 && c>0)
      {
        c--;
        amount.remove(c);
      }
      if (key==10)
      {
        int amt =0;
        for (int i=0; i<amount.size(); i++)
        {
          amt = amt + amount.get(i)* (int)pow( 10, amount.size()-i-1);
        }
        if (amt>save.money && amt>0)
        {
          err=true;
        } else
        {
          err=false;
          if (s=='f')
          {
            if (acca.size()>0)
            {
              wager.add( new Acca(acca, amt));
              save.money=save.money-amt;
              acca.clear();
            }
            selected=2;
          } else
          {
            wager.add( new Win(equine.get(pick).name, pick, amt));
            save.money=save.money-amt;
            selected=1;
          }
        }
        amount.clear();
        c=0;
      }
      key=0;
    }
    if (err)
    {
      fill(#aa0000);
      text("insufficient funds", (width/2), (height/2)+40);
    } 


    fill(#00aa00);
    text("€", (width/2)-(15), height/2);
    for (int i=0; i<amount.size(); i++)
    {
      text(amount.get(i), (width/2)+(i*15), height/2);
    }
  }

  void addPick(int p, boolean a)
  {
    if (a)
    {
      boolean add=true;
      boolean rem=false;
      if (acca.size()==0)
      {
        acca.add(p);
      } else
      {
        for (int i=0; i<acca.size(); i++)
        {
          if (acca.get(i)==p) 
          {
            add = false;
            rem=true;
          }
          if (p%2==1 && acca.get(i)==p-1 )
          {
            rem=true;
          }
          if (p%2==0 && acca.get(i)==p+1 )
          {
            rem=true;
          }

          if (rem)
          {
            acca.remove(i);
          }
          rem=false;
        }
        if (add)
        {
          acca.add(p);
          add=true;
        }
      }
    } else
    {
      pick=p;
    }
  }
}