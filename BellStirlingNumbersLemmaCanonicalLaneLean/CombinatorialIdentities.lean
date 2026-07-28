import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure CombinatorialIdentityPackage where
  identity : Prop
  proofWitness : identity

def IdentityClosed (I : CombinatorialIdentityPackage) : Prop :=
  I.identity

theorem identity_closed_from_evidence (I : CombinatorialIdentityPackage) :
    IdentityClosed I := by
  exact I.proofWitness

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse