// Here is the Dart file `guides.dart` with a function 
// representing the graph function $$ F(P) = P r (1 - \frac{P}{K}) 
// $$, where the exponential nature causes the decay and the factor 
// $$P$$ causes the initial rise near the origin:

// ```dart
// guides.dart

double logisticFunction(double P, double r, double K) {
  if (P < 0) return 0; // population can't be negative
  return P * r * (1 - P / K);
}

void main() {
  double P = 10.0; // current population
  double r = 0.1;  // growth rate constant
  double K = 100.0; // carrying capacity

  double F_P = logisticFunction(P, r, K);
  print('F(P) = $F_P');
}
// ```

// ### Explanation:
// - $$P$$ is the current population.
// - $$r$$ is the growth rate factor.
// - $$K$$ is the carrying capacity.
// - The function grows for low $$P$$, peaks, then decays exponentially as $$P$$ approaches and exceeds $$K$$.

// This formula is a classic logistic growth representation used in population dynamics to model the rise and eventual stabilization or decline of populations in an environment with limited resources.[1][2][5]

// [1](https://fiveable.me/ap-calc/unit-7/logistic-models-with-differential-equations/study-guide/VWm383QcmHtCJYsFXl0G)
// [2](https://math.libretexts.org/Bookshelves/Calculus/Calculus_(OpenStax)/08:_Introduction_to_Differential_Equations/8.04:_The_Logistic_Equation)
// [3](https://study.com/academy/lesson/logistic-population-growth-equation-definition-graph.html)
// [4](https://www.khanacademy.org/science/ap-biology/ecology-ap/population-ecology-ap/a/exponential-logistic-growth)
// [5](https://en.wikipedia.org/wiki/Logistic_function)
// [6](https://www.youtube.com/watch?v=JgMvB22XQs0)
// [7](https://sites.math.duke.edu/education/ccp/materials/diffeq/logistic/logi1.html)
// [8](https://www.creativesafetysupply.com/glossary/logistic-growth/)
// [9](https://byjus.com/maths/logistic-function/)
