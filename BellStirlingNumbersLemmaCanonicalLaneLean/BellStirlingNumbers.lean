import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure BellNumbers where
  n : ℕ
  value : ℕ
  recurrence : Prop
  generatingFunction : Prop

structure StirlingNumbersSecondKind where
  n : ℕ
  k : ℕ
  value : ℕ
  recurrence : Prop
  combinatorialInterpretation : Prop

structure StirlingNumbersFirstKind where
  n : ℕ
  k : ℕ
  value : ℤ
  recurrence : Prop
  signProperty : Prop

structure BellStirlingAdmittedObject where
  bellNumbers : BellNumbers
  stirlingSecondKind : StirlingNumbersSecondKind
  stirlingFirstKind : StirlingNumbersFirstKind
  orthogonality : Prop
  exponentialGeneratingFunction : Prop
  conclusion : orthogonality ∧ exponentialGeneratingFunction

def BellStirlingWitnessClosed (O : BellStirlingAdmittedObject) : Prop :=
  O.conclusion

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse