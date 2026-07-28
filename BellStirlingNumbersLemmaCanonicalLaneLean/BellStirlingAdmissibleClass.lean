import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellStirlingAdmittedObject where
  lemmaStatement : Prop
  conclusion : lemmaStatement

structure AdmissibleClass where
  object : BellStirlingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BellStirlingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse