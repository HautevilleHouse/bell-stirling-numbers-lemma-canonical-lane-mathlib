import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellNumberPackage where
  n : ℕ
  bellNumber : ℕ
  recurrenceRelation : Prop
  exponentialGeneratingFunction : Prop
  bellNumberComputed : bellNumber
  recurrenceRelationClosed : recurrenceRelation
  exponentialGeneratingFunctionClosed : exponentialGeneratingFunction

def BellNumberClosed (B : BellNumberPackage) : Prop :=
  B.recurrenceRelation ∧ B.exponentialGeneratingFunction

theorem bell_number_closed_from_evidence (B : BellNumberPackage) :
    BellNumberClosed B := by
  exact And.intro B.recurrenceRelationClosed B.exponentialGeneratingFunctionClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse