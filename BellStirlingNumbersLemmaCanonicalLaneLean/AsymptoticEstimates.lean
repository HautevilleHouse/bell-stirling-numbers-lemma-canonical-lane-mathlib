import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.BellStirlingNumbers

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

theorem bell_asymptotic (n : ℕ) :
  BellNumbers n ~ (1 / Real.sqrt (2 * Real.pi * n)) * Real.exp (n * Real.log n - n + Real.log n / 2) := by
  sorry

theorem stirling_second_asymptotic (k : ℕ) (h : k → ∞) :
  StirlingNumbersSecondKind n k ~ (k ^ n) / (k.factorial : ℝ) * (1 + O(1/n)) := by
  sorry

theorem stirling_first_asymptotic (k : ℕ) (h : k → ∞) :
  StirlingNumbersFirstKind n k ~ ((-1)^(n-k) : ℤ) * (n.factorial : ℝ) * (Real.log n)^(k-1) / ((k-1).factorial : ℝ) * (1 + O(1/Real.log n)) := by
  sorry

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse