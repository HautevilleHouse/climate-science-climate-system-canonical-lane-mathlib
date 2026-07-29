import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure EarthEnergyBalancePackage where
  solarConstant : ℕ
  albedo : ℚ
  emissivity : ℚ
  surfaceTemperature : ℚ
  toaImbalance : Prop
  radiativeForcing : Prop
  climateSensitivity : Prop

structure EarthEnergyBalanceEvidence (E : EarthEnergyBalancePackage) where
  toaImbalanceClosed : E.toaImbalance
  radiativeForcingClosed : E.radiativeForcing
  climateSensitivityClosed : E.climateSensitivity

def EarthEnergyBalanceClosed (E : EarthEnergyBalancePackage) : Prop :=
  E.toaImbalance ∧ E.radiativeForcing ∧ E.climateSensitivity

theorem earth_energy_balance_closed_from_evidence (E : EarthEnergyBalancePackage)
    (Ev : EarthEnergyBalanceEvidence E) : EarthEnergyBalanceClosed E := by
  exact And.intro Ev.toaImbalanceClosed (And.intro Ev.radiativeForcingClosed Ev.climateSensitivityClosed)

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse
