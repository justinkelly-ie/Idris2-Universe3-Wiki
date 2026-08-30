# Macromolecular Assemblies & Iron-56 Heavy Nucleus

This page documents higher-order composite assemblies in [`Compound.MacromolecularAssembly`](file:///var/home/justin/Projects/Idris2-Universe2/src/Compound/MacromolecularAssembly.idr), spanning the peak nuclear binding energy core ($^{56}\text{Fe}$) and biological polymer networks.

---

## 1. Scale Token Budgets

| Assembly | Structure | Multiset Representation | Mass Token Budget | Invariant Proof |
| :--- | :--- | :--- | :--- | :--- |
| **Iron-56 Nucleus ($^{56}\text{Fe}$)** | 56 Nucleons ($26p + 30n$) | 3D `Boxel` Lattices | $1512$ tokens ($56 \times 27$) | Peak binding energy balance |
| **RNA Double Helix** | $n$ GC & AU base pairs | Maxel Hydrogen Bond Networks | $(3 \times GC) + (2 \times AU)$ | Watson-Crick pairing ratio |
| **Lipid Membrane** | Bilayer amphiphilic Maxels | 2D Spatial Layers | Variable token count | Non-covalent hydrophobic collapse |

---

## 2. Formal Invariant Audit

- **Witness 150**: `auditMacromolecularAssembly` in [`Reflect.Auditor.Compound`](file:///var/home/justin/Projects/Idris2-Universe2/src/Reflect/Auditor/Compound.idr#L272-L281) asserts exact token conservation ($56 \times 27 = 1512$) and double-helix hydrogen bond capacity.
