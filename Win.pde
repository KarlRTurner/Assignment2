class Win extends Bet
{
  

  Win(String pickname,int pick, float stake )
  {
    this.pick=pick;
    this.pickname = pickname;
    super.stake = stake;
    odds=equine.get(pick).odds;
    week=save.week;
  }

  float payout()
  {
    winnings=(odds*stake)+stake;
    return winnings;
  }
}