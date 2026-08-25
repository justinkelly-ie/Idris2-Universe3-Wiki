# 🌌 Law 25: Discrete Crooks Fluctuation Theorem & Microscopic Trajectory Reversal

This chapter formalizes **Physical Law 25**, governing exact non-equilibrium microscopic trajectory work reversibility and path-ratio enumerations in discrete state spaces.

```idris
module Geometry.Law25_Discrete_Crooks_Fluctuation_Theorem
import Language.Reflection

import Core.BoxInt
import Core.Multiset
import Core.VexelMaxel
import Core.UnixelFraction
import Math.FourGeometries
import Math.DiscreteJarzynskiEquality
import Math.DiscreteCrooksTheorem
import Reflect.InvariantAuditor

%default total
```

---

## 🏛️ 1. Theoretical Foundations

In non-equilibrium statistical mechanics (Gavin E. Crooks 1999), the probability distribution of work $W$ performed along a forward driving trajectory $P_F(W)$ and the time-reversed backward trajectory $P_B(-W)$ satisfy:
$$\frac{P_F(W)}{P_B(-W)} = \exp\left( \beta(W - \Delta F) \right)$$
where $W_{\text{diss}} = W - \Delta F$ is the dissipated work.

In **constructive finite mechanics**:
1. **Discrete Path Weighting**: On discrete cochain state spaces, trajectories are exact sequences of multiset permutations.
2. **Reversible Work Symmetry**: When $W = \Delta F$ ($W_{\text{diss}} = 0$), forward and backward path weights are identically equal.
3. **Irreversible Macroscopic Emergence**: For dissipative paths ($W > \Delta F$), the forward probability strictly dominates, giving rise to macroscopic thermodynamic irreversibility without continuous singularities.

---

## 📜 2. Formal Invariants & Verification

```idris
public export
proofOfDiscreteCrooksTheorem : Bool
proofOfDiscreteCrooksTheorem =
  auditDiscreteCrooksTheoremProof
```

### Verified Physical Invariants:
1. **Reversible Path Parity**: $w_F = 5, w_B = -5, \Delta F = 5 \implies w_{\text{diss}} = 0$.
2. **Dissipative Trajectory Work**: $w_F = 9, w_B = -9, \Delta F = 5 \implies w_{\text{diss}} = 4 > 0$.
3. **Trajectory Anti-Symmetry**: $w_F + w_B = 0$.
