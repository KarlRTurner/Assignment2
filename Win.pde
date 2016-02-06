class Win extends Bet
{
  int pick;

  Win(int pick, float stake, String sport)
  {
    this.pick = pick;
    super.stake = stake;
    super.sport=sport;
  }

  float payout()
  {
    winnings=(odds*stake)+stake;
    return winnings;
  }
}