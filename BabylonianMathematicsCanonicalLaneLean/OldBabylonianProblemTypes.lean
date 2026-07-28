import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

inductive ProblemType where
  | quadratic
  | cubic
  | linear
  | geometric

def ProblemCatalog (types : List ProblemType) : Prop :=
  types.length > 0

