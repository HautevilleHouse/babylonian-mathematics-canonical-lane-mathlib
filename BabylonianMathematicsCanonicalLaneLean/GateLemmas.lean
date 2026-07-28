import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse