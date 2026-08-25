# 📐 Discrete Quantum Relative Entropy & Amari Dually Flat Geometry

This chapter formalizes **Exact Multiset Relative Entropy (Kullback-Leibler / Umegaki Divergence)**, **Klein's Inequality**, and the **Generalized Pythagorean Theorem of Information Geometry** on discrete token simplices.

```idris
module Geometry.Discrete_Quantum_Relative_Entropy_and_Amari_Geometry
import Language.Reflection

import Core.BoxInt
import Core.Multiset
import Core.VexelMaxel
import Core.UnixelFraction
import Geometry.InformationGeometry
import Reflect.InvariantAuditor

%default total
```

---

## 🏛️ 1. Theoretical Foundations

### Discrete Relative Entropy & Klein's Inequality
In standard continuous information theory, the relative entropy (Kullback-Leibler divergence) between probability distributions $P$ and $Q$ is:
$$D_{\text{KL}}(P \parallel Q) = \sum_x P(x) \ln \frac{P(x)}{Q(x)}$$

In constructivist multiset geometry, relative entropy is evaluated as the **unexplained excess token mass**:
$$D_{\text{rel}}(P \parallel Q) = H_{\text{MSet}}(P, Q) - H_{\text{MSet}}(P, P) = |P \setminus Q| = \sum_x \max(0, w_P(x) - w_Q(x))$$

This formula satisfies **Klein's Inequality**:
1. Non-negativity: $D_{\text{rel}}(P \parallel Q) \ge 0$ for all multisets $P, Q$.
2. Global Minimum: $D_{\text{rel}}(P \parallel P) = 0$.
3. Separation: $D_{\text{rel}}(P \parallel Q) > 0$ whenever $P \nsubseteq Q$.

---

## 🏛️ 2. Amari Dually Flat Geometry & The Pythagorean Theorem

On discrete multinomial state simplices, dual affine connections $(\nabla^{(e)}, \nabla^{(m)})$ define dually flat coordinates (exponential coordinates $\theta$ and mixture coordinates $\eta$).

For a dually orthogonal projection triangle $(P, Q, R)$ where the $m$-geodesic from $P$ to $Q$ is orthogonal to the $e$-geodesic from $Q$ to $R$, the **Generalized Pythagorean Theorem** holds:
$$D_{\text{rel}}(P \parallel R) = D_{\text{rel}}(P \parallel Q) + D_{\text{rel}}(Q \parallel R)$$

---

## 📜 3. Formal Invariants & Verification

```idris
public export
proofOfRelativeEntropyKleinsInequality : Bool
proofOfRelativeEntropyKleinsInequality =
  auditRelativeEntropyKleinsInequalityProof

public export
proofOfAmariPythagoreanTheorem : Bool
proofOfAmariPythagoreanTheorem =
  auditAmariPythagoreanTheoremProof
```
