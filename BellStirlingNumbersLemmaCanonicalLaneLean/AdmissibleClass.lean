import BellStirlingNumbersLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BellStirlingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.bellStirlingIdentity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse