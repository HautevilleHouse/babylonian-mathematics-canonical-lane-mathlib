import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.BabylonianMathObjects

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure BabylonianGeometricMethod where
  areaFormula : Prop
  volumeFormula : Prop
  pythagoreanTheorem : Prop
  methodsConsistent : Prop

structure BabylonianGeometricEvidence (G : BabylonianGeometricMethod) where
  areaFormulaClosed : G.areaFormula
  volumeFormulaClosed : G.volumeFormula
  pythagoreanTheoremClosed : G.pythagoreanTheorem
  methodsConsistentClosed : G.methodsConsistent

def BabylonianGeometricClosed (G : BabylonianGeometricMethod) : Prop :=
  G.areaFormula ∧ G.volumeFormula ∧ G.pythagoreanTheorem ∧ G.methodsConsistent

theorem babylonian_geometric_closed_from_evidence
    (G : BabylonianGeometricMethod) (E : BabylonianGeometricEvidence G) :
    BabylonianGeometricClosed G := by
  exact And.intro E.areaFormulaClosed (And.intro E.volumeFormulaClosed (And.intro E.pythagoreanTheoremClosed E.methodsConsistentClosed))

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse