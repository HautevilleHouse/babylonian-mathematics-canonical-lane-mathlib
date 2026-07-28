import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.BabylonianMathObjects

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure BabylonianAlgebraicSolution where
  quadraticFormula : Prop
  linearSolution : Prop
  geometricCompletion : Prop
  methodsConsistent : Prop

structure BabylonianAlgebraEvidence (A : BabylonianAlgebraicSolution) where
  quadraticFormulaClosed : A.quadraticFormula
  linearSolutionClosed : A.linearSolution
  geometricCompletionClosed : A.geometricCompletion
  methodsConsistentClosed : A.methodsConsistent

def BabylonianAlgebraClosed (A : BabylonianAlgebraicSolution) : Prop :=
  A.quadraticFormula ∧ A.linearSolution ∧ A.geometricCompletion ∧ A.methodsConsistent

theorem babylonian_algebra_closed_from_evidence
    (A : BabylonianAlgebraicSolution) (E : BabylonianAlgebraEvidence A) :
    BabylonianAlgebraClosed A := by
  exact And.intro E.quadraticFormulaClosed (And.intro E.linearSolutionClosed (And.intro E.geometricCompletionClosed E.methodsConsistentClosed))

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse