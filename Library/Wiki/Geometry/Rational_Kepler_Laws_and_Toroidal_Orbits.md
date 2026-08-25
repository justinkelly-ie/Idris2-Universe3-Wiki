# 🪐 Rational Kepler Laws & Toroidal Celestial Mechanics

In Chapters 16, 21, and 29 of *Box Arithmetic I* and Norman Wildberger's *Rational Trigonometry*, classical geometry and conic sections are freed from transcendental functions ($\pi, \sin, \cos, \sqrt{\cdot}$). Planetary orbits in discrete spacetime are governed by polynomial relations between **Quadrances** ($Q = d^2$), **Rational Spreads** ($s = \sin^2 \theta$), and **Archimedes' Quadrea** ($\mathcal{A} = 16 \times \text{Area}^2$).

---

## 🏛️ 1. Theoretical Foundations

### A. Rational Kepler's 1st Law: Conic Eccentricity as Rational Spread
In continuous astronomy, an ellipse has semi-major axis $a$, focal distance $c$, and eccentricity $e = c/a$.
In rational trigonometry, we replace square roots with exact Quadrances $Q_a = a^2$ and $Q_c = c^2$:
- **Rational Eccentricity Spread**:
  $$s_e = \frac{Q_c}{Q_a} = \left(\frac{c}{a}\right)^2 \in [0, 1)$$
- **Semi-Minor Quadrance**:
  $$Q_b = Q_a (1 - s_e) = Q_a - Q_c$$

For an orbit with $Q_a = 100$ and $Q_c = 19$:
$$s_e = \frac{19}{100} \implies Q_b = 100 - 19 = 81$$

```
                         RATIONAL KEPLER ORBIT ON T³
                 (Semi-Major Q_a = 100, Focal Q_c = 19)
                       
                                 ▲ y
                                 │      * (Apoapsis)
                                 │    /
                                 │   /  Semi-Minor Q_b = 81
                                 │  /
               ──────────────────┼──F──────* (Periapsis) ───► x
               (-a)              │ (0,0)   (c)          (a)
                                 │
                   Eccentricity Spread s_e = Q_c / Q_a = 19/100
```

---

### B. Rational Kepler's 2nd Law: Invariant Swept Quadrea
The areal velocity swept by radius vector $\mathbf{r}(t) = (x(t), y(t))$ relative to the focus $(0, 0)$ is evaluated using the Archimedes Quadrea:
$$\mathcal{A}(\mathbf{r}_1, \mathbf{r}_2) = 4 (x_1 y_2 - x_2 y_1)^2 = 4 L_z^2$$

Because angular momentum $L_z = x_1 y_2 - x_2 y_1$ is strictly conserved under central forces on $T^3$:
$$\Delta \mathcal{A} = 4 L_z^2 = \text{const}$$
For $L_z = 6$, the swept Quadrea per epoch is identically $\mathcal{A} = 4 \times 6^2 = 144$.

---

### C. Rational Kepler's 3rd Law: The Quadrance Harmonic Law
Squaring Kepler's classical third law ($T^2 \propto a^3$) produces the **Quadrance Harmonic Law** over pure integer powers:
$$T^4 = K_{\text{Kepler}} \cdot Q_a^3 \iff \frac{T^4}{Q_a^3} = K_{\text{Kepler}}$$

For an orbit with $Q_a = 4$ and discrete period $T = 8$:
$$K_{\text{Kepler}} = \frac{8^4}{4^3} = \frac{4096}{64} = 64$$
No irrational powers or non-algebraic limits are required.

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Geometry.Rational_Kepler_Laws_and_Toroidal_Orbits
import Language.Reflection

import Core.BoxInt
import Math.ToroidalAstrodynamics
import Reflect.InvariantAuditor
import Reflect.Auditor.Math

%default total

||| Evidence 1: Rational Kepler Laws & Orbital Spread Proof
public export
evidence_rational_kepler_laws : Bool
evidence_rational_kepler_laws = Math.ToroidalAstrodynamics.auditRationalKeplerLawsProof

||| Compile-time Reflection Witness 120 (Elaborator Macro)
public export
witness_rational_kepler_laws : Reflect.Auditor.Math.auditRationalKeplerLawsProofExport = True
witness_rational_kepler_laws = auditRationalKeplerLaws
```

---

## 🌌 3. Cosmological Significance

1. **Exact Astrodynamics on $T^3$**:
   - Planetary and galactic orbits are calculated without floating-point drift or irrational trigonometric evaluations.
2. **Algebraic Unification of Orbital Geometry**:
   - Conic sections, angular momentum conservation, and harmonic resonance emerge directly from polynomial Box Arithmetic.
