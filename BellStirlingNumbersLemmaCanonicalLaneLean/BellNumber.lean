import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.StirlingSecondKind

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellNumberPackage where
  n : ℕ
  sumForm : Prop
  generatingFunction : Prop
  recurrenceRelation : Prop

structure BellNumberEvidence (B : BellNumberPackage) where
  sumFormClosed : B.sumForm
  generatingFunctionClosed : B.generatingFunction
  recurrenceRelationClosed : B.recurrenceRelation

def BellNumberClosed (B : BellNumberPackage) : Prop :=
  B.sumForm ∧ B.generatingFunction ∧ B.recurrenceRelation

theorem bell_number_closed_from_evidence (B : BellNumberPackage) (E : BellNumberEvidence B) : BellNumberClosed B :=
  And.intro E.sumFormClosed (And.intro E.generatingFunctionClosed E.recurrenceRelationClosed)

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse