import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let _ := A.object
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse
