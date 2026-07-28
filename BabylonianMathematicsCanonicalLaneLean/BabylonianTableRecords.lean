import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure SexagesimalEntry where
  row : Nat
  column : Nat
  value : Nat
  normalized : Prop

def SexagesimalTable (entries : List SexagesimalEntry) : Prop :=
  ∀ e : entries, e.normalized

