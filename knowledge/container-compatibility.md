# Container Compatibility

Primary reference:

* Dimension and container specification PDF: `dimension.pdf`

Reference interpretation:

* This file converts panel dimension and container data into logistics workflow knowledge.
* It does not claim guaranteed loading capacity for every order.
* Actual loading depends on panel finish, thickness, package method, pallet use, accessory inclusion, container condition, and loading plan.

Verified PDF data:

* 20 ft container: 2.9 m or 5.8 m panels, about 1,500 m2 loading reference
* 40 ft high-cube container: 2.9 m, 3.8 m, or 5.8 m panels, about 3,500 m2 loading reference
* effective panel width: 38.3 cm
* common thicknesses: 16 mm and 20 mm
* weight per 1000 m2: 3000 kg for 16 mm, 3300 kg for 20 mm
* volume per 1000 m2: 18 m3 for 16 mm, 20 m3 for 20 mm

---

# Container Compatibility Logic

Container compatibility is a relationship between panel geometry, package format, and loading method.

Core factors:

* panel length
* panel thickness
* package dimensions
* pallet use
* panel weight
* panel volume
* container interior clearance
* unloading method at destination

Engineering interpretation:

* container planning should begin before panel length is finalized
* a length that installs efficiently may create transport risk if container fit and unloading are not considered

---

# 20ft vs 40ft Loading Logic

The PDF separates 20 ft and 40 ft high-cube loading logic.

20 ft container logic:

* compatible panel lengths listed: 2.9 m or 5.8 m
* approximate loading reference: about 1,500 m2
* should be used with package planning and loading verification

40 ft high-cube logic:

* compatible panel lengths listed: 2.9 m, 3.8 m, or 5.8 m
* approximate loading reference: about 3,500 m2
* longer container geometry supports additional planning options

Important caution:

* loading references are approximate, not universal capacity guarantees
* package reinforcement, pallets, accessories, and order mix can change actual loading result

---

# Long Panel Transportation

Long panels improve some facade workflows but increase logistics sensitivity.

Long-panel risks:

* bending during forklift handling
* twisting while entering container
* edge impact at container door
* package abrasion during transport
* difficult unloading if destination equipment is limited

Control logic:

* confirm support points before lifting
* keep long bundles level
* avoid dragging panel packages
* protect ends and interlocking edges
* plan destination unloading before shipment

---

# Export Optimization

Export optimization should balance area coverage, container fit, and protection.

Optimization inputs:

* effective width for area coverage calculation
* selected length for package and container planning
* selected thickness for volume and weight planning
* pallet and carton method
* container type
* accessory volume and mixed cargo

Workflow:

1. calculate coverage area using effective width
2. confirm required lengths and project cuts
3. select compatible container type
4. estimate weight and volume using thickness-specific references
5. plan packaging method
6. verify loading sequence and unloading method

---

# Loading Constraints

Loading constraints should be resolved before production release.

Constraint areas:

* container door clearance
* package turning radius
* forklift access
* long-panel support
* package stack pressure
* pallet height
* friction between bundles
* door closure after final package

Engineering reason:

* container compatibility is not only whether the panel can fit inside
* it is whether the panel can be loaded, transported, unloaded, and installed without avoidable damage

---

# Scalable Shipment Planning

Scalable shipment planning creates repeatable export handling.

Repeatable planning variables:

* 20 ft or 40 ft high-cube container
* 2.9 m, 3.8 m, or 5.8 m length group
* 16 mm or 20 mm thickness group
* package count
* pallet count
* volume and weight estimate
* accessory package group
* destination unloading constraints

Buildability relationship:

* accurate container planning protects installation schedule
* predictable package grouping improves distributor workflow
* reduced transport damage supports repeatable facade execution

---

# Loading Efficiency

Loading efficiency is the ability to load repeatably without damaging panels.

Efficient loading requires:

* pre-planned package sequence
* compatible package length
* stable bundle geometry
* clear labels
* protection against edge compression
* final container inspection

Avoid:

* maximizing volume at the expense of panel geometry
* mixing lengths without a loading plan
* placing heavy pressure on interlocking edges
* trapping fragile or first-needed packages deep in the container

---

# Transportation Workflow

Recommended container workflow:

1. confirm order dimensions and container type
2. group panels by length, thickness, finish, and destination
3. confirm package quantity and label logic
4. inspect container dryness and cleanliness
5. load base packages with stable alignment
6. manage long panels with adequate support
7. separate or reinforce friction-sensitive areas
8. inspect final package stability
9. close doors and record shipment condition

---

# Common Transport Risks

## Approximate Capacity Treated As Guaranteed Capacity

Risk:

* using the PDF loading reference as a fixed guarantee for every shipment

Control:

* verify package method, order mix, accessories, and container condition for each shipment

## Length Selected Without Unloading Review

Risk:

* long panels fit the container but are difficult to unload safely

Control:

* confirm destination equipment, unloading path, and support points

## Weight and Volume Planned Separately

Risk:

* shipment plan works by weight but fails by volume, or works by volume but creates handling risk

Control:

* evaluate weight, volume, package dimensions, and container geometry together

## Interlocking Edge Damage

Risk:

* loading pressure or friction deforms locking edges

Control:

* protect locking edges and avoid placing concentrated pressure on panel profiles

