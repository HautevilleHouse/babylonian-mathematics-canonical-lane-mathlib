import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure BabylonianAdmittedObject where
  tabletName : String
  content : Prop
  knownTranslation : Prop

structure AdmissibleClass where
  object : BabylonianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.knownTranslation ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse