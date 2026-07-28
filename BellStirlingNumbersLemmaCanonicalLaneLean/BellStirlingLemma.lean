import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellStirlingLemmaPackage where
  bellPackage : BellNumberPackage
  stirlingPackage : StirlingNumberSecondKindPackage
  identity : ∀ n, bellPackage.bellSequence n = (Finset.range (n+1)).sum (λ k => stirlingPackage.stirlingSequence n k)

structure BellStirlingLemmaEvidence (L : BellStirlingLemmaPackage) where
  identityClosed : L.identity

def BellStirlingLemmaClosed (L : BellStirlingLemmaPackage) : Prop :=
  L.identity

theorem bell_stirling_lemma_closed_from_evidence (L : BellStirlingLemmaPackage) (E : BellStirlingLemmaEvidence L) :
    BellStirlingLemmaClosed L := by
  exact E.identityClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse