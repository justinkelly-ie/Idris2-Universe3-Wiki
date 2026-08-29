module Verification.Witnesses.Batch5

import Reflect.InvariantAuditor

%default total

------------------------------------------------------------------------
-- REFLECTION AUDIT FAST BATCH 5 (27 INVARIANTS)
------------------------------------------------------------------------

public export
auditBatch5Proof : Bool
auditBatch5Proof =
  auditDyckHuffmanHolographicProofExport &&
  auditCosmicGenesisRelicFreezeOutProofExport &&
  auditDiscreteHawkingRadiationProofExport &&
  auditDiscreteHallViscosityProofExport &&
  auditDiscretePageCurveProofExport &&
  auditDiscreteOnsagerReciprocityProofExport &&
  auditDiscreteChernSimonsMassProofExport &&
  auditDiscreteTOVLimitProofExport &&
  auditDiscreteCrooksTheoremProofExport &&
  auditDiscreteCasimirPolderProofExport &&
  auditDiscreteBohmianPotentialProofExport &&
  auditDiscreteLandauerBuettikerProofExport &&
  auditDiscreteBCSSuperconductivityProofExport &&
  auditDiscreteBelousovZhabotinskyProofExport &&
  auditDiscreteTopologicalInsulatorProofExport &&
  auditDiscreteQuantumTeleportationProofExport &&
  auditDiscreteJaynesCummingsProofExport &&
  auditDiscreteRyuTakayanagiProofExport &&
  auditDiscreteToricCodeProofExport &&
  auditDiscreteMichaelisMentenProofExport &&
  auditDiscreteHodgkinHuxleyProofExport &&
  auditDiscreteMonodWymanChangeuxProofExport &&
  auditDiscreteRibosomalTranslationProofExport &&
  auditDiscreteKerrSpacetimeProofExport &&
  auditDiscreteAlfvénMHDProofExport &&
  auditDiscreteChandrasekharLimitProofExport &&
  auditDiscreteHawkingPageTransitionProofExport
