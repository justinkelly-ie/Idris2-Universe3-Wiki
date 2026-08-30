# 📐 Archimedes' Function, Quadrea & Gram Determinants

In Rational Trigonometry and Universal Geometry, Norman J. Wildberger's **Archimedes' Function** replaces the Pythagorean theorem, continuous trigonometry, and square roots with exact polynomial invariants.

---

## 🏛️ 1. Theoretical Formulation

Given three side quadrances $Q_1, Q_2, Q_3$ (squared metric intervals), Archimedes' function is:

$$A(Q_1, Q_2, Q_3) \equiv (Q_1 + Q_2 + Q_3)^2 - 2(Q_1^2 + Q_2^2 + Q_3^2) = 4Q_1Q_2 - (Q_1 + Q_2 - Q_3)^2$$

### Key Physical Roles:
1. **Collinearity ($A = 0$)**: Three points/maxels lie on a geodesic line if and only if $A(Q_1, Q_2, Q_3) = 0$.
2. **Quadrea $\mathcal{A}$**: For any triangle, $\mathcal{A} = A(Q_1, Q_2, Q_3) = 16 \times (\text{Area})^2$, measuring exact discrete 2D flux.
3. **Emergence from $2 \times 2$ Maxels**:
   $$A(Q_1, Q_2, Q_3) = 4 \det(g) \cdot (x_1 y_2 - x_2 y_1)^2$$

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Geometry.Archimedes_Function_and_Quadrea

import Core.BoxInt
import Math.LinAlgebra.MetricTensor
import Math.RationalTrig

%default total

||| Evidence 1: Proof that Archimedes function for a 3-4-5 right triangle (Q = 9, 16, 25) gives Quadrea 576 (16 * 6^2)
public export
evidence_pythagorean_quadrea : unwrapBox (quadrea (intToBoxInt 9) (intToBoxInt 16) (intToBoxInt 25)) = 576
evidence_pythagorean_quadrea = Refl

public export
evidence_pythagorean_quadrea_bool : Bool
evidence_pythagorean_quadrea_bool = unwrapBox (quadrea (intToBoxInt 9) (intToBoxInt 16) (intToBoxInt 25)) == 576

||| Evidence 2: Proof that collinear points with quadrances Q1=1, Q2=1, Q3=4 have A = 0
public export
evidence_collinear_zero : isCollinearQuadrance (intToBoxInt 1) (intToBoxInt 1) (intToBoxInt 4) = True
evidence_collinear_zero = Refl

||| Evidence 3: Proof of emergence from 2x2 maxels under Euclidean metric gBlue
public export
evidence_maxel_gram_determinant : 
  unwrapBox (archimedesFromMaxels Math.LinAlgebra.MetricTensor.gBlue (intToBoxInt 1) (intToBoxInt 0) (intToBoxInt 0) (intToBoxInt 1)) = 4
evidence_maxel_gram_determinant = Refl

||| Evidence 4: Proof that Gram Maxel determinant reproduces exact Archimedes Quadrea (576)
public export
evidence_gram_maxel_quadrea : unwrapBox (quadreaMaxel (intToBoxInt 9) (intToBoxInt 16) (intToBoxInt 25)) = 576
evidence_gram_maxel_quadrea = Refl
```

---

## 🔗 Related Chapters & Cross-References

* **Rational Trigonometry & Discrete Calculus**:
  * [Rational Snell's Law & The Triple Spread Law](Rational_Snell_and_Triple_Spread.md) — Rational trigonometric relations, spreads, and cross laws.
  * [Vexels, Maxels, Boxels & Reflected Linear Algebra](../Foundations/Vexels_Maxels_and_Reflected_Linear_Algebra.md) — Gram determinants over Maxel basis structures.
  * [Nested Polynomial Multisets](../Foundations/Nested_Polynomial_Multisets.md) — Spread polynomials $S_n(s)$ and algebraic factorizations.
* **Geometric & Chemical Models**:
  * [Molecular Bonding & Chemical Graph Contraction](Molecular_Bonding.md) — Water molecule Archimedes quadrea ($A = 3$) and covalent Maxel geometry.
  * [Discrete Exterior Calculus & Gauge Theory](Discrete_Exterior_Calculus_and_Gauge.md) — Exact area and face 2-forms on cell complexes.

