# 🌌 The Quark-to-Hadron Pure Multiset Functor & Balance Arrays

This chapter formalizes the **Quark-to-Hadron Multiset Functor**, showing how color-charge quark Vexels combine into 27-token Hadron Boxels using **pure multiset arithmetic** and subtraction-free `BalanceArray` identities.

```idris
module Geometry.Quark_to_Hadron_Algebraic_Functor
import Language.Reflection

import Core.BoxInt
import Core.Multiset
import Core.VexelMaxel
import Core.UnixelFraction
import Math.FourGeometries
import Math.PauliExclusion
import Compound.HadronicConfinement
import Compound.QuarkHadronAlgebra
import Reflect.InvariantAuditor

%default total
```

---

## 💡 1. The Pure Multiset Architecture

In our constructivist universe, there are no artificial data types separating particles from space. All physical states are **multisets of discrete tokens** (`Vexel`, `Maxel`, `Boxel`, `BalanceArray`):

1. **Quarks as Color Vexels**:
   - Each color quark is a 1D Vexel carrying 9 mass tokens along its color sector:
     $$q_R = \text{MkVexel } [(1, 9)], \quad q_G = \text{MkVexel } [(2, 9)], \quad q_B = \text{MkVexel } [(3, 9)]$$
2. **Hadronization as Multiset Addition $\uplus$**:
   - The 3 color vexels fuse via the `BalanceArray 4` identity:
     $$q_R \uplus q_G \uplus q_B \equiv B_{\text{singlet}} \quad (27 \text{ mass tokens})$$
3. **Maguire ADD Multiset Observations**:
   - **Mass Token Invariant**: $\text{observeHadronMassTokens}(B) \equiv 27$.
   - **Color Neutrality**: $\text{sliceZ}(0, B) \equiv \text{sliceZ}(1, B) \equiv \text{sliceZ}(2, B)$.
   - **Baryon Number Homomorphism**: $B \equiv \frac{\text{totalTokens}}{27} = \frac{27}{27} = 1$.

---

## 📜 2. Formal Invariants & Verification

```idris
public export
proofOfQuarkHadronAlgebra : Bool
proofOfQuarkHadronAlgebra =
  auditQuarkHadronAlgebraProof
```

### Verified Multiset Invariants:
1. **Total Hadronic Mass**: Exactly $27$ mass tokens.
2. **Color Neutrality**: Identical $9$-token weight across all 3 color Maxel slices.
3. **Baryon Rational Invariant**: $27 / 27 \equiv 1$ on exact `UnixelFraction`.
4. **Subtraction-Free Balance**: `hadronSingletBalanceArray` is strictly balanced and disjoint.
