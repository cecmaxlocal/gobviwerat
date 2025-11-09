
// gobviwerat.dart

// Logistic growth formula representation:
// Pt+1 = floor(Pt + r * Pt * (1 - Pt / K))

void main() {
  // Variables: P (population at time t), r (growth rate), K (carrying capacity)
  int logisticGrowth(int Pt, double r, int K) {
    // Calculate next population using the formula
    double nextPt = Pt + r * Pt * (1 - Pt / K);
    return nextPt.floor();
  }

  // Example usage:
  int Pt = 10;    // initial population
  double r = 0.1; // growth rate
  int K = 100;    // carrying capacity

  int Pt1 = logisticGrowth(Pt, r, K);
  print('Next population (Pt+1): $Pt1');
}
