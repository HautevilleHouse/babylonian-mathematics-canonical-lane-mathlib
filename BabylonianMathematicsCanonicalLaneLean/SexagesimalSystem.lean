import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.BabylonianMathObjects

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure SexagesimalArithmeticPackage where
  addition : SexagesimalNumber → SexagesimalNumber → SexagesimalNumber
  multiplication : SexagesimalNumber → SexagesimalNumber → SexagesimalNumber
  reciprocal : SexagesimalNumber → Option SexagesimalNumber
  algorithmsConsistent : Prop

structure SexagesimalArithmeticEvidence (S : SexagesimalArithmeticPackage) where
  additionConsistent : S.algorithmsConsistent
  multiplicationConsistent : S.algorithmsConsistent
  reciprocalConsistent : S.algorithmsConsistent

def SexagesimalArithmeticClosed (S : SexagesimalArithmeticPackage) : Prop :=
  S.algorithmsConsistent

theorem sexagesimal_arithmetic_closed_from_evidence
    (S : SexagesimalArithmeticPackage) (E : SexagesimalArithmeticEvidence S) :
    SexagesimalArithmeticClosed S := by
  exact E.additionConsistent

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse