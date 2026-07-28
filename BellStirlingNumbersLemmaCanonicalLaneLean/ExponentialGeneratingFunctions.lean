import BellStirlingNumbersLemmaCanonicalLaneLean.BellNumbersStructure

namespace HautevilleHouse
namespace BellStirlingNumbersLemmaCanonicalLaneLean

structure ExponentialGeneratingFunctionsPackage where
  bellEGF : PowerSeries ℚ
  stirlingEGF : PowerSeries ℚ
  closedFormBell : Prop
  closedFormStirling : Prop
  closedFormBellClosed : closedFormBell
  closedFormStirlingClosed : closedFormStirling

structure ExponentialGeneratingFunctionsEvidence (E : ExponentialGeneratingFunctionsPackage) where
  closedFormBellClosed : E.closedFormBell
  closedFormStirlingClosed : E.closedFormStirling

def ExponentialGeneratingFunctionsClosed (E : ExponentialGeneratingFunctionsPackage) : Prop :=
  E.closedFormBell ∧ E.closedFormStirling

theorem exponential_generating_functions_closed_from_evidence
    (E : ExponentialGeneratingFunctionsPackage) 
    (Ev : ExponentialGeneratingFunctionsEvidence E) :
    ExponentialGeneratingFunctionsClosed E := by
  exact And.intro Ev.closedFormBellClosed Ev.closedFormStirlingClosed

end BellStirlingNumbersLemmaCanonicalLaneLean
end HautevilleHouse