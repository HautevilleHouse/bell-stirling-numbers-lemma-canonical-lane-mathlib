import BellStirlingNumbersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure StirlingNumbersPackage where
  n : ℕ
  k : ℕ
  value : ℕ
  recurrence : Prop
  explicitFormula : Prop
  recurrenceClosed : recurrence
  explicitFormulaClosed : explicitFormula

structure StirlingNumbersEvidence (S : StirlingNumbersPackage) where
  recurrenceClosed : S.recurrence
  explicitFormulaClosed : S.explicitFormula

def StirlingNumbersClosed (S : StirlingNumbersPackage) : Prop :=
  S.recurrence ∧ S.explicitFormula

theorem stirling_numbers_closed_from_evidence (S : StirlingNumbersPackage)
    (E : StirlingNumbersEvidence S) : StirlingNumbersClosed S := by
  exact And.intro E.recurrenceClosed E.explicitFormulaClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse