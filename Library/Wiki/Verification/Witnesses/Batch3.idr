module Verification.Witnesses.Batch3

import Reflect.InvariantAuditor

%default total

------------------------------------------------------------------------
-- REFLECTION AUDIT FAST BATCH 3 (27 INVARIANTS)
------------------------------------------------------------------------

public export
auditBatch3Proof : Bool
auditBatch3Proof =
  auditParabolicSinkMonotonicityProofExport &&
  auditLocalPoyntingBalanceProofExport &&
  auditVacuumPoyntingInvarianceProofExport &&
  auditToroidalPoyntingClosureProofExport &&
  auditDiracCurrentPositivityProofExport &&
  auditChiralProjectorCompletenessProofExport &&
  auditFermionicBinaryOccupancyProofExport &&
  auditZeroTemperatureFermiSurfaceProofExport &&
  auditGravitationalWaveTracelessProofExport &&
  auditGravitationalWavePropagationProofExport &&
  auditQuadrupoleRadiationLossProofExport &&
  auditCooperPairFluxQuantumProofExport &&
  auditFluxQuantizationIntegerStepsProofExport &&
  auditJosephsonPhaseSlipPeriodicityProofExport &&
  auditBaryonNumberAsymmetryPositiveProofExport &&
  auditCPViolationSeedAsymmetryProofExport &&
  auditSubstrateThermalDepartureProofExport &&
  auditDiscreteBetaFlowProofExport &&
  auditDiscreteFisherMetricProofExport &&
  auditTopologicalRGFixedPointProofExport &&
  auditPlaquetteDecimationProofExport &&
  auditMultiBlockTopologicalFixedPointProofExport &&
  auditGaugeCovariantDerivativeProofExport &&
  auditGaugeCoupledCurrentPositivityProofExport &&
  auditMetricShearSpinorInteractionProofExport &&
  auditToroidalPeriodicityProofExport &&
  auditToroidalMomentumConservationProofExport
