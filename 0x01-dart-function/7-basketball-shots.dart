// 7-basketball-shots.dart

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int totalA = (teamA['Free throws'] ?? 0) + ((teamA['2 pointers'] ?? 0) * 2) + ((teamA['3 pointers'] ?? 0) * 3);
  int totalB = (teamB['Free throws'] ?? 0) + ((teamB['2 pointers'] ?? 0) * 2) + ((teamB['3 pointers'] ?? 0) * 3);

  return totalA > totalB ? 1 : totalA < totalB ? 2 : 0;
}
