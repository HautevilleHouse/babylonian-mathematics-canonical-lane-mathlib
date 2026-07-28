import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure CuneiformTablet where
  museumId : String
  provenance : String
  period : String
  content : String

structure SexagesimalNumber where
  digits : List Nat  -- most significant first
  sexagesimalPointPosition : Int

def sexagesimalToString (s : SexagesimalNumber) : String :=
  let digitStrings := s.digits.map (fun d => toString d)
  let wholePart := if h : s.sexagesimalPointPosition >= 0 then
    let (whole, frac) := List.splitAt (s.digits.length - s.sexagesimalPointPosition.toNat) s.digits
    (String.intercalate "," (whole.map toString)) ++ ";" ++ (String.intercalate "," (frac.map toString))
  else
    String.intercalate "," (s.digits.map toString) ++ ";" ++ String.replicate (Nat.succ (-s.sexagesimalPointPosition).toNat - s.digits.length) "0"
  -- simplified
  ""

structure BabylonianTheorem (T : CuneiformTablet) where
  interpretedStatement : Prop
  evidence : interpretedStatement

def BabylonianTabletPackage (T : CuneiformTablet) : Prop :=
  -- placeholder
  True

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse