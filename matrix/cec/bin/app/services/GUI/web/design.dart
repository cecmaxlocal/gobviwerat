// Here is the Dart file `design.dart` capturing the motivation 
// behind the Ricker model based on the per-capita population 
// change $$\Delta P / P = r (1 - P/K)$$ and its graphical 
// rationale:

// ```dart
// design.dart

/// This file illustrates the motivation for the Ricker model.
/// The per-capita population change ΔP / P = r (1 - P/K)
/// was chosen to produce the observed downward trend graphically,
/// capturing initial growth and eventual population limitation.

void main() {
  print('Motivation for the Ricker model:');
  print('The per-capita growth rate change ΔP / P = r (1 - P/K) is chosen');
  print('because it produces a downward trend as population P increases.');
  print('This functional form leads to growth near zero population and limits');
  print('growth as population approaches the carrying capacity K.');
  print('The model effectively captures realistic population dynamics graphically,');
  print('motivating its use in population biology.');
}
// ```

// This file conveys the qualitative reasoning behind the logistic-based model selection focused on producing the graphical downward trend in per-capita growth, essential for realistic ecological modeling.[1][2][3]

// [1](http://equation-of-the-month.blogspot.com/2014/02/the-ricker-logistic-model.html)
// [2](https://en.wikipedia.org/wiki/Ricker_model)
// [3](https://sites.warnercnr.colostate.edu/wp-content/uploads/sites/73/2017/06/Lecture-2-Density-dependent-models.pdf)
// [4](https://hankstevens.github.io/Primer-of-Ecology/DDgrowth.html)
// [5](https://pubmed.ncbi.nlm.nih.gov/29247321/)
// [6](https://esajournals.onlinelibrary.wiley.com/doi/10.1890/03-0520)
// [7](https://www.sciencedirect.com/science/article/abs/pii/S0025556418300178)
// [8](https://math.montana.edu/grad_students/writing-projects/2007/07taylor.pdf)
