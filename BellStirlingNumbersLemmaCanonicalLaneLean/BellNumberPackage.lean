import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellNumberPackage where
  bellSequence : Nat → Nat
  recurrence : ∀ n, bellSequence (n+1) = (Finset.range (n+1)).sum (λ k => (Nat.choose n k) * bellSequence k)
  initialCondition : bellSequence 0 = 1

structure BellNumberEvidence (B : BellNumberPackage) where
  recurrenceClosed : B.recurrence
  initialConditionClosed : B.initialCondition

def BellNumberPackageClosed (B : BellNumberPackage) : Prop :=
  B.recurrence ∧ B.initialCondition

theorem bell_number_package_closed_from_evidence (B : BellNumberPackage) (E : BellNumberEvidence B) :
    BellNumberPackageClosed B := by
  exact And.intro E.recurrenceClosed E.initialConditionClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse