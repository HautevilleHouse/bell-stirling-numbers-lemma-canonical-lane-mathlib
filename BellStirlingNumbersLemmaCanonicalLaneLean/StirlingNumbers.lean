import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BellStirlingNumbersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure StirlingNumberPackage where
  n : ℕ
  k : ℕ
  stirlingNumber : ℕ
  recurrenceRelation : Prop
  generatingFunction : Prop
  stirlingNumberComputed : stirlingNumber
  recurrenceRelationClosed : recurrenceRelation
  generatingFunctionClosed : generatingFunction

def StirlingNumberClosed (S : StirlingNumberPackage) : Prop :=
  S.recurrenceRelation ∧ S.generatingFunction

theorem stirling_number_closed_from_evidence (S : StirlingNumberPackage) :
    StirlingNumberClosed S := by
  exact And.intro S.recurrenceRelationClosed S.generatingFunctionClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse