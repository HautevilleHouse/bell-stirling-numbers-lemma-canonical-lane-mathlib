import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure StirlingNumbersFirstKindPackage where
  unsignedRecurrence : Prop
  signedRecurrence : Prop
  generatingFunction : Prop
  relationToCycles : Prop

structure StirlingNumbersFirstKindEvidence (P : StirlingNumbersFirstKindPackage) where
  unsignedRecurrenceClosed : P.unsignedRecurrence
  signedRecurrenceClosed : P.signedRecurrence
  generatingFunctionClosed : P.generatingFunction
  relationToCyclesClosed : P.relationToCycles

def StirlingNumbersFirstKindClosed (P : StirlingNumbersFirstKindPackage) : Prop :=
  P.unsignedRecurrence ∧ P.signedRecurrence ∧ P.generatingFunction ∧ P.relationToCycles

theorem stirling_numbers_first_kind_closed_from_evidence
    (P : StirlingNumbersFirstKindPackage) (E : StirlingNumbersFirstKindEvidence P) :
    StirlingNumbersFirstKindClosed P := by
  exact And.intro E.unsignedRecurrenceClosed
    (And.intro E.signedRecurrenceClosed
      (And.intro E.generatingFunctionClosed E.relationToCyclesClosed))

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse