import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.BellStirlingNumbers

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

theorem stirling_second_recurrence (n k : ℕ) (h : 0 < k) (h' : k < n) :
  StirlingNumbersSecondKind n k = StirlingNumbersSecondKind (n-1) (k-1) + k * StirlingNumbersSecondKind (n-1) k := by
  sorry

theorem stirling_first_recurrence (n k : ℕ) (h : 0 < k) (h' : k < n) :
  StirlingNumbersFirstKind n k = StirlingNumbersFirstKind (n-1) (k-1) - (n-1) * StirlingNumbersFirstKind (n-1) k := by
  sorry

theorem orthogonality_identity (n m : ℕ) :
  ∑ k in Finset.Icc 0 n, StirlingNumbersFirstKind n k * StirlingNumbersSecondKind k m = if n = m then 1 else 0 := by
  sorry

theorem bell_stirling_relation (n : ℕ) :
  BellNumbers n = ∑ k in Finset.Icc 0 n, StirlingNumbersSecondKind n k := by
  sorry

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse