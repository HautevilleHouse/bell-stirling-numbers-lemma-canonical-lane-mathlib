import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure StirlingNumberSecondKindPackage where
  stirlingSequence : Nat → Nat → Nat
  recurrence : ∀ n k, stirlingSequence (n+1) (k+1) = stirlingSequence n k + (k+1) * stirlingSequence n (k+1)
  boundaryConditions : (∀ n, stirlingSequence n 0 = if n = 0 then 1 else 0) ∧ (∀ n, stirlingSequence n (n+1) = 0) ∧ (∀ n, stirlingSequence n n = 1)

structure StirlingNumberSecondKindEvidence (S : StirlingNumberSecondKindPackage) where
  recurrenceClosed : S.recurrence
  boundaryConditionsClosed : S.boundaryConditions

def StirlingNumberSecondKindPackageClosed (S : StirlingNumberSecondKindPackage) : Prop :=
  S.recurrence ∧ S.boundaryConditions

theorem stirling_number_second_kind_package_closed_from_evidence
    (S : StirlingNumberSecondKindPackage) (E : StirlingNumberSecondKindEvidence S) :
    StirlingNumberSecondKindPackageClosed S := by
  exact And.intro E.recurrenceClosed E.boundaryConditionsClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse