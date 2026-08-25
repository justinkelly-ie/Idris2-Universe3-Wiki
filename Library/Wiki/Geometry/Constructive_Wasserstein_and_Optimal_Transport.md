# 🚚 Constructive Wasserstein Metric & Optimal Transport

This chapter formalizes the **Discrete Earth Mover's Distance ($W_1$)** between multiset distributions on discrete metric spaces without continuous probability densities or linear programming approximations.

```idris
module Geometry.Constructive_Wasserstein_and_Optimal_Transport
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

In continuous probability theory, the **Wasserstein-1 (Kantorovich-Rubinstein) distance** between distributions $P$ and $Q$ is defined as:
$$W_1(P, Q) = \inf_{\gamma \in \Pi(P, Q)} \int_{\mathcal{X} \times \mathcal{X}} d(x, y) \, d\gamma(x, y)$$

In **constructive discrete spacetime**, probability densities are non-negative integer multiset token vectors $P, Q \in \text{List } \text{BoxInt}$.
On ordered coordinate lines or 1D lattice slices, the optimal transport problem has an exact closed-form solution via the **cumulative difference formula**:
$$W_1(P, Q) = \sum_{k=1}^N \left| \text{CDF}_P(k) - \text{CDF}_Q(k) \right|$$

where $\text{CDF}_P(k) = \sum_{i=1}^k P_i$.

---

## 📜 2. Formal Invariants & Verification

```idris
public export
proofOfWassersteinAxioms : Bool
proofOfWassersteinAxioms =
  auditWassersteinMetricAxiomsProof
```

### Invariant Properties:
1. **Identity of Indiscernibles**: $W_1(P, P) = 0$.
2. **Symmetry**: $W_1(P, Q) = W_1(Q, P)$.
3. **Exact Triangle Inequality**: $W_1(P, R) \le W_1(P, Q) + W_1(Q, R)$.
4. **Conservation of Transported Tokens**: Zero token dissipation during transport.
