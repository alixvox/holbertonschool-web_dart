// 7-basketball-shots.dart

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int totalA = teamA['Free throws']! + (teamA['2 pointer']! * 2) + (teamA['3 pointer']! * 3);
  int totalB = teamB['Free throws']! + (teamB['2 pointer']! * 2) + (teamB['3 pointer']! * 3);

  return totalA > totalB ? 1 : totalA < totalB ? 2 : 0;
}
