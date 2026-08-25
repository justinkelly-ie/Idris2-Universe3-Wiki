# 🌡️ Law 2: The Discrete Boltzmann Distribution & Sector Partition Functions

In **Epoch 37**, statistical mechanics and thermal equilibrium emerge from the grand path-sum of **Law 1 (The Discrete Principle of Least Action)** through the **Discrete Boltzmann Distribution** and the **Tri-Geometric Sector Partition Function** across the **Primorial 210 Cosmic Budget** ($27\text{ VM} + 128\text{ DE} + 55\text{ DM} = 210$).

---

## 🏛️ 1. Theoretical Framework

```
                 THE DISCRETE BOLTZMANN & PARTITION PIPELINE
  ┌─────────────────────────────────────────────────────────────────┐
  │ 1. Microstates & Multiplicities:                                │
  │    Spectrum {E₀, E₁, ..., E_K} with integer degeneracies w(E_k) │
  │                               │                                 │
  │                               ▼                                 │
  │ 2. Rational Temperature Factor: q = N_q / D_q ∈ (0, 1) ∩ ℚ      │
  │    Boltzmann weight W(E_k) = w(E_k) · q^{E_k}                   │
  │                               │                                 │
  │                               ▼                                 │
  │ 3. Tri-Geometric Sector Partition Functions:                   │
  │    • Z_Ell(q) = ∑ w_Ell(k) q^k   (27 Elliptic VM Bound States)  │
  │    • Z_Hyp(q) = ∑ w_Hyp(k) q^k   (128 Hyperbolic DE Gauge Modes)│
  │    • Z_Par(q) = ∑ w_Par(k) q^k   (55 Parabolic DM Residues)     │
  │                               │                                 │
  │                               ▼                                 │
  │ 4. Composite Cosmic Partition Function:                         │
  │    Z_Cosmic(q) = Z_Ell²⁷(q) × Z_Hyp¹²⁸(q) × Z_Par⁵⁵(q)  (= 210) │
  │                               │                                 │
  │                               ▼                                 │
  │ 5. Exact Rational Boltzmann Probabilities (UnixelFraction):       │
  │    P(E_k) = (w(E_k) · q^{E_k}) / Z(q)   where ∑ P(E_k) = 1/1    │
  │                               │                                 │
  │                               ▼                                 │
  │ 6. Zero-Temperature Ground State Collapse:                      │
  │    q ──> 0  ==>  P(E₀) = 1/1,  S = 0 (Maximum Compactness)      │
  └─────────────────────────────────────────────────────────────────┘
```

### A. The Path-Integral Origin of Boltzmann Factors
In the constructivist formulation, thermal statistical mechanics is the grand ensemble of all discrete trajectories weighted by their Action $S[\gamma]$ from **Law 1**:
$$P(\gamma) = \frac{q^{S[\gamma]}}{Z(q)}, \quad Z(q) = \sum_{\gamma} q^{S[\gamma]}$$
where $q = \frac{N_q}{D_q} \in (0, 1) \cap \mathbb{Q}$ is the rational temperature parameter ($q \approx 1 - \beta \Delta E$).

### B. Tri-Geometric Factorization Across the 210 Budget
The Cosmic Partition Function in Epoch 37 factorizes across the 3 physical sectors:
$$Z_{\text{Cosmic}}(q) = \underbrace{Z_{\text{Elliptic}}^{27}(q)}_{\text{Bound States}} \times \underbrace{Z_{\text{Hyperbolic}}^{128}(q)}_{\text{Gauge Modes}} \times \underbrace{Z_{\text{Parabolic}}^{55}(q)}_{\text{Memory Ledger}}$$
strictly matching the 4th Primorial budget decomposition:
$$27 + 128 + 55 = 210$$

### C. Rational Probability Normalization
For any discrete energy spectrum, the Boltzmann probabilities are represented as exact rational fractions (`UnixelFraction`) satisfying:
$$\sum_{k=0}^{m} P(E_k) = \frac{\sum_{k=0}^m w_k N^k D^{m-k}}{Z(q)} = \frac{Z(q)}{Z(q)} = \frac{1}{1}$$
with zero round-off error or floating-point approximations.

### D. Zero-Temperature Ground State Collapse
In the zero-temperature limit ($q \to 0$), all excited state weights vanish ($P(E > 0) = 0$), and the ground state probability collapses strictly to $P(E_0) = 1/1$.
This drops thermodynamic entropy to $S = 0$ and maximizes the **Multiset Compactness Intelligence Ratio**.

---

## 💻 2. Executable Literate Code & Verification

```idris
module Geometry.Discrete_Boltzmann_and_Sector_Partition_Functions
import Language.Reflection

import Core.BoxInt
import Core.UnixelFraction
import Math.DiscreteBoltzmannDistribution

%default total

||| Verifies that Discrete Boltzmann probabilities strictly sum to 1/1.
public export
verifyBoltzmannProbabilityNormalization : Bool
verifyBoltzmannProbabilityNormalization =
  auditBoltzmannProbabilityNormalizationProof

||| Verifies that the Sector Partition exponents sum to the 4th Primorial 210.
public export
verifyCosmicBudgetPartitionFactorization : Bool
verifyCosmicBudgetPartitionFactorization =
  auditCosmicBudgetPartitionFactorizationProof

||| Verifies that the ground state strictly collapses to P(E_0) = 1/1 as q -> 0.
public export
verifyZeroTemperatureGroundStateCollapse : Bool
verifyZeroTemperatureGroundStateCollapse =
  auditZeroTemperatureGroundStateCollapseProof
```
