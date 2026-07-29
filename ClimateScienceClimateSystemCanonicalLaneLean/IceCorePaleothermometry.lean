import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure IceCorePaleothermometryPackage where
  delta18O : ℚ
  deuteriumExcess : ℚ
  accumulationRate : ℚ
  temperatureReconstruction : ℚ
  isotopeFractionation : Prop
  datingChronology : Prop
  climateProxyCalibration : Prop

structure IceCorePaleothermometryEvidence (I : IceCorePaleothermometryPackage) where
  isotopeFractionationClosed : I.isotopeFractionation
  datingChronologyClosed : I.datingChronology
  climateProxyCalibrationClosed : I.climateProxyCalibration

def IceCorePaleothermometryClosed (I : IceCorePaleothermometryPackage) : Prop :=
  I.isotopeFractionation ∧ I.datingChronology ∧ I.climateProxyCalibration

theorem ice_core_paleothermometry_closed_from_evidence (I : IceCorePaleothermometryPackage)
    (Ev : IceCorePaleothermometryEvidence I) : IceCorePaleothermometryClosed I := by
  exact And.intro Ev.isotopeFractionationClosed (And.intro Ev.datingChronologyClosed Ev.climateProxyCalibrationClosed)

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse
