# 🔢 Fractional Multisets & Ongoing Sequences (OnSeq)

In constructive finitist mathematics, two fundamental algebraic structures eliminate continuous infinities and division anomalies:

1. **Fractional Multisets (`UnixelFraction`)**: A fractional multiset pairing a numerator multiset or signed `BoxInt` token ($N \in \mathbb{Z}$) with a strictly positive **Unixel denominator** ($[D] \ge 1$). This structure provides compile-time division-by-zero immunity. In **Idris2-Boole**, the denominator is $D = [1]$ (Boolean logic gates), while in **Idris2-Universe2**, $D = [1 + \text{drag}]$ (gravitational scale impedance).
2. **Wildberger's Ongoing Sequences (`OnSeq`)**: Rather than positing completed infinite sets ($\mathbb{N} \to \infty$), sequences are defined constructively as open-ended generator functions ($[a_n\rangle$) paired with **Clips** (finite observable window slices).

---

## 🏛️ 1. Theoretical Framework

```
         FRACTIONAL MULTISET WITH SINGLETON DENOMINATOR
         
          Numerator Multiset / BoxInt (N ∈ ℤ)
       ─────────────────────────────────────────
             Unixel Denominator ([D] ≥ 1)
             
       * Guaranteed Non-Zero: D = 0 is clamped to [1]
       * Cross-Multiplication Equality: N₁ · D₂ ≡ N₂ · D₁
```

```
               ON-SEQUENCE (OnSeq) & FINITE CLIPS
               
       OnSeq a: [ a_start, a_{start+1}, a_{start+2}, ... >
       
       Clip(idx, len): [ a_idx, a_{idx+1}, ..., a_{idx+len-1} ]
```

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Foundations.Unixel_Fractions_and_OnSeq_Algebra
import Language.Reflection

import Core.BoxInt
import Core.VexelMaxel
import Core.UnixelFraction
import Core.OnSeq
import Data.List

%default total

||| Evidence 1: Proof of division-by-zero immunity in UnixelFraction.
||| Passing a 0 denominator safely clamps to a unit Unixel [1].
public export
evidence_div_zero_immunity : Bool
evidence_div_zero_immunity =
  let frac = mkUnixelFraction (intToBoxInt 42) 0
  in den frac == MkUnixel 1 && unwrapBox (num frac) == 42

||| Evidence 2: Exact Rational Addition of SingFractions.
||| (1 / [2]) + (1 / [3]) = (3 + 2) / [6] = 5 / [6].
public export
evidence_rational_addition : Bool
evidence_rational_addition =
  let f1 = mkUnixelFraction (intToBoxInt 1) 2
      f2 = mkUnixelFraction (intToBoxInt 1) 3
      res = addUnixelFraction f1 f2
      expected = mkUnixelFraction (intToBoxInt 5) 6
  in res == expected

||| Evidence 3: Exact Rational Multiplication & Cross-Multiplication Invariance.
||| (2 / [3]) * (3 / [4]) = 6 / [12] == 1 / [2].
public export
evidence_rational_multiplication : Bool
evidence_rational_multiplication =
  let f1 = mkUnixelFraction (intToBoxInt 2) 3
      f2 = mkUnixelFraction (intToBoxInt 3) 4
      res = mulUnixelFraction f1 f2
      half = mkUnixelFraction (intToBoxInt 1) 2
  in rationalEquiv res half


||| Evidence 4: OnSeq Finite Clip Extraction.
||| An ongoing sequence starting at Epoch 10 yields an exact 4-element clip [10, 11, 12, 13].
public export
evidence_onseq_clip_extraction : Bool
evidence_onseq_clip_extraction =
  let seq = identity 10
      clip = getClip seq 10 4
  in elements clip == [10, 11, 12, 13]

||| Evidence 5: Pointwise OnSeq Algebra on Cosmological Trajectories.
||| Pointwise addition of an identity sequence [n> and a constant sequence [5>
||| evaluated at term 10 yields 10 + 5 = 15.
public export
evidence_pointwise_onseq_algebra : Bool
evidence_pointwise_onseq_algebra =
  let s1 = MkOnSeq 0 (\n => intToBoxInt (natToInteger n))
      s2 = constant 0 (intToBoxInt 5)
      sumSeq = addOnSeqBox s1 s2
      term10 = getTerm sumSeq 10
  in case term10 of
       Just v  => unwrapBox v == 15
       Nothing => False

||| Evidence 6: Exact Continued Fraction Expansion & Rational Reconstruction.
||| Decomposes 43 / [19] into continued fraction [2; 3, 1, 4] and reconstructs 43 / [19].
public export
evidence_continued_fraction_convergence : Bool
evidence_continued_fraction_convergence =
  auditContinuedFractionProof

||| Evidence 7: Exact Stern-Brocot Binary Path Encoding & Mediant Reconstruction.
||| 5 / [3] maps bijectively to path [R, L, R] and reconstructs to 5 / [3].
public export
evidence_stern_brocot_tree_path : Bool
evidence_stern_brocot_tree_path =
  auditSternBrocotProof
```

---

## 🔗 Related Chapters & Cross-References

* **Constructive Foundations**:
  * [Box Arithmetic & Inductive Multisets](Box_Arithmetic.md) — Foundations of Unixel $[D]$ non-zero container tallies.
  * [Reflected Fractional Multisets & QTT Sequences](Reflected_Fractional_Multisets_and_QTT_Sequences.md) — Elaborator Reflection macros auditing non-zero denominators and cross-multiplication proofs.
  * [Nested Polynomial Multisets](Nested_Polynomial_Multisets.md) — Polynomial multisets and rational fraction representations.
* **Physical Applications**:
  * [Emergent Quantum Mechanics](Emergent_Quantum_Mechanics.md) — Rational probability amplitude fractions without continuous wave equations.
  * [Rational Snell's Law & The Triple Spread Law](../Geometry/Rational_Snell_and_Triple_Spread.md) — Exact rational trigonometric spread ratios.
  * [Contradictions With Standard Physics](Contradictions_With_Standard_Physics.md) — Replacing non-constructive Dedekind reals with constructive Unixel fractions and OnSeqs.

