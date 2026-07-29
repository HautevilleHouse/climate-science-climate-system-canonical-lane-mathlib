import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure ClimateSensitivityPackage where
  forcing : ℚ
  temperatureResponse : ℚ
  equilibriumSensitivity : ℚ
  transientSensitivity : ℚ

structure ClimateSensitivityEvidence (C : ClimateSensitivityPackage) where
  forcingClosed : C.forcing > 0
  temperatureResponseClosed : C.temperatureResponse > 0
  equilibriumSensitivityClosed : C.equilibriumSensitivity ∈ {x | x > 1.5 ∧ x < 4.5}
  transientSensitivityClosed : C.transientSensitivity > 0

def ClimateSensitivityClosed (C : ClimateSensitivityPackage) : Prop :=
  C.forcing > 0 ∧ C.temperatureResponse > 0 ∧
  (C.equilibriumSensitivity > 1.5 ∧ C.equilibriumSensitivity < 4.5) ∧
  C.transientSensitivity > 0

theorem climate_sensitivity_closed_from_evidence (C : ClimateSensitivityPackage) (Ev : ClimateSensitivityEvidence C) :
    ClimateSensitivityClosed C := by
  exact And.intro Ev.forcingClosed
    (And.intro Ev.temperatureResponseClosed
      (And.intro Ev.equilibriumSensitivityClosed Ev.transientSensitivityClosed))

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse