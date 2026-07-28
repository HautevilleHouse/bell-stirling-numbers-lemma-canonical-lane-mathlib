import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.BellStirlingNumbers

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

theorem bell_recurrence (n : ℕ) (h : n > 0) :
  BellNumbers n = ∑ k in Finset.Icc 0 (n-1), (Nat.choose (n-1) k) * BellNumbers k := by
  sorry

theorem dobinski_formula (n : ℕ) :
  BellNumbers n = 1 / Real.exp 1 * ∑ k : ℕ, (Real.pow k n) / (Nat.factorial k) := by
  sorry

theorem touchard_congruence (n : ℕ) (p : ℕ) (hp : Nat.Prime p) :
  BellNumbers (p^n) ≡ BellNumbers n [MOD p] := by
  sorry

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse