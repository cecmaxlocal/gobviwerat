// Here is the Dart file `current.dart` with a function and explanation improving the per-capita population change model by ensuring it doesn't go below -1, reflecting at most one death per capita, modeled as an exponential decay shifted down by 1:

// ```dart
// current.dart

import 'dart:math';

/// Computes per-capita population change ΔP / P based on a shifted exponential decay.
/// This enforces a lower bound of -1 to prevent unrealistic mortality rates.
double perCapitaChange(double P, double r, double K) {
  if (P < 0) return -1; // cannot be less than -1
  return exp(-r * P / K) - 1;
}

void main() {
  double P = 50;    // current population size
  double r = 2.0;   // decay rate parameter
  double K = 100.0; // carrying capacity

  double deltaPoverP = perCapitaChange(P, r, K);
  print('Per-capita population change ΔP/P = $deltaPoverP');
  print('This model ensures ΔP/P never falls below -1, representing at most one death per capita.');
}
// ```

// ### Explanation:
// - The function models per-capita change as an exponential decay shifted down by 1.
// - This keeps the change bounded below by -1, meaning no more than one death per individual.
// - The function realistically captures the population decline dynamics respecting biological constraints.

// This approach improves earlier linear assumptions by aligning better with biological realities.[1][3][5]

// [1](https://en.wikipedia.org/wiki/Ricker_model)
// [2](https://www.pnas.org/doi/10.1073/pnas.1416538112)
// [3](https://sites.warnercnr.colostate.edu/wp-content/uploads/sites/73/2017/06/Lecture-2-Density-dependent-models.pdf)
// [4](https://www.sciencedirect.com/science/article/abs/pii/S0025556418300178)
// [5](https://hankstevens.github.io/Primer-of-Ecology/DDgrowth.html)
// [6](https://onlinelibrary.wiley.com/doi/full/10.1002/ece3.10010)
// [7](https://pubmed.ncbi.nlm.nih.gov/20715637/)
// [8](https://math.montana.edu/grad_students/writing-projects/2007/07taylor.pdf)
