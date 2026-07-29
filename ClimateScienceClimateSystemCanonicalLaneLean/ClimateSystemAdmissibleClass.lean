import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure ClimateAdmittedObject where
  temperatureRecord : Type
  co2Concentration : Type
  iceCoreData : Type
  orbitalForcing : Type
  systemEquilibrium : Prop
  conclusion : systemEquilibrium

structure ClimateAdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.systemEquilibrium

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse