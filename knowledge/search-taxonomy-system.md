# Engineering Search Taxonomy System

The search taxonomy system organizes Technical Center knowledge by engineering problem, not by marketing category.

The goal is to help a user retrieve the right execution reference when they ask a practical question such as:

- Why is moisture trapped at the base?
- Which page explains screw spacing checks?
- What should an installer inspect before closing trim?
- Which details matter in heavy rainfall?

## Retrieval Dimensions

### 1. Failure-Based Discovery

Use when the user starts with a problem or risk.

Primary failure terms:

- Trapped moisture.
- Thermal bridge.
- Blocked drainage.
- Cutting corrosion.
- Unsupported edge.
- Wrong overlap.
- Open joint.
- Exposed core.
- Surface deformation.
- Trim conflict.

Related content types:

- Failure architecture.
- Inspection system.
- Technical subpages.
- Engineering nodes.
- Project evidence.

## 2. Role-Based Discovery

Use when the user starts from a professional role.

### Architect

Priority retrieval:

- Product structure.
- Thermal envelope.
- Waterproof logic.
- Project evidence.
- Node details for openings and corners.

### Installer

Priority retrieval:

- Installation sequence.
- Interlock seating.
- Screw-zone checks.
- Trim closure.
- Cutting and cleaning workflow.

### Builder

Priority retrieval:

- Buildability.
- Waterproof strategy.
- Failure prevention.
- Inspection checkpoints.
- Sequencing workflows.

### Distributor

Priority retrieval:

- Export workflow.
- Loading logic.
- Storage protection.
- Site handling.
- QC evidence.

## 3. Climate-Based Discovery

Use when the user starts from environmental pressure.

### Humid Climate

Retrieve:

- Waterproof logic.
- Base drainage.
- Window flashing.
- Cutting corrosion.
- Storage protection.
- Project evidence for rain-exposed buildings.

### Coastal Environment

Retrieve:

- Corrosion prevention.
- Surface protection.
- Cutting debris control.
- Moisture control.
- Logistics and storage protection.

### Heavy Rainfall

Retrieve:

- Drainage exits.
- Overlap direction.
- Starter trim.
- Window flashing.
- Base drainage.
- Moisture trap failure chains.

### Thermal Exposure

Retrieve:

- Thermal envelope.
- Thermal continuity joints.
- Product structure.
- Material properties.
- Fastener and trim bridge review.

## 4. Node-Based Discovery

Use when the user starts from a physical detail.

Node terms:

- Flashing.
- Overlap.
- Corner trim.
- Starter trim.
- Drainage exit.
- Interlock.
- Edge closure.
- Panel transition.
- Cut edge.
- Screw zone.

## 5. Inspection-Based Discovery

Use when the user starts from a verification task.

Inspection terms:

- Overlap spacing.
- Screw spacing.
- Trim closure.
- Drainage path.
- Flashing closure.
- Joint seating.
- Cut-edge protection.
- Cleaning after cutting.
- Base outlet check.
- Opening transition check.

## Retrieval Output Rule

Every retrieval result should point to:

- The most relevant execution page.
- The related node page.
- The failure or inspection system.
- Evidence requirements.
- Related project evidence when available.

## Search Intent Examples

| Query Intent | Primary Route | Supporting Route |
|---|---|---|
| "blocked drainage" | `/waterproof/base-drainage` | drainage exit node, failure architecture |
| "thermal bridge at joint" | `/thermal/continuity-joints` | thermal envelope, product structure |
| "installer screw spacing" | `/installation/interlock-sequence` | installation system, inspection system |
| "humid warehouse wall" | `/project-evidence/southeast-asia-warehouse` | waterproof logic, base drainage |
| "corner trim risk" | `/trim/outside-corner` | corner trim node, waterproof logic |
