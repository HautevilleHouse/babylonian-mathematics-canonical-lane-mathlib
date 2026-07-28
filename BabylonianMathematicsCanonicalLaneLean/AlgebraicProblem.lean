import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure AlgebraicProblemPackage where
  problemType : String
  coefficients : List Nat
  solutionMethod : String
  exampleGiven : Prop
  solutionCorrect : Prop

structure AlgebraicProblemEvidence (A : AlgebraicProblemPackage) where
  problemTypeClosed : A.problemType ∈ ["quadratic", "cubic", "reciprocal", "linear"]
  coefficientsClosed : A.coefficients.length > 0
  solutionMethodClosed : A.solutionMethod ≠ ""
  exampleGivenClosed : A.exampleGiven
  solutionCorrectClosed : A.solutionCorrect

def AlgebraicProblemClosed (A : AlgebraicProblemPackage) : Prop :=
  A.problemType ∈ ["quadratic", "cubic", "reciprocal", "linear"] ∧
  A.coefficients.length > 0 ∧ A.solutionMethod ≠ "" ∧ A.exampleGiven ∧ A.solutionCorrect

theorem algebraic_problem_closed_from_evidence (A : AlgebraicProblemPackage) (E : AlgebraicProblemEvidence A) : AlgebraicProblemClosed A := by
  exact And.intro E.problemTypeClosed (And.intro E.coefficientsClosed (And.intro E.solutionMethodClosed (And.intro E.exampleGivenClosed E.solutionCorrectClosed)))

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse