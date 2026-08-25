# 🌌 The Four Fundamental Geometries & Cosmic Synthesis

In classical general relativity and 20th-century differential geometry, spacetime is modeled as a single pseudo-Riemannian manifold with continuous real coordinates.

In **Idris2-Universe2**, space, time, gauge dynamics, and thermodynamics emerge constructively from **The Four Fundamental Geometries**: the **Triadic Chromogeometric Basis** (Elliptic, Hyperbolic, Parabolic) coupled to the **Irreversible Substrate Metric Engine**.

---

## 🏛️ 1. The 4 Canonical Metric Manifolds

```
                      THE 4-GEOMETRY COSMOLOGICAL SYNTHESIS
 ┌────────────────────────┬────────────────────────┬────────────────────────┐
 │ 1. ELLIPTIC (Blue)     │ 2. HYPERBOLIC (Red)    │ 3. PARABOLIC (Green)   │
 │   det g = +1           │   det g = -1           │   det g = 0            │
 │   Coordinate Z = +1    │   Coordinate Z = -1    │   Coordinate Z = 0     │
 │   Confinement Canvas   │   Non-Abelian Flux     │   Null Transport Sink  │
 │   Budget: 27 / 210     │   Budget: 128 / 210    │   Budget: 55 / 210     │
 └────────────────────────┴────────────────────────┴────────────────────────┘
                                      │
                                      ▼
                 ┌─────────────────────────────────────────┐
                 │ 4. THE SUBSTRATE / CAUSAL ARROW (g_Sub) │
                 │    g22 = 0,  det g = -1,  g12 = 1       │
                 │    Unidirectional Arrow of Time & Law   │
                 │    Total Master Budget = 210            │
                 └─────────────────────────────────────────┘
```

### A. 🔵 Elliptic Geometry ($\det g = +1$, Blue Sector, $Z = +1$)
* **Maxel Metric**: $g_{\text{Blue}} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$
* **Physical Role**: **Spacelike Confinement Canvas**.
* **Quadrance**: $Q(\vec{v}) = v_1^2 + v_2^2 > 0$ for all non-zero vectors.
* **Cosmological Allocation**: Allocates the 27 spatial voxel lattice basis ($3^3 = 27$ cells, $27/210$ total budget). Enforces color-neutral Hadron singlet binding.

### B. 🔴 Hyperbolic Geometry ($\det g = -1$, Red Sector, $Z = -1$)
* **Maxel Metric**: $g_{\text{Red}} = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$ or $g_{\text{Toroidal}} = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$
* **Physical Role**: **Timelike Non-Abelian Gauge & Symplectic Engine**.
* **Quadrance**: $Q(\vec{v}) = v_1^2 - v_2^2$ (admits lightcone null rays $Q = 0$).
* **Cosmological Allocation**: Allocates the 128-cell Dark Energy binary ROM buffer ($2^7 = 128$ cells, $128/210$ total budget). Drives $\mathrm{SU}(3)$ color exchanges ($P_{RG}, P_{GB}, P_{BR}$) and quantum commutators.

### C. 🟢 Parabolic Geometry ($\det g = 0$, Green Sector, $Z = 0$)
* **Maxel Metric**: $g_{\text{Boole}} = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$
* **Physical Role**: **Lightlike Remainder Dissipation Sink**.
* **Quadrance**: $Q(\vec{v}) = v_1^2$ (degenerate with zero orthogonal impedance).
* **Cosmological Allocation**: Accumulates the 55-state Dark Matter residue ($55/210$ total budget). Channels cyclotomic remainder tokens ($R(x) = P(x) \bmod \Phi_{137}(x)$) into the historical ledger.

### D. 🧭 The Substrate / Asymmetric Causal Geometry ($g_{22} = 0, g_{12} = 1$)
* **Maxel Metric**: $g_{\text{Substrate}} = \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}$
* **Physical Role**: **The Master Cosmological Arrow of Time**.
* **Thermodynamic Invariance**: Because $g_{22} = 0$, parallel transport and state evolution cannot flow backwards in time. Drives the 2nd Law of Thermodynamics and Baryon Asymmetry.
* **Cosmological Allocation**: Unifies the total 4th Primorial cosmic budget:
  $$\text{Total Budget} = 27 + 128 + 55 = 210 = 2 \times 3 \times 5 \times 7$$

---

## 💻 2. Executable Literate Code & Verification

```idris
module Geometry.The_Four_Fundamental_Geometries_and_Cosmic_Synthesis
import Language.Reflection

import Core.BoxInt
import Core.Polynumber
import Core.VexelMaxel
import Core.UnixelFraction
import Math.FourGeometries
import Math.DiscreteBoltzmannDistribution
import Math.LinAlgebra.MetricTensor
import Reflect.InvariantAuditor

%default total

||| Verifies that the Determinant Classification of all 4 geometries holds strictly (+1, -1, 0, Substrate).
public export
verifyFourGeometriesDeterminants : Bool
verifyFourGeometriesDeterminants =
  auditFourGeometriesDeterminantsProof

||| Verifies that the 4 geometries synthesize the 210-state cosmic budget partition and unit chance sum.
public export
verifyFourGeometriesCosmicSynthesis : Bool
verifyFourGeometriesCosmicSynthesis =
  auditFourGeometriesCosmicSynthesisProof

||| Verifies that the 210 Primorial Ground State factorizes via the Level 2 Caret Euler Product:
||| Z_210 = B_2(1) ^ B_3(1) ^ B_5(1) ^ B_7(1) with maximal degree 210 and state capacity Sigma_0 = 16.
public export
verifyPrimorial210CaretZeta : Bool
verifyPrimorial210CaretZeta =
  let zeta = primorial210Zeta
  in polynumberDegree zeta == 210 &&
     unwrapBox (summationPolynumber zeta) == 16
```
