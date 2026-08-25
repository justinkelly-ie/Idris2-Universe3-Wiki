# 🌌 Law 26: Discrete Casimir-Polder & London Dispersion Force Quantization

This chapter formalizes **Physical Law 26**, governing vacuum-induced intermolecular dispersion forces and the relativistic retarded transition across discrete lattice separations.

```idris
module Geometry.Law26_Discrete_Casimir_Polder_Dispersion_Forces
import Language.Reflection

import Core.BoxInt
import Core.Multiset
import Core.VexelMaxel
import Core.UnixelFraction
import Math.FourGeometries
import Math.DiscreteCasimirEffect
import Math.DiscreteCasimirPolder
import Reflect.InvariantAuditor

%default total
```

---

## 🏛️ 1. Theoretical Foundations

Intermolecular dispersion forces arise from coupled electromagnetic vacuum fluctuations between neutral matter aggregates:
- **Non-Retarded London Dispersion (London 1930)**: At short separations $r \ll \lambda_{\text{trans}}$, $V(r) \sim -C_6 / r^6 = -C_6 / Q^3$.
- **Retarded Casimir-Polder Potential (Casimir & Polder 1948)**: At long separations $r \gg \lambda_{\text{trans}}$, relativistic retardation softens the potential to $V(r) \sim -C_7 / r^7 \to -C_7 / Q^4$.

In **constructive finite spacetime**:
1. **Rational Quadrance Coordinates**: Spacetime separations are evaluated as exact integer quadrances $Q = \Delta x^2 + \Delta y^2 + \Delta z^2$.
2. **Exact Rational Fractions**: Both $V_{\text{London}}(Q)$ and $V_{\text{CP}}(Q)$ are computed as exact `SingFraction` / `UnixelFraction` quantities.
3. **Strict Universal Attraction**: Potentials satisfy $V < 0$, providing the physical mechanism for non-covalent aggregation, van der Waals condensation, and macromolecular folding.

---

## 📜 2. Formal Invariants & Verification

```idris
public export
proofOfDiscreteCasimirPolder : Bool
proofOfDiscreteCasimirPolder =
  auditDiscreteCasimirPolderProof
```

### Verified Physical Invariants:
1. **London Dispersion Regime**: $C_6 = 8, Q = 2 \implies V_{\text{London}} = \text{UnixelFraction}(-8, 8) = -1$.
2. **Retarded Casimir-Polder Regime**: $C_7 = 81, Q = 3 \implies V_{\text{CP}} = \text{UnixelFraction}(-81, 81) = -1$.
3. **Universal Attractive Sign**: $V_{\text{London}} < 0 \land V_{\text{CP}} < 0$.
