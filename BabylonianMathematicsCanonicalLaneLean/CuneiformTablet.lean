import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure CuneiformTabletPackage where
  clayType : String
  scriptStyle : String
  provenance : String
  dateEstimated : Prop
  textPreserved : Prop
  tabletForm : Prop

structure CuneiformTabletEvidence (C : CuneiformTabletPackage) where
  clayTypeClosed : C.clayType = "clay"
  scriptStyleClosed : C.scriptStyle = "cuneiform"
  provenanceClosed : C.provenance ≠ ""
  dateEstimatedClosed : C.dateEstimated
  textPreservedClosed : C.textPreserved
  tabletFormClosed : C.tabletForm

def CuneiformTabletClosed (C : CuneiformTabletPackage) : Prop :=
  C.clayType = "clay" ∧ C.scriptStyle = "cuneiform" ∧ C.provenance ≠ "" ∧
  C.dateEstimated ∧ C.textPreserved ∧ C.tabletForm

theorem cuneiform_tablet_closed_from_evidence (C : CuneiformTabletPackage) (E : CuneiformTabletEvidence C) : CuneiformTabletClosed C := by
  exact And.intro E.clayTypeClosed (And.intro E.scriptStyleClosed (And.intro E.provenanceClosed (And.intro E.dateEstimatedClosed (And.intro E.textPreservedClosed E.tabletFormClosed))))

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse