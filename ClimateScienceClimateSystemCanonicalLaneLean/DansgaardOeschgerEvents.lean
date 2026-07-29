import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSystemCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarmingRate : ℚ
  coolingTrend : ℚ
  interstadialDuration : ℚ
  stadialCondition : Prop
  amocBistability : Prop
  seaIceFeedback : Prop
  atmosphericTeleconnection : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  stadialConditionClosed : D.stadialCondition
  amocBistabilityClosed : D.amocBistability
  seaIceFeedbackClosed : D.seaIceFeedback
  atmosphericTeleconnectionClosed : D.atmosphericTeleconnection

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.stadialCondition ∧ D.amocBistability ∧ D.seaIceFeedback ∧ D.atmosphericTeleconnection

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage)
    (Ev : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro Ev.stadialConditionClosed
    (And.intro Ev.amocBistabilityClosed
      (And.intro Ev.seaIceFeedbackClosed Ev.atmosphericTeleconnectionClosed))

end ClimateScienceClimateSystemCanonicalLaneLean
end HautevilleHouse
