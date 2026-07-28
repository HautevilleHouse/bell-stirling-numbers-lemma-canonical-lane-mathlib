import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellStirlingAdmittedObject where
  bellSequence : Nat → Nat
  stirlingSecondKind : Nat → Nat → Nat
  bellStirlingIdentity : ∀ n, bellSequence n = (Finset.range (n+1)).sum (λ k => stirlingSecondKind n k)
  conclusion : bellStirlingIdentity

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse