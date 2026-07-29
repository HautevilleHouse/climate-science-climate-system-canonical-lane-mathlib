import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure EnergyBalanceModel where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  stefanBoltzmannConst : ℝ
  equilibriumTemperature : ℝ
  absorbedSolarRadiation : ℝ
  outgoingLongwaveRadiation : ℝ
  energyBalanceEquation : Prop

structure EnergyBalanceEvidence (E : EnergyBalanceModel) where
  solarConstantPositive : E.solarConstant > 0
  albedoBetween : 0 ≤ E.albedo ∧ E.albedo ≤ 1
  equilibriumTemperatureComputed : E.equilibriumTemperature = ((E.solarConstant * (1 - E.albedo)) / (4 * E.stefanBoltzmannConst * E.emissivity))^(1/4)
  energyBalanceClosed : E.energyBalanceEquation

def EnergyBalanceModelClosed (E : EnergyBalanceModel) : Prop :=
  E.solarConstant > 0 ∧ 0 ≤ E.albedo ∧ E.albedo ≤ 1 ∧ E.energyBalanceEquation

theorem energy_balance_closed_from_evidence (E : EnergyBalanceModel) (ev : EnergyBalanceEvidence E) :
    EnergyBalanceModelClosed E := by
  exact And.intro ev.solarConstantPositive (And.intro ev.albedoBetween.1 (And.intro ev.albedoBetween.2 ev.energyBalanceClosed))

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse