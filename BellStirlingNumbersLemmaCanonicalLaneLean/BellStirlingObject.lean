import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellStirlingSpace where
  carrier : Type
  finite : Prop

structure BellStirlingAdmittedObject where
  space : BellStirlingSpace
  bellNumberDefined : Prop
  stirlingNumbersDefined : Prop
  bellStirlingRelation : Prop
  conclusion : bellStirlingRelation

def BellStirlingWitnessClosed (O : BellStirlingAdmittedObject) : Prop :=
  O.bellStirlingRelation

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse