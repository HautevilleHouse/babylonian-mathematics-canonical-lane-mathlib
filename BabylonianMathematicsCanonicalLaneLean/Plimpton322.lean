import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure PlimptonTablet where
  tripleList : Prop
  pythagoreanTripleProperty : Prop
  parameterRelations : Prop
  scribalErrors : Prop

structure PlimptonEvidence (P : PlimptonTablet) where
  tripleListClosed : P.tripleList
  pythagoreanTriplePropertyClosed : P.pythagoreanTripleProperty
  parameterRelationsClosed : P.parameterRelations
  scribalErrorsClosed : P.scribalErrors

def PlimptonClosed (P : PlimptonTablet) : Prop :=
  P.tripleList ∧ P.pythagoreanTripleProperty ∧ P.parameterRelations ∧ P.scribalErrors

theorem plimpton_closed_from_evidence (P : PlimptonTablet) (E : PlimptonEvidence P) : PlimptonClosed P := by
  exact And.intro E.tripleListClosed (And.intro E.pythagoreanTriplePropertyClosed (And.intro E.parameterRelationsClosed E.scribalErrorsClosed))

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse