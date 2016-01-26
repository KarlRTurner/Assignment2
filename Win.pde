class Win extends Bet
{
  int pick;
  
  Win(int pick ,float stake)
  {
    this.pick = pick;
    super.stake = stake;
  }
  
  float winnings()
  {
    winnings=(odds*stake)+stake;
    return winnings;
  }
  
  
}
