import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure OrbitalParameters where
  eccentricity : Float
  obliquity : Float
  precessionAngle : Float

structure InsolationAnomaly where
  latitude : Float
  month : Nat
  anomaly : Float

structure MilankovitchForcing where
  orbitalParams : OrbitalParameters
  insolation : InsolationAnomaly
  glacialCycle : Prop

structure MilankovitchEvidence (M : MilankovitchForcing) where
  orbitalMechanicsCorrect : Prop
  insolationCalculated : Prop
  glacialResponseConsistent : Prop

def MilankovitchClosed (M : MilankovitchForcing) : Prop :=
  ∃ (E : MilankovitchEvidence M),
    E.orbitalMechanicsCorrect ∧ E.insolationCalculated ∧ E.glacialResponseConsistent

theorem milankovitch_closed_from_evidence (M : MilankovitchForcing)
    (E : MilankovitchEvidence M) : MilankovitchClosed M :=
  ⟨E, E.orbitalMechanicsCorrect, E.insolationCalculated, E.glacialResponseConsistent⟩

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse