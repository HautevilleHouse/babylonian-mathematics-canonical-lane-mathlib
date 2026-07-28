import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure SexagesimalNumber where
  sign : Int
  digits : List Nat  -- each digit 0-59
  exponent : Int      -- position of decimal point

structure BabylonianTablet where
  id : String
  provenance : String
  contentDescription : Prop

def BabylonianWitnessClosed (T : BabylonianTablet) : Prop :=
  T.contentDescription

structure BabylonianAdmittedObject where
  tablet : BabylonianTablet
  interpreted : Prop
  conclusion : interpreted

def BabylonianAdmittedClosure (O : BabylonianAdmittedObject) : Prop :=
  BabylonianWitnessClosed O.tablet ∧ O.interpreted

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse