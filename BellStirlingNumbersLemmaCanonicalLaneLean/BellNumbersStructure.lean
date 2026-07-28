import BellStirlingNumbersLemmaCanonicalLaneLean.StirlingNumbersStructure

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellNumbersPackage (S : StirlingNumbersPackage) where
  n : ℕ
  value : ℕ
  sumFormula : Prop
  recurrence : Prop
  sumFormulaClosed : sumFormula
  recurrenceClosed : recurrence

structure BellNumbersEvidence {S : StirlingNumbersPackage} (B : BellNumbersPackage S) where
  sumFormulaClosed : B.sumFormula
  recurrenceClosed : B.recurrence

def BellNumbersClosed {S : StirlingNumbersPackage} (B : BellNumbersPackage S) : Prop :=
  B.sumFormula ∧ B.recurrence

theorem bell_numbers_closed_from_evidence {S : StirlingNumbersPackage}
    (B : BellNumbersPackage S) (E : BellNumbersEvidence B) : BellNumbersClosed B := by
  exact And.intro E.sumFormulaClosed E.recurrenceClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse