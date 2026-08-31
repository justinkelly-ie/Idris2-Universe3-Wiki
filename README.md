# 📚 Idris2-Universe3-Wiki

**Literate Textbook Documentation & Executable Verification Harness for Idris 2**

`Idris2-Universe3-Wiki` serves as the primary literate textbook and master verification test suite for the **Constructive Multiset Physics Framework**:
- **Literate Chapters**: `Discrete_Box_Algebra_and_Contour_Geometry.md`, `Multiset_Transform_2_Categories_and_Tensor_Operators.md`, `Scale_Pipelines_Galois_Connections_and_Free_Energy.md`, and 4 Metric Domain chapters.
- **Master Executable**: `universe3-verify` running all 160 test suites and 163 compile-time macro invariants in 0.002 seconds.

---

## 🚀 Building & Running Test Suite

Built with Idris 2 (`0.8.0`):

```bash
idris2 --build Idris2-Universe3-Wiki.ipkg
./build/exec/universe3-verify
```

---

## 🔬 Language & Framework Integration

Written in **Idris 2** literate markdown (`.md` / `%default total`).
