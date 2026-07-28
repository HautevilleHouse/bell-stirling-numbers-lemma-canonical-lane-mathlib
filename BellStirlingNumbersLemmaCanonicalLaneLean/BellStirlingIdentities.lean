import BellStirlingNumbersLemmaCanonicalLaneLean.ExponentialGeneratingFunctions

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellStirlingIdentitiesPackage where
  touchardCongruence : Prop
  spiveyFormula : Prop
  dobinskiFormula : Prop
  touchardCongruenceClosed : touchardCongruence
  spiveyFormulaClosed : spiveyFormula
  dobinskiFormulaClosed : dobinskiFormula

structure BellStirlingIdentitiesEvidence (I : BellStirlingIdentitiesPackage) where
  touchardCongruenceClosed : I.touchardCongruence
  spiveyFormulaClosed : I.spiveyFormula
  dobinskiFormulaClosed : I.dobinskiFormula

def BellStirlingIdentitiesClosed (I : BellStirlingIdentitiesPackage) : Prop :=
  I.touchardCongruence ∧ I.spiveyFormula ∧ I.dobinskiFormula

theorem bell_stirling_identities_closed_from_evidence
    (I : BellStirlingIdentitiesPackage)
    (E : BellStirlingIdentitiesEvidence I) : BellStirlingIdentitiesClosed I := by
  exact And.intro E.touchardCongruenceClosed
    (And.intro E.spiveyFormulaClosed E.dobinskiFormulaClosed)

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse