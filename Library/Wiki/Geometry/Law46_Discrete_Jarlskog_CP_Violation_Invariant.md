# Law 46: Discrete Jarlskog CP-Violation Invariant

In standard continuous quantum field theory, CP violation in the quark flavor sector is parameterized by the rephasing-invariant Jarlskog determinant:

$$J = \text{Im}(V_{us} V_{cb} V_{ub}^* V_{cs}^*)$$

In **Idris2-Universe2**, following Norman J. Wildberger's constructivist rational trigonometry, flavor mixing and CP violation are formulated strictly over finite integer multiset fractions (`UnixelFraction`) in [`Math.DiscreteJarlskogInvariant`](file:///var/home/justin/Projects/Idris2-Universe2/src/Math/DiscreteJarlskogInvariant.idr).

---

## 1. Exact Multiset Fraction Formulation

$$\text{jarlskogInvariantFraction} = \frac{30}{1\,000\,000} \quad (J_{\text{CP}} \approx 3.0 \times 10^{-5})$$

Because all calculation steps preserve exact numerators and non-zero `Unixel` denominators, discrete $CP$ violation is proven non-zero at compile-time:

$$\text{isCPViolating}(J) \iff \text{num}(J) > 0$$

---

## 2. Formal Invariant Audit

- **Witness 159**: `auditJarlskogCPViolation` in [`Reflect.Auditor.Math`](file:///var/home/justin/Projects/Idris2-Universe2/src/Reflect/Auditor/Math.idr#L1176-L1185) asserts that $J > 0$ with zero floating-point approximation drift.
