import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure ReciprocalTableEntry where
  number : Nat
  reciprocal : Nat
  status : Prop

def ReciprocalTable (entries : List ReciprocalTableEntry) : Prop :=
  ∀ e : entries, e.status

