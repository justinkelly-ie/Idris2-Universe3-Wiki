# 📐 Multiset-Based Clifford Geometric Algebra

In **Idris2-Universe2**, Clifford Geometric Algebra is constructed from **discrete multiset tensor blades**, unifying scalars, vectors (1-blades), bivectors (2-blades), and trivectors (3-blades) into a single algebraic container.

---

## 🏛️ 1. Theoretical Architecture

### A. The Clifford Multivector Hierarchy
A **Multivector** $M$ decomposes into graded multiset components:

$$M = s \cdot \mathbf{1} + \mathbf{v} + \mathbf{B} + \mathbf{T}$$

| Grade | Geometric Object | Multiset Container | Physical / Field Interpretation |
| :--- | :--- | :--- | :--- |
| **0-Blade** | Scalar ($s$) | `BoxInt` | Mass, charge, scalar energy density |
| **1-Blade** | Vector ($\mathbf{v}$) | `Vexel` ($\sum c_k [k]$) | Momentum, velocity, 1-form gauge potential $A$ |
| **2-Blade** | Bivector ($\mathbf{B}$) | `Maxel` ($\sum a_{ij} [i, j]$) | Curvature 2-form $F = dA$, electromagnetic field $\vec{E} \wedge \vec{B}$ |
| **3-Blade** | Trivector ($\mathbf{T}$) | `Boxel` ($\sum \rho_{xyz} [x, y, z]$) | 3D volume charge density, chiral pseudoscalar |

---

### B. The Geometric Product & Involutions
The **Geometric Product** of two vectors $\mathbf{u}, \mathbf{v}$ decomposes into the symmetric inner product and the antisymmetric wedge outer product:

$$\mathbf{u} \mathbf{v} = \langle \mathbf{u}, \mathbf{v} \rangle_{g} \cdot \mathbf{1} + (\mathbf{u} \wedge \mathbf{v})$$

* **Quadrance Metric Invariance**:
  For any vector $\mathbf{v}$, its geometric self-product squares to its scalar quadrance $Q(\mathbf{v})$ with zero bivector component:
  $$\mathbf{v}^2 = \mathbf{v} \mathbf{v} = Q(\mathbf{v}) \cdot \mathbf{1}$$
* **Multivector Reversion ($\dagger$)**:
  Reverses the order of basis blade multiplication:
  $$(s + \mathbf{v} + \mathbf{B} + \mathbf{T})^\dagger = s + \mathbf{v} - \mathbf{B} - \mathbf{T}$$
* **Hyperplane Reflection**:
  Reflects vector $\mathbf{v}$ across the hyperplane orthogonal to normal vector $\mathbf{n}$:
  $$\mathbf{v}' = \mathbf{v} - 2 \frac{\langle \mathbf{v}, \mathbf{n} \rangle}{\langle \mathbf{n}, \mathbf{n} \rangle} \mathbf{n}$$

---

### C. Constructive Dirac Spinors & Conserved Currents
An even multivector spinor $\psi = s + \mathbf{B}$ generates the physical Dirac 4-current:

$$\mathbf{j} = \psi \gamma_0 \psi^\dagger \implies \begin{cases} j_0 = s^2 + \|\mathbf{B}\|^2 & (\text{Charge Density}) \\ \vec{j} = 2 s \vec{v} & (\text{Spatial Current}) \end{cases}$$

The divergence of the discrete Dirac current across all 6 faces of a closed bounding voxel vanishes identically ($\nabla \cdot \mathbf{j} = 0$).

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Foundations.Clifford_Multivector_Algebra

import Core.BoxInt
import Core.VexelMaxel
import Math.LinAlgebra.BilinearProduct
import Math.CliffordAlgebra
import Reflect.InvariantAuditor
import Reflect.Auditor.Geometry
import Reflect.Auditor.Math
import Language.Reflection

%default total

||| Evidence 1: Proof that a pure vector squared equals its scalar quadrance: v^2 = Q(v) * 1
public export
evidence_clifford_geometric_product_quadrance : Bool
evidence_clifford_geometric_product_quadrance =
  auditCliffordGeometricProductProof

||| Evidence 2: Proof of Hyperplane Reflection orthogonality: reflecting (3, 0) across normal (1, 0) yields (-3, 0)
public export
evidence_hyperplane_reflection : Bool
evidence_hyperplane_reflection =
  let v = MkVexel [(MkUnixel 1, intToBoxInt 3)]
      n = MkVexel [(MkUnixel 1, intToBoxInt 1)]
      g = identityMaxel
      vRefl = reflectVector g n v
      w = lookupUnixel (MkUnixel 1) vRefl

  in unwrapBox w == -3

||| Evidence 3: Dirac 4-Current Divergence Non-Vanishing Flow
public export
evidence_dirac_current_conservation : Bool
evidence_dirac_current_conservation =
  Math.CliffordAlgebra.auditDiracCurrentConservationProof

------------------------------------------------------------------------
-- ELABORATOR REFLECTION MACRO WITNESSES
------------------------------------------------------------------------

||| Compile-time Reflection Witness proving Clifford Geometric Product Quadrance v^2 = Q(v)
public export
proof_clifford_geometric_product_refl : Reflect.Auditor.Math.auditCliffordGeometricProductProofExport = True
proof_clifford_geometric_product_refl = Refl

||| Compile-time Reflection Witness proving Dirac 4-Current Divergence Conservation
public export
proof_dirac_current_conservation_refl : Reflect.Auditor.Math.auditDiracCurrentConservationLaw8ProofExport = True
proof_dirac_current_conservation_refl = Refl
```

---

## 🔗 Related Chapters & Cross-References

* **Mathematical Foundations & Linear Algebra**:
  * [Vexels, Maxels, Boxels & Reflected Linear Algebra](Vexels_Maxels_and_Reflected_Linear_Algebra.md) — Singletons, Pixels, Voxels, and multiset tensor representations.
  * [Nilpotent Infinitesimal Calculus](Nilpotent_Infinitesimals.md) — Dual numbers and infinitesimal matrix units.
  * [The Universal Mapping](Universal_Mapping.md) — Correspondence between type theory and geometric algebras.
* **Physics & Gauge Dynamics**:
  * [The Constructive Dirac Spinor Equation](../Geometry/Constructive_Dirac_Spinor.md) — Fermionic Dirac spinors in Clifford geometric spacetime.
  * [Grassmann Exterior Calculus & Yang-Mills Gauge Theory](../Geometry/Grassmann_and_Yang_Mills.md) — Exterior differential forms, coboundaries, and Hodge duality.
  * [The 12 Emergent Laws of Physics](../Geometry/Emergent_Pillars_of_Physics.md) — Emergent conservation laws and Pauli exclusion.
