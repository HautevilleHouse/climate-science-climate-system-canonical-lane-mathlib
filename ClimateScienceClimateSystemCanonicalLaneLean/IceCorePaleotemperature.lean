import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure IceCoreProxyRecord where
  iceCoreId : String
  depthInterval : Float × Float
  deuteriumExcess : Float
  d18O : Float

structure PaleotemperatureReconstruction where
  proxyRecord : IceCoreProxyRecord
  calibrationEquation : Float → Float
  reconstructedTemperature : Float
  temperatureAnomaly : Float

structure IsotopicPaleothermometryEvidence (P : PaleotemperatureReconstruction) where
  calibrationCoefficientsKnown : Prop
  monotonicTemperatureRelation : Prop
  confidenceInterval : Prop

def PaleotemperatureClosed (P : PaleotemperatureReconstruction) : Prop :=
  ∃ (E : IsotopicPaleothermometryEvidence P),
    E.calibrationCoefficientsKnown ∧ E.monotonicTemperatureRelation ∧ E.confidenceInterval

theorem paleotemperature_closed_from_evidence (P : PaleotemperatureReconstruction)
    (E : IsotopicPaleothermometryEvidence P) : PaleotemperatureClosed P :=
  ⟨E, E.calibrationCoefficientsKnown, E.monotonicTemperatureRelation, E.confidenceInterval⟩

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse