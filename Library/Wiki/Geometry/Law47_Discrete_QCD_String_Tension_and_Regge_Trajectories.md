# Law 47: Discrete QCD String Tension & Regge Trajectories

In quantum chromodynamics (QCD), color flux tubes between bound quarks create a linear confinement potential $V(r) = \sigma r$, producing linear Regge trajectories relating hadron spin $J$ to the square of its mass $M^2$:

$$J = \alpha_0 + \alpha' M^2$$

In **Idris2-Universe2**, this linear behavior is derived strictly from 1D Maxel flux paths and discrete quadrance metrics in [`Math.DiscreteQCDStringTension`](file:///var/home/justin/Projects/Idris2-Universe2/src/Math/DiscreteQCDStringTension.idr).

---

## 1. Confinement Potential & Regge Quadrance

1. **Linear Potential**: $V(r) = \sigma \cdot r$ over discrete spatial cell steps $r \in \mathbb{N}$.
2. **Regge Linearity**: Hadronic spin $J$ scales quadratically with mass $M$ (linearly with quadrance $Q = M^2$):
   $$\frac{J_1}{M_1^2} = \frac{J_2}{M_2^2} = \alpha'$$

---

## 2. Formal Invariant Audit

- **Witness 160**: `auditQCDStringTension` in [`Reflect.Auditor.Math`](file:///var/home/justin/Projects/Idris2-Universe2/src/Reflect/Auditor/Math.idr#L1187-L1196) asserts exact linear potential scaling and Regge spin-quadrance proportionality.
