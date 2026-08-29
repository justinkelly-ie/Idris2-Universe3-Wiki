module Verification.Witnesses.Batch2

import Reflect.InvariantAuditor

%default total

------------------------------------------------------------------------
-- REFLECTION AUDIT FAST BATCH 2 (27 INVARIANTS)
------------------------------------------------------------------------

public export
auditBatch2Proof : Bool
auditBatch2Proof =
  auditBoxOrderingAndContourWalkProofExport &&
  auditVexelBalanceArrayProofExport &&
  auditMagicMaxelConservationProofExport &&
  auditUnitaryProbabilityConservationProofExport &&
  auditWilsonLoopGaugeInvarianceProofExport &&
  auditDiscreteBornTransitionTallyProofExport &&
  auditWilsonPolyhedronBianchiClosureProofExport &&
  auditChromogeometricColorGaugeInvarianceProofExport &&
  auditHadronSingletPolyhedralInvarianceProofExport &&
  auditFourGeometriesDeterminantsProofExport &&
  auditFourGeometriesCosmicSynthesisProofExport &&
  auditDiscreteEulerLagrangeEquivalenceProofExport &&
  auditSubstrateActionAsymmetryProofExport &&
  auditGeodesicLeastActionOptimalityProofExport &&
  auditDiscreteMomentumConservationProofExport &&
  auditParabolicNullMomentumZeroProofExport &&
  auditSectorSpecificActionSignaturesProofExport &&
  auditBoltzmannProbabilityNormalizationProofExport &&
  auditCosmicBudgetPartitionFactorizationProofExport &&
  auditCasimirAttractiveForceProofExport &&
  auditCasimirModeConfinementProofExport &&
  auditChernNumberIntegerQuantizationProofExport &&
  auditTopologicalHallConductanceProofExport &&
  auditAharonovBohmPhaseShiftProofExport &&
  auditWilsonLoopGaugeClosureProofExport &&
  auditLandauerDissipationBoundProofExport &&
  auditLandauerTotalConservationProofExport
