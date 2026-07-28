import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.BellStirlingObject

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure StirlingSecondKindPackage where
  n : ℕ
  k : ℕ
  recurrenceIdentity : Prop
  explicitFormula : Prop
  boundaryConditions : Prop

structure StirlingSecondKindEvidence (P : StirlingSecondKindPackage) where
  recurrenceIdentityClosed : P.recurrenceIdentity
  explicitFormulaClosed : P.explicitFormula
  boundaryConditionsClosed : P.boundaryConditions

def StirlingSecondKindClosed (P : StirlingSecondKindPackage) : Prop :=
  P.recurrenceIdentity ∧ P.explicitFormula ∧ P.boundaryConditions

theorem stirling_second_kind_closed_from_evidence (P : StirlingSecondKindPackage) (E : StirlingSecondKindEvidence P) : StirlingSecondKindClosed P :=
  And.intro E.recurrenceIdentityClosed (And.intro E.explicitFormulaClosed E.boundaryConditionsClosed)

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse