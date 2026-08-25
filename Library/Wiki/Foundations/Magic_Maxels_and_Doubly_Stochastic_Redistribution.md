# 🔮 Magic Maxels & Doubly Stochastic Token Redistribution

In Chapter 27 of *Box Arithmetic I*, Norman Wildberger introduces **Magic Arrays / Magic Maxels** to formalize token flow on 2D lattices. In standard probability theory, Markov transition matrices use continuous real fractions $\sum_j P_{ij} = 1$. In discrete constructivism, token dynamics are governed by non-negative integer **Magic Maxels** where every row and every column sums to an exact discrete mass budget $\Sigma$.

---

## 🏛️ 1. Theoretical Foundations

### A. The Magic Condition
An $n \times n$ natural-number matrix $M = (M_{ij})_{i,j=1}^n \in \mathcal{M}_{n \times n}(\mathbb{N})$ is a **Magic Maxel** of order $n$ and line sum $\Sigma \in \mathbb{N}$ if and only if:
1. **Row Budget**: $\sum_{j=1}^n M_{ij} = \Sigma$ for every row $i \in \{1, \dots, n\}$.
2. **Column Budget**: $\sum_{i=1}^n M_{ij} = \Sigma$ for every column $j \in \{1, \dots, n\}$.

```
                               MAGIC MAXEL MATRIX (3x3)
                        ┌─────────────────────────────────────┐
                        │     8       1       6   │ -> Σ = 15 │
                        │     3       5       7   │ -> Σ = 15 │
                        │     4       9       2   │ -> Σ = 15 │
                        └─────────────────────────────────────┘
                          ▼       ▼       ▼
                       Σ = 15  Σ = 15  Σ = 15
```

---

### B. Doubly Stochastic Token Flow & Birkhoff Decomposition
When a Magic Maxel $M$ acts on an input token state $\mathbf{v} \in \mathbb{N}^n$:
$$\mathbf{v}'_i = \sum_{j=1}^n M_{ij} v_j$$
The total output mass satisfies:
$$\sum_{i=1}^n \mathbf{v}'_i = \sum_{i=1}^n \sum_{j=1}^n M_{ij} v_j = \sum_{j=1}^n v_j \left( \sum_{i=1}^n M_{ij} \right) = \Sigma \sum_{j=1}^n v_j$$

For normalized permutation transformations ($\Sigma = 1$), the total token mass is **strictly conserved**:
$$\sum_{i=1}^n \mathbf{v}'_i = \sum_{j=1}^n v_j$$

By the discrete Birkhoff theorem, every natural Magic Maxel decomposes into a non-negative integer combination of elementary permutation matrices without fractional rounding or dissipation.

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Foundations.Magic_Maxels_and_Doubly_Stochastic_Redistribution
import Language.Reflection

import Core.BoxInt
import Core.VexelMaxel
import Reflect.InvariantAuditor
import Reflect.Auditor.Core

%default total

||| Evidence 1: 3x3 Magic Maxel Line Sum & Mass Conservation (Lo Shu Square, Sigma=15)
public export
evidence_magic_maxel_3x3 : Bool
evidence_magic_maxel_3x3 = Core.VexelMaxel.auditMagicMaxel3x3Proof

||| Evidence 2: Identity Permutation Magic Maxel Exact Preservation (Sigma=1)
public export
evidence_magic_identity : Bool
evidence_magic_identity = Core.VexelMaxel.auditMagicMaxelIdentityProof

||| Compile-time Reflection Witness 115 (Elaborator Macro)
public export
witness_magic_maxel_conservation : Reflect.Auditor.Core.auditMagicMaxelConservationProofExport = True
witness_magic_maxel_conservation = auditMagicMaxelConservation
```

---

## 🌌 3. Cosmological Role in `Universe2`

1. **Matter Thermalization during Lattice Expansion (`Evolution.Expansion`)**:
   - As spatial dimensions expand from $3^3$ to $(3+k)^3$, token redistributions are constrained to Magic Maxels, guaranteeing zero token creation or destruction.
2. **Lossless $\epsilon$-Packet Routing (`Compound.LinearEpsilonRouting`)**:
   - Multi-channel quantum state transfers preserve exact gauge flux across sectors through doubly stochastic routing matrices.
