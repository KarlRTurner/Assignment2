abstract class Bet
{
  float stake;
  float odds;
  float winnings;
  String sport;
  int week;

  Bet()
  {
  }

  float payout() {
    return 0;
  }
}