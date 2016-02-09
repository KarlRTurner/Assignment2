abstract class Bet
{
  float stake;
  float odds;
  float winnings;
  String sport;
  int[] picks;
  int pick;
  String pickname;
  int week;

  Bet()
  {
  }

  float payout() {
    return 0;
  }
}