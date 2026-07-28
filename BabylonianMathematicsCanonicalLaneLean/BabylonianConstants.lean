import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure ConstantTable where
  key : String
  value : Nat
  context : String

def Constants (tables : List ConstantTable) : Prop :=
  ∀ t : tables, t.value > 0

