import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure MilankovitchCyclesPackage where
  eccentricity : ℚ
  obliquity : ℚ
  precession : ℚ
  insolationAnomaly : ℚ
  orbitalControl : Prop
  insolationResponse : Prop
  glacialInterglacialCycle : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalControlClosed : M.orbitalControl
  insolationResponseClosed : M.insolationResponse
  glacialInterglacialCycleClosed : M.glacialInterglacialCycle

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalControl ∧ M.insolationResponse ∧ M.glacialInterglacialCycle

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage)
    (Ev : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro Ev.orbitalControlClosed (And.intro Ev.insolationResponseClosed Ev.glacialInterglacialCycleClosed)

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse
