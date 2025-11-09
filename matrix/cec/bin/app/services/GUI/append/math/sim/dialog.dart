// To model the idea that large populations over the carrying 
// capacity result in a rapid decrease of population, you can 
// use the logistic growth function with a modification to 
// emphasize the crash behavior when $$P_t$$ exceeds $$K$$. 
// A common approach is to make the next population, 
// $$P_{t+1}$$, depend on the current population $$P_t$$ 
// in such a way that when $$P_t$$ is much larger than 
// $$K$$, $$P_{t+1}$$ becomes very small or even negative 
// (which is biologically interpreted as a crash).

// ### Proposed Model
// One way to model this behavior is to modify the logistic growth formula:

// $$
// P_{t+1} = P_t \times \left(1 - \alpha \times \left(\frac{P_t}{K} - 1\right)^n \right)
// $$

// - When $$P_t > K$$, the term $$\left(\frac{P_t}{K} - 1\right)^n$$ becomes large, leading $$P_{t+1}$$ to decrease sharply.
// - When $$P_t$$ is below $$K$$, the population can grow or stabilize.

// ### Example Dart implementation

// ```dart
// dialog.dart

double nextPopulation(double Pt, double K, double alpha, int n) {
  if (Pt <= 0) return 0; // Population can't be negative
  double growthFactor = 1 - alpha * ((Pt / K) - 1).abs() * n;
  return Pt * growthFactor;
}

void main() {
  double Pt = 120; // current population, over capacity
  double K = 100; // carrying capacity
  double alpha = 0.5; // crash sensitivity
  int n = 2; // severity degree

  double PtPlus1 = nextPopulation(Pt, K, alpha, n);
  print('Next population: $PtPlus1');
}
// ```

// ### Explanation:
// - When $$P_t$$ exceeds $$K$$, the factor reduces the next population sharply.
// - For smaller $$P_t$$, the model allows for some growth or stabilization.

// You can tune the parameters `alpha` and `n` as needed to represent how swift or gradual the crash should be in your model.[1][3]

// [1](https://en.wikipedia.org/wiki/Carrying_capacity)
// [2](https://fiveable.me/introduction-environmental-science/unit-5/population-ecology-carrying-capacity/study-guide/6eL7VbrR47HKAHvG)
// [3](https://www.turito.com/learn/biology/environments-carrying-capacity)
// [4](https://courses.lumenlearning.com/calculus2/chapter/population-growth-and-carrying-capacity/)
// [5](https://www.khanacademy.org/science/ap-biology/ecology-ap/population-ecology-ap/a/exponential-logistic-growth)
// [6](https://www.pearson.com/channels/biology/asset/cd840cee/the-term-k-n-k-a-is-the-carrying-capacity-for-a-population-b-is-greatest-when-k-)
// [7](https://www.sciencedirect.com/science/article/abs/pii/S1476945X08000822)
// [8](https://www.britannica.com/science/population-ecology/Logistic-population-growth)
