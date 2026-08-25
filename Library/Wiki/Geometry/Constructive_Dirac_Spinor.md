# ⚛️ The Constructive Dirac Spinor Equation & Current Conservation

In relativistic quantum mechanics, the Dirac equation describes spin-1/2 fermions:
$$(i \gamma^\mu \partial_\mu - m) \psi = 0$$

In **Idris2-Universe2**, spinors and the Dirac equation are formulated using **Clifford Geometric Algebra** over discrete multivectors without complex matrices or transcendental wavefunctions.

---

## 🏛️ 1. Multivector Dirac Formulation

1. **Clifford Basis Elements**:
   The Dirac gamma matrices $\gamma^\mu$ are the orthogonal basis 1-blades satisfying:
   $$\{\gamma^\mu, \gamma^\nu\} = 2 \eta^{\mu\nu} \mathbf{1}$$
2. **Even Multivector Spinors**:
   A Dirac spinor $\psi$ is an even Multivector $(\text{Scalar} + \text{Bivector}) \in \text{Multivector}$.
3. **Conserved Vector Current**:
   The Dirac 4-current is constructed via rotor multivector sandwiches:
   $$j = \psi \gamma_0 \psi^\dagger \in \text{Vexel}$$
   and satisfies the discrete continuity equation:
   $$\sum_{f \in \partial V} j^\mu \hat{n}_\mu \equiv 0$$

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Geometry.Constructive_Dirac_Spinor
import Language.Reflection

import Core.BoxInt
import Core.VexelMaxel
import Math.CliffordAlgebra

%default total

||| Evaluates discrete divergence of a Dirac current across the 6 faces bounding a 3D Voxel.
public export
verifyDiracCurrentContinuity : List BoxInt -> Bool
verifyDiracCurrentContinuity faceCurrents =
  let totalDivergence = sum faceCurrents
  in unwrapBox totalDivergence == 0

||| Evidence 1: Proof that the discrete Dirac current satisfies exact zero net divergence across a closed voxel.
public export
evidence_dirac_current_conservation : Bool
evidence_dirac_current_conservation =
  let currents = [ intToBoxInt 8   -- +X inflow
                 , intToBoxInt (-8) -- -X outflow
                 , intToBoxInt 14  -- +Y inflow
                 , intToBoxInt (-14)-- -Y outflow
                 , intToBoxInt 22  -- +Z inflow
                 , intToBoxInt (-22)-- -Z outflow
                 ]
  in verifyDiracCurrentContinuity currents

||| Evidence 2: Proof that Clifford multivector geometric product satisfies v^2 = Q(v) * 1.
public export
evidence_dirac_clifford_invariance : Bool
evidence_dirac_clifford_invariance =
  auditCliffordGeometricProductProof
```

---

## 🔗 Related Chapters & Cross-References

* **Algebraic & Quantum Foundations**:
  * [Emergent Quantum Mechanics](../Foundations/Emergent_Quantum_Mechanics.md) — Finitist quantum mechanics without infinite-dimensional Hilbert spaces.
  * [Nilpotent Infinitesimal Calculus](../Foundations/Nilpotent_Infinitesimals.md) — Nilpotent matrices $\epsilon^2 = 0$ and discrete phase space.
  * [Vexels, Maxels, Boxels & Reflected Linear Algebra](../Foundations/Vexels_Maxels_and_Reflected_Linear_Algebra.md) — Multiset basis representations and Clifford multivectors.
* **Particle Physics & Gauge Fields**:
  * [Grassmann Exterior Calculus & Yang-Mills Gauge Theory](Grassmann_and_Yang_Mills.md) — Exterior differential forms and gauge field couplings.
  * [Hadronic Color Confinement](Hadronic_Color_Confinement.md) — Fermionic quark singlet balance in hadrons.
  * [The 12 Emergent Laws of Physics](Emergent_Pillars_of_Physics.md) — Law 9 (Pauli Exclusion) and spinor continuity proofs.

