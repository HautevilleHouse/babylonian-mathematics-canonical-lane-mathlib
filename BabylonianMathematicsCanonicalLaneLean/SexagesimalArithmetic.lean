import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure SexagesimalSystem where
  baseSixty : Prop
  placeValueNotation : Prop
  reciprocalTable : Prop
  multiplicationAlgorithms : Prop

structure SexagesimalEvidence (S : SexagesimalSystem) where
  baseSixtyClosed : S.baseSixty
  placeValueNotationClosed : S.placeValueNotation
  reciprocalTableClosed : S.reciprocalTable
  multiplicationAlgorithmsClosed : S.multiplicationAlgorithms

def SexagesimalClosed (S : SexagesimalSystem) : Prop :=
  S.baseSixty ∧ S.placeValueNotation ∧ S.reciprocalTable ∧ S.multiplicationAlgorithms

theorem sexagesimal_closed_from_evidence (S : SexagesimalSystem) (E : SexagesimalEvidence S) : SexagesimalClosed S := by
  exact And.intro E.baseSixtyClosed (And.intro E.placeValueNotationClosed (And.intro E.reciprocalTableClosed E.multiplicationAlgorithmsClosed))

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse