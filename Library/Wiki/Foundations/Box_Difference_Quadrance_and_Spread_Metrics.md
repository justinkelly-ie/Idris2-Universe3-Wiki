# 📐 Box Difference Quadrance & Rational Spread Metrics

In Chapters 18–20 of *Box Arithmetic I*, Norman Wildberger extends Rational Trigonometry to containers, multisets, and boxes. In standard geometry, metric calculations rely on irrational square roots ($\sqrt{x^2 + y^2}$) and transcendental trigonometric functions ($\sin \theta, \cos \theta$). In discrete constructivism, distances and angles between containers are formulated entirely through **Quadrance** $Q \in \mathbb{N}$ and **Rational Spread** $s \in \text{UnixelFraction}$.

---

## 🏛️ 1. Theoretical Foundations

### A. Box Difference Quadrance
Given two multiset containers $A, B$, the **difference mass** is the size of their symmetric difference:
$$\text{diffMass}(A, B) = \sum_x |w_A(x) - w_B(x)|$$

The **Box Difference Quadrance** $Q(A, B)$ is defined as the exact squared difference mass:
$$Q(A, B) = (\text{diffMass}(A, B))^2$$

For coordinate containers (Vexels $v_1, v_2$):
$$Q_{\text{Vexel}}(v_1, v_2) = \sum_{i} (c_1(i) - c_2(i))^2$$

```
                         CONTAINER QUADRANCE & SPREAD
                                      C (Box 3)
                                     / \
                                    /   \
                             Q2    /     \   Q1
                                  /       \
                                 /    s    \
                                A-----------B
                               (Box 1)  Q3  (Box 2, Vertex)
```

---

### B. Rational Spread Between Containers
For three container states $A, B, C$ meeting at vertex $B$ with side quadrances $Q_1 = Q(B, C)$, $Q_2 = Q(B, A)$, and $Q_3 = Q(A, C)$:
1. **Archimedes' Quadrea Function**:
   $$\mathcal{A}(Q_1, Q_2, Q_3) = 4 Q_1 Q_2 - (Q_1 + Q_2 - Q_3)^2$$
2. **Container Spread (Spread Law)**:
   $$s(A, B, C) = \frac{\mathcal{A}(Q_1, Q_2, Q_3)}{4 Q_1 Q_2} \in \text{UnixelFraction}$$

3. **Container Pythagorean Theorem ($s = 1$)**:
   Displacements $B \to A$ and $B \to C$ are orthogonal (right-angled) if and only if $Q_3 = Q_1 + Q_2 \iff s = 1/1$.
4. **Container Collinearity Theorem ($s = 0$)**:
   States lie along a single linear ray if and only if $\mathcal{A}(Q_1, Q_2, Q_3) = 0 \iff s = 0/1$.

---

## 💻 2. Executable Literate Proofs & Evidence

```idris
module Foundations.Box_Difference_Quadrance_and_Spread_Metrics
import Language.Reflection

import Core.BoxInt
import Core.VexelMaxel
import Core.Multiset
import Core.UnixelFraction
import Math.RationalTrig
import Reflect.InvariantAuditor
import Reflect.Auditor.Math

%default total

||| Evidence 1: Container Pythagorean Theorem (Right-Angle Spread s = 1/1)
public export
evidence_box_pythagoras : Bool
evidence_box_pythagoras = Math.RationalTrig.auditBoxPythagorasProof

||| Evidence 2: Container Collinearity Spread (s = 0/1)
public export
evidence_box_collinearity : Bool
evidence_box_collinearity = Math.RationalTrig.auditBoxCollinearitySpreadProof

||| Compile-time Reflection Witness 116 (Elaborator Macro)
public export
witness_box_quadrance_spread : Reflect.Auditor.Math.auditBoxQuadranceAndSpreadProofExport = True
witness_box_quadrance_spread = Refl
```

---

## 🌌 3. Cosmological Role in `Universe2`

1. **Exact Information Geometry (`Geometry.InformationGeometry`)**:
   - Replaces continuous Euclidean / Fisher metrics with exact rational quadrance $Q_{\text{Info}}(P, Q) = (\mathcal{D}_{\text{MSet}}(P, Q))^2$.
2. **Projective Spacetime Angular Classification (`Derivation.PureGeometricClassifier`)**:
   - Classifies metric eigenvector angles and gauge orientations into Orthogonal ($s = 1$), Collinear ($s = 0$), and Rational Angles without transcendental functions.
