# ⚡ Plasma Recombination & Photon Decoupling

Following the primordial Quark-Gluon Plasma and Big Bang Nucleosynthesis (Epochs 1 to 4), the universe expands into **Epochs 5 to 10**, undergoing **Plasma Recombination & Photon Decoupling**.

---

## 🏛️ 1. Theoretical Framework

```
            IONIZED PLASMA TO NEUTRAL HYDROGEN TRANSITION
  ┌─────────────────────────────────────────────────────────────────┐
  │ Ionized Plasma (Epoch 5): Free Protons (p+) + Electrons (e-)     │
  │ Net Charge = 0, High Thomson Scattering Optical Depth           │
  │                               │                                 │
  │                               ▼                                 │
  │ Recombination Event: p+ + e- ──> H0 (Neutral Hydrogen)          │
  │ Emits Decoupling Photons (Rydberg 13.6 eV Threshold)            │
  │ Universe becomes optically transparent (Cosmic Microwave Sky)   │
  └─────────────────────────────────────────────────────────────────┘
```

### A. Charge Neutrality & Optical Transparency
In ionized plasma, free electrons scatter electromagnetic photons continuously (Thomson scattering opacity). Once the temperature drops below the Rydberg ionization threshold, electrons are captured into discrete quantum orbitals around protons, forming neutral Hydrogen atoms ($\text{H}^0$).

Photons decouple from baryonic matter, propagating freely across the 3-torus without scattering loss.

---

## 💻 2. Executable Literate Code & Verification

```idris
module Geometry.Plasma_Recombination_and_Decoupling
import Language.Reflection

import Core.BoxInt
import Core.VexelMaxel
import Compound.PlasmaRecombination

%default total

||| Verifies that Recombination strictly conserves electric charge and particle count.
public export
verifyPlasmaRecombinationDecoupling : Bool
verifyPlasmaRecombinationDecoupling =
  auditPlasmaRecombinationDecouplingProof
```
