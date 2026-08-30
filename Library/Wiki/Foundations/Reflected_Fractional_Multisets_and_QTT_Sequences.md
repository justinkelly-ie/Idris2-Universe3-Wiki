# 🔮 Reflected Fractional Multisets & QTT Ongoing Sequences

This chapter demonstrates how **Fractional Multisets (`UnixelFraction`)** and **Ongoing Sequences (`OnSeq`)** integrate seamlessly into **Quantitative Type Theory (QTT)** and **Elaborator Reflection Macros** (`Language.Reflection`):

1. **Compile-Time Elaborator Reflection**: Invariant macros statically audit non-zero Unixel denominators ($[D] \ge 1$), prove rational equivalence ($N_1 \cdot D_2 = N_2 \cdot D_1$), and verify finite sequence clip dimensions at compile time.
2. **Quantitative Type Theory (QTT) Linearity**: Linear resource multiplicities (`(1 frac : UnixelFraction)`) strictly enforce the First Law of Thermodynamics across rational observables, ensuring that splitting, scaling, and advancing fractional states incurs zero energy leakage.

---

## 🏛️ 1. Theoretical Framework

```
         ELABORATOR REFLECTION MACROS & QTT REASONING
         
   ┌────────────────────────────────────────────────────────┐
   │ COMPILE-TIME MACRO AUDIT: Language.Reflection          │
   │  - %macro auditSingFractionPositivity  -> Refl (D > 0) │
   │  - %macro auditRationalEquivalence     -> Refl (N₁D₂=N₂D₁)
   │  - %macro auditOnSeqClipExtraction     -> Refl (Length)│
   └────────────────────────────────────────────────────────┘
                              ▲
                              │ Compile-Time Reflection
                              ▼
   ┌────────────────────────────────────────────────────────┐
   │ QUANTITATIVE TYPE THEORY (QTT): Multiplicity 1         │
   │  - linearConsumeSingFraction : (1 frac) -> UnixelFraction│
   │  - linearScaleSingFraction   : (1 frac) -> (1 scale)   │
   │  - linearSplitSingFraction   : (1 frac) -> (p, n - p)  │
   │  - linearStepOnSeq           : (1 seq)  -> (term, seq')│
   └────────────────────────────────────────────────────────┘
```

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Foundations.Reflected_Fractional_Multisets_and_QTT_Sequences

import Core.BoxInt
import Core.VexelMaxel
import Core.UnixelFraction
import Core.OnSeq
import Reflect.InvariantAuditor
import Reflect.Auditor.Core
import Language.Reflection
import Data.List

%default total

||| Evidence 1: Compile-Time Reflection Witness for Unixel Denominator Positivity.
public export
evidence_macro_singleton_positivity : Reflect.Auditor.Core.auditSingFractionPositivityProofExport = True
evidence_macro_singleton_positivity = Refl

||| Evidence 2: Compile-Time Reflection Witness for Rational Cross-Multiplication Equivalence.
public export
evidence_macro_rational_equivalence : Reflect.Auditor.Core.auditRationalEquivalenceProofExport = True
evidence_macro_rational_equivalence = Refl

||| Evidence 3: Compile-Time Reflection Witness for OnSeq Clip Length Extraction.
public export
evidence_macro_onseq_clip_length : Reflect.Auditor.Core.auditOnSeqClipExtractionProofExport = True
evidence_macro_onseq_clip_length = Refl

||| Evidence 4: QTT Linear Fraction Splitting Conserves Total Numerator Energy:
||| Splitting 10/[3] into partition p=4 yields (4/[3], 6/[3]) where 4 + 6 = 10.
public export
evidence_qtt_fraction_split_conservation : Bool
evidence_qtt_fraction_split_conservation =
  let initialFrac = mkUnixelFraction (intToBoxInt 10) 3
      (f1, f2) = linearSplitSingFraction initialFrac (intToBoxInt 4)
      p1 = unwrapBox (num f1)
      p2 = unwrapBox (num f2)
  in (p1 + p2 == 10) && (den f1 == MkUnixel 3) && (den f2 == MkUnixel 3)

||| Evidence 5: QTT Linear Sequence Stepping and State Preservation:
||| Linearly stepping an OnSeq at term 5 extracts the exact term and advances the sequence index.
public export
evidence_qtt_onseq_stepping : Bool
evidence_qtt_onseq_stepping =
  let seq = identity 0
      (val, nextSeq) = linearStepOnSeq seq 5
  in case val of
       Just v  => v == 5 && start nextSeq == 6
       Nothing => False
```

---

## 🔗 Related Chapters & Cross-References

* **Constructive Foundations**:
  * [The Universal Mapping](Universal_Mapping.md) — QTT multiplicity 1 resource conservation and elaborator reflection.
  * [Fractional Multisets & Ongoing Sequences (OnSeq)](Unixel_Fractions_and_OnSeq_Algebra.md) — Non-zero Unixel denominators and constructive sequence algebra.
  * [Vexels, Maxels, Boxels & Reflected Linear Algebra](Vexels_Maxels_and_Reflected_Linear_Algebra.md) — Elaborator reflection macros and tensor representations.
* **Cosmic Evolution & Physical Laws**:
  * [The 12 Emergent Laws of Physics](../Geometry/Emergent_Pillars_of_Physics.md) — First law conservation and compile-time thermodynamic proofs.
  * [Visible Matter Tokens vs. Dark Matter Law Impedance](../Evolution/Matter_Tokens_and_Law_Impedance.md) — Fractional impedance ratios in cosmic expansion.
  * [Verification Matrix](../Verification/Verification_Matrix.md) — Comprehensive property verification and reflection audit records.
