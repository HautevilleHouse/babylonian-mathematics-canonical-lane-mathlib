import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.SexagesimalArithmetic
import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.Plimpton322

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := A.gateWitness

def ConstrainedBabylonianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_babylonian_endgame (A : AdmissibleClass) : ConstrainedBabylonianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse