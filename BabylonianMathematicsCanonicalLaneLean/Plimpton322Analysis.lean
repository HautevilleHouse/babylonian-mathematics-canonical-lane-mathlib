import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.BabylonianTablet
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.SexagesimalArithmetic

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure Plimpton322Package (T : CuneiformTablet) (A : SexagesimalArithmeticPackage) where
  tableRows : List (Nat × Nat × Nat × Nat)  -- (a,b,c,d) where a^2 + b^2 = c^2 and d related
  rowCount : Proposition
  pythagoreanTriples : Prop
  interpretations : Prop
  rowCountClosed : rowCount
  pythagoreanTriplesClosed : pythagoreanTriples
  interpretationsClosed : interpretations

structure Plimpton322Evidence {T : CuneiformTablet} {A : SexagesimalArithmeticPackage}
    (P : Plimpton322Package T A) where
  rowCountClosed : P.rowCount
  pythagoreanTriplesClosed : P.pythagoreanTriples
  interpretationsClosed : P.interpretations

def Plimpton322Closed {T : CuneiformTablet} {A : SexagesimalArithmeticPackage}
    (P : Plimpton322Package T A) : Prop :=
  P.rowCount ∧ P.pythagoreanTriples ∧ P.interpretations

theorem plimpton322_closed_from_evidence {T : CuneiformTablet} {A : SexagesimalArithmeticPackage}
    (P : Plimpton322Package T A) (E : Plimpton322Evidence P) :
    Plimpton322Closed P := by
  exact And.intro E.rowCountClosed (And.intro E.pythagoreanTriplesClosed E.interpretationsClosed)

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse