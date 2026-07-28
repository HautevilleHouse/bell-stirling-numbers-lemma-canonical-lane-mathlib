import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.BellNumber

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

def ConstrainedBellStirlingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bell_stirling_endgame (A : AdmissibleClass) : ConstrainedBellStirlingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse