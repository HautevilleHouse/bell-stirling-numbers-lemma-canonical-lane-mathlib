import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure DobinskiFormulaPackage where
  formula : Prop
  convergence : Prop
  proofViaExponentialSeries : Prop
  applicationToBellNumbers : Prop

structure DobinskiFormulaEvidence (P : DobinskiFormulaPackage) where
  formulaClosed : P.formula
  convergenceClosed : P.convergence
  proofViaExponentialSeriesClosed : P.proofViaExponentialSeries
  applicationToBellNumbersClosed : P.applicationToBellNumbers

def DobinskiFormulaClosed (P : DobinskiFormulaPackage) : Prop :=
  P.formula ∧ P.convergence ∧ P.proofViaExponentialSeries ∧ P.applicationToBellNumbers

theorem dobinski_formula_closed_from_evidence
    (P : DobinskiFormulaPackage) (E : DobinskiFormulaEvidence P) :
    DobinskiFormulaClosed P := by
  exact And.intro E.formulaClosed
    (And.intro E.convergenceClosed
      (And.intro E.proofViaExponentialSeriesClosed E.applicationToBellNumbersClosed))

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse