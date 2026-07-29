import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  delta18O : ℚ
  temperature : ℚ
  calibrationSlope : ℚ
  calibrationIntercept : ℚ

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  delta18OClosed : I.delta18O > -60 ∧ I.delta18O < 10
  temperatureClosed : I.temperature > -80 ∧ I.temperature < 30
  calibrationSlopeClosed : I.calibrationSlope > 0
  calibrationInterceptClosed : I.calibrationIntercept ≠ 0

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  (I.delta18O > -60 ∧ I.delta18O < 10) ∧
  (I.temperature > -80 ∧ I.temperature < 30) ∧
  I.calibrationSlope > 0 ∧ I.calibrationIntercept ≠ 0

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometryPackage) (Ev : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.delta18OClosed
    (And.intro Ev.temperatureClosed
      (And.intro Ev.calibrationSlopeClosed Ev.calibrationInterceptClosed))

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse