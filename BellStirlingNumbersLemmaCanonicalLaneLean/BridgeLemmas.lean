import BellStirlingNumbersLemmaCanonicalLaneLean.AdmissibleClass
import BellStirlingNumbersLemmaCanonicalLaneLean.BellStirlingLemma

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.bellStirlingIdentity

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse