# Extended Hadrons, Hyperons, Heavy Mesons, and Exotic Multiquarks

This page documents the formal algebraic implementation of extended hadronic matter species in [`Idris2-Universe2`](file:///var/home/justin/Projects/Idris2-Universe2/src/). Grounded strictly in finite integer multiset arithmetic ($1 \text{ amu} = 27 \text{ mass tokens}$), these formulations span 6-flavor hyperons, heavy quarkonium, multiquark exotic states, and stellar fusion chain nuclei.

---

## 1. Multiset Token Hierarchies

All physical particle species map to canonical integer multiset carriers (`Vexel`, `Maxel`, `Boxel`):

| Particle Category | Species | Multiset Carrier | Mass Token Budget | Electric Charge ($e/3$) |
| :--- | :--- | :--- | :--- | :--- |
| **Elementary Quark** | Up ($u$), Down ($d$), Strange ($s$), Charm ($c$), Bottom ($b$), Top ($t$) | 1D `Vexel` | $9$ tokens | $+2$ or $-1$ |
| **Mesons ($q\bar{q}$)** | Pions ($\pi^\pm, \pi^0$), Kaons ($K^\pm, K^0$), $J/\psi (c\bar{c})$, $\Upsilon (b\bar{b})$ | 1D `Vexel` | $18$ tokens ($9 + 9$) | $+3, 0, -3$ |
| **Nucleons ($qqq$)** | Proton ($uud$), Neutron ($udd$) | 3D `Boxel` ($3 \times 3 \times 3$) | $27$ tokens ($3 \times 9$) | $+3, 0$ |
| **Hyperons ($qqq$)** | $\Lambda^0 (uds)$, $\Sigma^\pm (uus/dds)$, $\Xi^{0,-} (uss/dss)$, $\Omega^- (sss)$ | 3D `Boxel` ($3 \times 3 \times 3$) | $27$ tokens ($3 \times 9$) | $+3, 0, -3$ |
| **Tetraquarks ($qq\bar{q}\bar{q}$)** | $X(3872) = c\bar{c}u\bar{u}$ | 1D `Vexel` | $36$ tokens ($4 \times 9$) | $0$ |
| **Pentaquarks ($qqqq\bar{q}$)** | $P_c^+ = uudc\bar{c}$ | 3D `Boxel` + `Vexel` | $45$ tokens ($5 \times 9$) | $+3$ |
| **Dibaryons ($qqqqqq$)** | H-Dibaryon ($uuddss$) | 3D `Boxel` | $54$ tokens ($6 \times 9$) | $0$ |
| **Light Nuclei (BBN)** | Deuteron ($^2\text{H}$), Triton ($^3\text{H}$), $^3\text{He}$, $\alpha$-Core ($^4\text{He}$), $^7\text{Li}$ | 3D `Boxel` | $A \times 27$ tokens | $+3 Z$ |
| **Stellar Nuclei** | $^7\text{Be}$, $^8\text{B}$, $^{20}\text{Ne}$, $^{24}\text{Mg}$, $^{28}\text{Si}$, $^{56}\text{Fe}$ | 3D `Boxel` | $A \times 27$ tokens | $+3 Z$ |

---

## 2. SU(3) Color Neutrality & Confinement

In [`Compound.HadronicConfinement`](file:///var/home/justin/Projects/Idris2-Universe2/src/Compound/HadronicConfinement.idr) and [`Compound.HyperonAlgebra`](file:///var/home/justin/Projects/Idris2-Universe2/src/Compound/HyperonAlgebra.idr), color confinement is proven via balance arrays over Red ($z=0$), Green ($z=1$), and Blue ($z=2$) Z-slices:

$$\text{isHadronBoxelColorNeutral}(B) \iff W_{\text{Red}} = W_{\text{Green}} = W_{\text{Blue}} = 9$$

For mesons ($q\bar{q}$) in [`Compound.MesonAlgebra`](file:///var/home/justin/Projects/Idris2-Universe2/src/Compound/MesonAlgebra.idr), color-anticolor neutrality requires equal weight distribution between quark ($+9$) and antiquark ($+9$) carriers:

$$\text{isMesonColorNeutral}(M) \iff W_{q} = W_{\bar{q}} = 9$$

---

## 3. Scale Mass Conservation Theorem

Across all fusion and decay operations, total token mass is strictly conserved without fractional remainder:

$$\sum_{i} \text{MassTokens}(\text{Constituent}_i) = \text{MassTokens}(\text{Composite})$$

- **Beta Decay**: $n (27) \longrightarrow p (27) + e^- (0) + \bar{\nu}_e (0)$
- **Hoyle State**: $3 \times \alpha (108) \longrightarrow ^{12}\text{C } (324)$
- **Peak Binding Energy**: $56 \times \text{Nucleon } (27) \longrightarrow ^{56}\text{Fe } (1512)$

---

## 4. Compile-Time Proof Reflection Witnesses

All invariants are asserted at compile-time via elaborator macros in [`Reflect.Auditor.Compound`](file:///var/home/justin/Projects/Idris2-Universe2/src/Reflect/Auditor/Compound.idr):

- **Witness 143**: `auditMesonAlgebra`
- **Witness 144**: `auditGaugeBoson`
- **Witness 145**: `auditCosmicNucleosynthesis`
- **Witness 146**: `auditHyperonAlgebra`
- **Witness 147**: `auditHeavyMesonAlgebra`
- **Witness 148**: `auditExoticMultiquarks`
- **Witness 149**: `auditStellarNuclei`
