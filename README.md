# 📚 Idris2-Universe2-Wiki

**Literate Documentation, Formal Specifications, and Property Verification Suite for [Idris2-Universe2](https://github.com/justinkelly-ie/Idris2-Universe2).**

[![Idris2](https://img.shields.io/badge/Idris2-Verified_Wiki-blue.svg)](https://github.com/idris-lang/Idris2)
[![Macro Audits](https://img.shields.io/badge/Elaborator_Macros-162_Verified-brightgreen.svg)]()
[![Tests](https://img.shields.io/badge/Runtime_Tests-135_Passed-success.svg)]()
[![Literate Chapters](https://img.shields.io/badge/Literate_Chapters-133_Compiled-purple.svg)]()

---

## 📖 Introduction

`Idris2-Universe2-Wiki` is the executable literate knowledge base for `Idris2-Universe2`. The codebase formalizes physical and geometric laws in constructive discrete mathematics using Idris 2's Quantitative Type Theory (QTT) and Elaborator Reflection macros (`%macro`).

All physical invariants, conservation theorems, and geometric classifications are verified at compile time without floating-point approximations or continuous infinities.

### 🗺️ Quick Reference & Catalogs
* **[The Edwin Brady Protocol Channel & 137 Clock Tick Isomorphism](Library/Wiki/Foundations/Polynumber_Protocol_Channel_Isomorphism.md)** — Tripartite isomorphism mapping Polynumber Generating Functions, 137-stage natural clock ticks, and Edwin Brady linear QTT protocol channels.
* **[Pure Algebraic Galois Connection ($f_* \dashv f^*$)](Library/Wiki/Foundations/Expansion_Contraction_Galois_Connection.md)** — Pure algebraic duality between contraction ($f_*$) and expansion ($f^*$) over multiset lattices with unit ($\eta$) and counit ($\epsilon$) bounds.
* **[The Cosmological Observation Triad](Library/Wiki/Observation/The_Cosmological_Observation_Triad.md)** — 3-way synthesis of Multiset Carriers ($\mathcal{M}$), Algebraic Equational Laws ($\mathcal{A}$), and Empirical Scientific Measurements ($\mathcal{S}$).
* **[The Dual Observation Architecture](Library/Wiki/Observation/Scientific_and_Algebraic_Observation_Dual_Architecture.md)** — Rigorous separation and bridge between exact internal algebraic theorems and external empirical scientific measurements.
* **[Empirical Scientific Dataset Registry](Library/Wiki/Observation/Empirical_Scientific_Dataset_Registry.md)** — Verified physical observations (CODATA $\alpha$, Mercury precession, Chandrasekhar limit, flux quantization) within constructivist rational bounds.
* **[A Plain-Language Guide to the Multiset-Algebra Synthesis](Library/Wiki/Foundations/High_Level_Review_of_Multiset_Algebra_Synthesis.md)** — Accessible review of our core breakthrough: synthesizing universal multiset conservation with compile-time type safety for non-computer scientists.
* **[Universal Algebra & The Multiset Interpretation](Library/Wiki/Foundations/Universal_Algebra_and_Multiset_Interpretation.md)** — Pure algebraic alternative to category theory: multi-sorted term rewriting, semantic multiset valuation, and Dershowitz-Manna termination.
* **[Hierarchical Matter Emergence & Universal Pipeline](Library/Wiki/Evolution/Hierarchical_Matter_Emergence_and_Universal_Pipeline.md)** — Formal proof of the unbroken 7-phase scale emergence chain from Quarks ($9$) to DNA via a scale-invariant conservation engine.
* **[The Universal Rosetta Stone](Library/Wiki/Foundations/Universal_Rosetta_Stone.md)** — Comparative mapping across Finite Mathematics, Cosmological Physics, and Idris 2 QTT.
* **[The Algebraic Family Tree of Physical Laws](Library/Wiki/Foundations/Algebraic_Family_Tree_of_Physical_Laws.md)** — Visual parent/sibling/child dependency graph and Algebra-Driven Design (ADD) observation architecture for Laws 1–44.
* **[The Emergent Physical Laws & Academic Bibliography](Library/Wiki/Verification/Physical_Laws_Bibliography_and_Sources.md)** — Verified citations, DOIs, and primary literature for all emergent physical laws (Laws 1–44) and foundational design texts.
* **[Type Signatures & API Catalog](Library/Wiki/Verification/Type_Signatures_and_API_Catalog.md)** — Dynamically generated, authoritative index of all records, data types, and primary state transitions.

---

## 🧭 Documentation Sections

The documentation is organized into 5 thematic sections:

### [1. Foundational Mathematics & Discrete Calculus](Library/Wiki/Foundations/Index.md)
Axiomatic box arithmetic, signed integers as difference pairs (Pixels), nilpotent dual numbers, multiset algebras, [Type-Indexed Multiset Synthesis](Library/Wiki/Foundations/Type_Indexed_Multiset_Synthesis.md), and quantum measurement foundations.

### [2. Spacetime & Geometry](Library/Wiki/Geometry/Index.md)
The 4 fundamental geometries, the emergent physical laws (Laws 1–44), Grassmann cochain exterior calculus, Yang-Mills gauge theories, macromolecular bonding, and non-equilibrium thermodynamics.

### [3. Evolutionary Dynamics & Law Encoding](Library/Wiki/Evolution/Index.md)
Pre-geometric genesis, dark matter law accumulation, cyclotomic polynomial division, linear QTT state pipelines, cyclic cosmological expansion, and [Hierarchical Matter Emergence](Library/Wiki/Evolution/Hierarchical_Matter_Emergence_and_Universal_Pipeline.md).

### [4. Kinematics & Astrodynamics](Library/Wiki/Kinematics/Index.md)
Symplectic leapfrog integrators, discrete Noether momentum invariants, toroidal N-body dynamics, rational Kepler orbital mechanics, and asymptotic galactic rotation curves.

### [5. Metatheory & Verification](Library/Wiki/Verification/Index.md)
Formal metatheoretical proofs, the constructivist verification suite, cosmological inference audits, and physical laws bibliography.

---

## 🛠️ Building & Verifying

To build the entire documentation suite and execute all 130 runtime property tests and 155 compile-time elaborator reflection audits:

```bash
# Build documentation executable with pack
pack build Idris2-Universe2-Wiki.ipkg

# Run verification suite
./build/exec/universe2-verify

# Regenerate dynamic Type Signatures & API Catalog
python3 Scripts/generate_type_catalog.py
```
