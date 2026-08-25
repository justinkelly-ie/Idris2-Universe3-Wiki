# 🧬 Tier 6 Macromolecules & Chiral Stereochemistry

In Tier 5 ([`Molecular_Bonding.md`](Molecular_Bonding.md)), chemical structures emerged from covalent Maxel contractions, producing small stable compounds such as Water ($\text{H}_2\text{O}$), Methane ($\text{CH}_4$), and the Alkane saturation series ($C_n H_{2n+2}$).

In **Tier 6**, chemistry scales to **Biological Macromolecules**, **Discrete 3D Stereochemical Chirality**, and **Peptide Condensation Graph Contraction**, grounded in the **Substrate Causal Arrow** ($g_{22} = 0, g_{12} = 1$).

---

## 🏛️ 1. Theoretical Framework

```
                 TIER 6 CHEMICAL EMERGENCE HIERARCHY
  ┌────────────────────────────────────────────────────────────────────────┐
  │ 1. Chiral Alpha-Carbon (C_alpha) & Discrete 3D Determinant Signs       │
  │    det([v1 - c, v2 - c, v3 - c]) in {-1 (L-Chiral), +1 (D-Chiral)}     │
  │                                │                                       │
  │                                ▼                                       │
  │ 2. Peptide Condensation Graph Contraction                              │
  │    AA1 + AA2 ──> Dipeptide + H2O (Planar Peptide Linkage -CO-NH-)      │
  │                                │                                       │
  │                                ▼                                       │
  │ 3. Biological Homochirality Grounded in Substrate Causal Metric        │
  │    g_Sub (g22 = 0, g12 = 1) ──> Zero Cross-Entropy Selection (L-Amino) │
  └────────────────────────────────────────────────────────────────────────┘
```

### A. Discrete 3D Stereocenter Chirality ($\chi \in \{+1, -1\}$)
A chiral carbon $\text{C}_\alpha$ surrounded by 4 non-equivalent substituents $(\vec{s}_1, \vec{s}_2, \vec{s}_3, \vec{s}_4)$ on the discrete grid $\mathbb{Z}_3^3$ has its orientation determined by the discrete $3\times 3$ determinant:
$$\chi = \operatorname{sgn}\left( \det \begin{bmatrix} \vec{s}_1 - \vec{s}_4 \\ \vec{s}_2 - \vec{s}_4 \\ \vec{s}_3 - \vec{s}_4 \end{bmatrix} \right)$$
* $\chi = -1 \implies$ **L-Enantiomer (Left-Handed)**
* $\chi = +1 \implies$ **D-Enantiomer (Right-Handed)**
* $\chi = 0 \implies$ **Achiral** (e.g., Glycine, where two substituents are Hydrogen)

Under spatial parity reflection $\vec{v} \mapsto -\vec{v}$, the determinant inverts sign, proving exact discrete enantiomer duality.

### B. Peptide Condensation & Primary Backbone Graph Contraction
When two amino acids condense:
$$\text{Amino Acid}_1 + \text{Amino Acid}_2 \longrightarrow \text{Dipeptide} + \text{H}_2\text{O}$$
The amine group ($-\text{NH}_2$) and carboxyl group ($-\text{COOH}$) eliminate $\text{H}_2\text{O}$ and contract into the rigid, planar **peptide bond** $(-\text{C}(=\text{O})-\text{NH}-)$.
For an $N$-residue polyalanine chain, the stoichiometric formula is:
$$\text{Polyalanine}(N) = \text{C}_{3N} \text{H}_{5N+2} \text{N}_N \text{O}_{N+1}$$

### C. Biological Homochirality & Zero Cross-Entropy
In continuous symmetric mechanics, L- and D-enantiomers are energetically degenerate, predicting a high-entropy racemic mixture ($H = \ln 2$).
In **Idris2-Universe2**, the **Substrate Causal Arrow** ($g_{22} = 0, g_{12} = 1$) breaks time-reversal symmetry, creating a unidirectional evolutionary bias that selects **L-amino acids exclusively**, collapsing the stereochemical cross-entropy deficit to **identically zero ($\Delta H = 0$)**.

---

## 💻 2. Executable Literate Code & Verification

```idris
module Geometry.Tier6_Macromolecules_and_Chiral_Stereochemistry
import Language.Reflection

import Core.BoxInt
import Core.VexelMaxel
import Compound.MolecularBonding
import Compound.MacromolecularChirality

%default total

||| Verifies that Peptide Condensation strictly conserves atomic mass across dipeptide synthesis.
public export
verifyPeptideCondensationConservation : Bool
verifyPeptideCondensationConservation =
  auditPeptideCondensationConservationProof

||| Verifies that discrete 3D spatial parity reflection inverts chiral stereocenter handedness.
public export
verifyChiralEnantiomerInversion : Bool
verifyChiralEnantiomerInversion =
  auditChiralEnantiomerInversionProof

||| Verifies that L-amino acids form a valid homochiral, substrate-aligned dipeptide chain.
public export
verifyHomochiralPeptideChain : Bool
verifyHomochiralPeptideChain =
  auditHomochiralPeptideChainProof
```
