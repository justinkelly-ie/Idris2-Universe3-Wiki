# ⚖️ Hehner's Scale Conversion & Constructive Information Geometry

In **Idris2-Universe2**, continuous real-valued probability and transcendental logarithms ($\ln, \log_2$) are replaced by **Eric C.R. Hehner's Scale Conversion** (*Probabilities and Perspectives*), grounded in **Norman J. Wildberger's Box Arithmetic** and **Quantitative Type Theory (QTT)**.

---

## 🏛️ 1. Theoretical Architecture

### A. The Three Scales of Information
Hehner unifies information, state capacity, and probability into three interconvertible mathematical scales:

$$\begin{aligned}
b \text{ bit} &= 2^b \text{ state} = 2^{-b} \text{ chance} \\
s \text{ state} &= \frac{1}{s} \text{ chance} = \log_2 s \text{ bit} \\
c \text{ chance} &= -\log_2 c \text{ bit} = \frac{1}{c} \text{ state}
\end{aligned}$$

```
                       HEHNER'S SCALE CONVERSION TRIAD
 ┌─────────────────────────────────────────────────────────────────────────────┐
 │ 1. BIT SCALE (b) — Additive / Information Depth                            │
 │    • Constructive Realization: Stern-Brocot binary tree path depth.         │
 │    • Examples: d=7 bits for Dark Energy ROM, k=3 trits for spacetime metric.│
 ├─────────────────────────────────────────────────────────────────────────────┤
 │ 2. STATE SCALE (s) — Multiplicative / Combinatorial State Capacity          │
 │    • Constructive Realization: Multiset cardinality (Boxels, Maxels).       │
 │    • Examples: s=128 (DE), s=27 (VM), s=55 (DM), s_total=210 (Primorial).   │
 ├─────────────────────────────────────────────────────────────────────────────┤
 │ 3. CHANCE SCALE (c) — Reciprocal / Rational Proportions                     │
 │    • Constructive Realization: UnixelFraction N / [D] with non-zero [D] ≥ 1.  │
 │    • Examples: c_VM = 27/210, c_DE = 128/210, c_DM = 55/210.                │
 └─────────────────────────────────────────────────────────────────────────────┘
```

---

### B. Eliminating Irrational Logarithms via Stern-Brocot Tree Depth
In standard information theory, calculating the bit-scale of an event with chance $c = \frac{3}{5}$ yields an irrational number:
$$b = -\log_2(3/5) = \log_2(5/3) \approx 0.736965\dots \text{ bits}$$

In **Idris2-Universe2**, every positive rational fraction $c = N / [D]$ maps bijectively to a **finite discrete binary path** of Left/Right turns on the Stern-Brocot tree:
$$\frac{5}{3} \longleftrightarrow [R, L, R]$$

The exact constructive bit-entropy of the chance is the **integer path depth** ($b = 3 \text{ bits}$), eliminating floating-point approximations.

---

