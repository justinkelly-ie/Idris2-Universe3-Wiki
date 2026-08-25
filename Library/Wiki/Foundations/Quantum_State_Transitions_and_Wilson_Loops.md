# 🌀 Quantum State Transitions, Unitary S-Matrices & Wilson Plaquettes

Standard quantum mechanics and lattice gauge theory are traditionally formulated using continuous $\mathrm{U}(N)$ / $\mathrm{SU}(N)$ Lie groups, path integrals with uncomputable continuous measures $\mathcal{D}A$, and infinite-dimensional Hilbert spaces over $\mathbb{C}$.

In **Idris2-Universe2**, quantum state transitions, unitary scattering operators, and Wilson loop gauge holonomies are formulated constructively over **finite discrete state Vexels**, **Maxel transition matrices**, and **exact rational Born fractions (`UnixelFraction`)**.

---

## 🏛️ 1. Constructive Quantum Principles

```
            CONSTRUCTIVE QUANTUM TRANSITION & GAUGE FORMULATION
  ┌────────────────────────────────────────────────────────────────────────┐
  │ 1. Quantum State Vector: List of basis Singletons + DualAmplitudes (a+ib)
  │ 2. Discrete S-Matrix: Maxel transition operators with exact adjoints   │
  │ 3. Born Probability Invariance: Total norm sum |c_k|^2 conserved (1/1) │
  │ 4. Plaquette Holonomy: W_square = U_12 * U_23 * U_34 * U_41            │
  │ 5. Gauge Invariance: Tr(W) is strictly invariant under local V_i shifts│
  └────────────────────────────────────────────────────────────────────────┘
```

### A. Discrete Complex Amplitudes ($\mathbb{Z}[i]$ over BoxInt)
Wavefunction amplitudes are represented by the discrete Gaussian integer record:
$$\psi_k = a_k + i b_k, \quad a_k, b_k \in \text{BoxInt}$$
The squared magnitude is given without square roots or real-valued approximations:
$$|\psi_k|^2 = a_k^2 + b_k^2$$

### B. Born Probability Ratios as Non-Zero Unixel Fractions
The Born probability of observing basis state $k$ is computed as the exact rational fraction:
$$P(k) = \frac{|\psi_k|^2}{\sum_j |\psi_j|^2} = \frac{a_k^2 + b_k^2}{\sum_j (a_j^2 + b_j^2)} \in \text{UnixelFraction}$$
Because the total norm $\sum |\psi_j|^2 \ge 1$ for non-trivial states, the probability is guaranteed division-by-zero free and strictly satisfies:
$$\sum_k P(k) = \frac{1}{1} \equiv \text{unitUnixelFraction}$$

### C. Discrete Unitary Operators and S-Matrices
A linear quantum transition is encoded as a `QuantumOperator` $U$:
$$|\psi'\rangle = U |\psi\rangle, \quad c'_i = \sum_j U_{ij} c_j$$
The conjugate transpose $U^\dagger$ satisfies:
$$(U^\dagger)_{ij} = \overline{U_{ji}}$$

### D. Wilson Loop Plaquette Holonomy
On the discrete 3D lattice (or 2D plaquette), gauge field link variables $U_{ij}$ reside on directed edges. The discrete **Wilson loop holonomy** around a 4-edge plaquette is the ordered operator product:
$$W_\square = U_{12} \cdot U_{23} \cdot U_{34} \cdot U_{41}$$
The gauge-invariant observable is the trace:
$$\mathcal{W} = \operatorname{Tr}(W_\square) = \sum_i (W_\square)_{ii}$$
Under any local vertex gauge transformation $U_{ij} \mapsto V_i U_{ij} V_j^\dagger$, the cyclic property of the trace guarantees:
$$\operatorname{Tr}(W'_\square) \equiv \operatorname{Tr}(W_\square)$$

---

## 💻 2. Executable Literate Code & Verification

```idris
module Foundations.Quantum_State_Transitions_and_Wilson_Loops
import Language.Reflection

import Core.BoxInt
import Core.VexelMaxel
import Core.UnixelFraction
import Math.QuantumTransition

%default total

||| Verifies that Hadamard beam-splitting maintains exact Born rational probabilities (1/2 + 1/2 = 1/1).
public export
verifyHadamardBornConservation : Bool
verifyHadamardBornConservation =
  auditUnitaryProbabilityConservationProof

||| Verifies that the Wilson Loop Plaquette trace is 100% gauge invariant under vertex gauge transformation.
public export
verifyWilsonLoopGaugeInvariance : Bool
verifyWilsonLoopGaugeInvariance =
  auditWilsonLoopGaugeInvarianceProof

||| Verifies that rational Born probabilities across arbitrary state vectors sum to 1/1 UnixelFraction.
public export
verifyBornStateSum : Bool
verifyBornStateSum =
  auditDiscreteBornTransitionTallyProof
```