### C. The 4th Primorial Cosmic Budget as Normalized Hehner Chance
The cosmic partition across the 4th Primorial ($P_4\# = 2 \times 3 \times 5 \times 7 = 210$) forms an exact normalized Hehner chance distribution:

$$\sum c = c_{\text{VM}} + c_{\text{DE}} + c_{\text{DM}} = \frac{27}{210} + \frac{128}{210} + \frac{55}{210} = \frac{210}{210} \equiv 1$$

* **Visible Matter ($\text{VM}$)**: $3$ ternary coordinate bits $\implies s = 3^3 = 27 \implies c = \frac{27}{210} = \frac{9}{70}$.
* **Dark Energy ($\text{DE}$)**: $7$ binary entropy bits $\implies s = 2^7 = 128 \implies c = \frac{128}{210} = \frac{64}{105}$.
* **Dark Matter ($\text{DM}$)**: $10$ triangular history stages $\implies s = T_{10} = 55 \implies c = \frac{55}{210} = \frac{11}{42}$.

### D. Strictly Multiset-Based Information Geometry
In **Idris2-Universe2**, information scales are upgraded to first-class multiset containers (`Box`):

1. **Decision Tree Multisets (Bit Scale $b$)**:
   A decision path is a multiset of branch tokens:
   $$\text{BitBag} = \text{hehnerMultisetBitBag}([R, L, R]) \implies \{ \text{BranchR}: 2, \text{BranchL}: 1 \}$$
2. **State Token Ensembles (State Scale $s$)**:
   An ensemble $\Omega$ is an unordered collection of discrete microstates with integer multiplicities.
3. **Multiset Chance & Born Rule (Chance Scale $c$)**:
   The measurement chance of an observable $A$ inside an ensemble $\Omega$ (or quantum state $\mathbf{v}$) is the exact multiset tally ratio:
   $$c(A, \Omega) = \frac{\text{lookupBox}(A, \Omega)}{[\text{totalMass}(\Omega)]}, \quad P([k], \mathbf{v}) = \frac{\text{lookupUnixel}([k], \mathbf{v})}{[\text{totalVexelMass}(\mathbf{v})]}$$
4. **Exact Information Distance (Multiset Symmetric Difference)**:
   The discrete informational divergence between two states $A$ and $B$ replaces continuous KL-divergence:
   $$D_{\text{Box}}(A, B) = |A \mathbin{\Delta} B| = \sum_{x} |w_A(x) - w_B(x)|$$
   This satisfies all standard metric axioms ($D(A, A) = 0$, $D(A, C) \le D(A, B) + D(B, C)$) using pure integer arithmetic.

---

### E. Multiset Cross-Entropy, Compactness & Algorithmic Intelligence (MDL)
In algorithmic information theory (Solomonoff, Hutter) and cognitive neuroscience (Friston's Free Energy Principle), **intelligence is compression**: an intelligent agent constructs an internal generative model $Q$ that minimizes the cross-entropy description length of the environment $P$.

In our multiset framework:
* **Multiset Cross-Entropy**:
  $$H_{\text{Box}}(P, Q) = |P| + |P \setminus Q| = 2|P| - |P \cap Q|$$
  * When model $Q$ is perfectly aligned with environment $P$ ($P \equiv Q$), $H_{\text{Box}}(P, P) = |P|$ (minimal cross-entropy equals self-entropy).
  * When model $Q$ has zero predictive overlap ($P \cap Q = \emptyset$), $H_{\text{Box}}(P, Q) = 2|P|$ (maximum prediction error).
* **Rational Compactness / Intelligence Ratio (Jaccard Overlap Index)**:
  $$\text{CompactnessRatio}(P, Q) = \frac{|P \cap Q|}{[|P \cup Q|]} \in [0, 1]$$
  * $\text{Ratio} = 1 / 1$: Perfect compression / $100\%$ predictive intelligence.
  * $\text{Ratio} = 0 / 1$: Complete model failure / $0\%$ predictive overlap.

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Foundations.Hehner_Scale_Conversion_and_Information_Geometry

import Core.BoxInt
import Core.Multiset
import Core.VexelMaxel
import Core.UnixelFraction
import Reflect.InvariantAuditor
import Reflect.Auditor.Core
import Reflect.Auditor.Observation
import Language.Reflection

%default total

||| Evidence 1: Proof of Bits -> State expansion (7 bits -> 128 Dark Energy states)
public export
evidence_bits_to_states : Bool
evidence_bits_to_states =
  hehnerBitsToStates 7 == 128

||| Evidence 2: Proof of State -> Chance conversion (128 states -> 1 / [128] unit chance)
public export
evidence_states_to_chance : Bool
evidence_states_to_chance =
  hehnerStatesToChance 128 == mkUnixelFraction (intToBoxInt 1) 128

||| Evidence 3: Proof of Chance -> Bit conversion via Stern-Brocot path depth (5/3 -> 3 bits)
public export
evidence_chance_to_bits : Bool
evidence_chance_to_bits =
  hehnerBitDepth 10 (mkUnixelFraction (intToBoxInt 5) 3) == 3

||| Evidence 4: Proof of Exact Cosmic Chance Normalization (27/210 + 128/210 + 55/210 == 1)
public export
evidence_cosmic_chance_normalization : Bool
evidence_cosmic_chance_normalization =
  let vm = hehnerTallyToChance 27 210
      de = hehnerTallyToChance 128 210
      dm = hehnerTallyToChance 55 210
      totChance = addUnixelFraction (addUnixelFraction vm de) dm
  in totChance == unitUnixelFraction


||| Evidence 5: Proof of Multiset Information Distance Metric Axioms (Triangle Inequality)
public export
evidence_multiset_information_distance_axioms : Bool
evidence_multiset_information_distance_axioms =
  auditMultisetInformationDistanceProof

||| Evidence 6: Proof of Multiset Born Rule and Decision Token Triad
public export
evidence_multiset_born_rule : Bool
evidence_multiset_born_rule =
  auditMultisetHehnerTriadProof

||| Evidence 7: Proof of Multiset Cross-Entropy Properties (Self-entropy minimization & Mismatch bound)
public export
evidence_multiset_cross_entropy : Bool
evidence_multiset_cross_entropy =
  auditMultisetCrossEntropyProof

||| Evidence 8: Proof of Multiset Compactness Ratio (Jaccard Overlap Intelligence Index in [0, 1])
public export
evidence_multiset_compactness_ratio : Bool
evidence_multiset_compactness_ratio =
  auditMultisetCompactnessRatioProof

------------------------------------------------------------------------
-- ELABORATOR REFLECTION MACRO WITNESSES
------------------------------------------------------------------------

||| Compile-time Reflection Witness proving Hehner Scale Conversion and Cosmic Normalization
public export
proof_hehner_scale_conversion_refl : Reflect.Auditor.Core.auditHehnerScaleConversionProofExport = True
proof_hehner_scale_conversion_refl = auditHehnerScaleConversion

||| Compile-time Reflection Witness proving Multiset Information Distance Metric Axioms
public export
proof_multiset_information_distance_refl : Reflect.Auditor.Core.auditMultisetInformationDistanceProofExport = True
proof_multiset_information_distance_refl = auditMultisetInformationDistance

||| Compile-time Reflection Witness proving Multiset Born Rule and Hehner Triad
public export
proof_multiset_born_rule_refl : Reflect.Auditor.Observation.auditMultisetHehnerTriadProofExport = True
proof_multiset_born_rule_refl = auditMultisetHehnerTriad

||| Compile-time Reflection Witness proving Multiset Cross-Entropy Properties
public export
proof_multiset_cross_entropy_refl : Reflect.Auditor.Core.auditMultisetCrossEntropyProofExport = True
proof_multiset_cross_entropy_refl = auditMultisetCrossEntropy

||| Compile-time Reflection Witness proving Multiset Compactness Ratio Bounds
public export
proof_multiset_compactness_refl : Reflect.Auditor.Core.auditMultisetCompactnessProofExport = True
proof_multiset_compactness_refl = auditMultisetCompactness
```



---

## 🔗 Related Chapters & Cross-References

* **Mathematical Foundations & Fractions**:
  * [Fractional Multisets & Ongoing Sequences (OnSeq)](Unixel_Fractions_and_OnSeq_Algebra.md) — Non-zero Unixel denominators and division-by-zero immunity.
  * [Reflected Fractional Multisets & QTT Sequences](Reflected_Fractional_Multisets_and_QTT_Sequences.md) — Elaborator Reflection invariant macros auditing non-zero denominators.
  * [Box Arithmetic & Inductive Multisets](Box_Arithmetic.md) — Empty box multiset containers.
* **Quantum Foundations & Thermodynamics**:
  * [Emergent Quantum Mechanics](Emergent_Quantum_Mechanics.md) — Rational Born tally ratios and finitist quantum mechanics.
  * [Quantum Measurement & Superposition](Quantum_Measurement_and_Superposition.md) — Observer-free cyclotomic collapse.
  * [Visible Matter Tokens vs. Dark Matter Law Impedance](../Evolution/Matter_Tokens_and_Law_Impedance.md) — Duality between matter numerators and law denominators.
* **Cosmic Evolution**:
  * [Dark Matter as the Cosmic Law Ledger](../Evolution/Dark_Matter_Law_Storage.md) — Irreversible entropy accumulation.
  * [The 12 Emergent Laws of Physics](../Geometry/Emergent_Pillars_of_Physics.md) — Law 1 (Conservation) and Law 2 (Entropy Growth).
