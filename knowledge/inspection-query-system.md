# Inspection Query System

The inspection query system maps field verification questions to Technical Center references.

The goal is to retrieve inspection logic quickly when a user asks about a detail, sequence, or failure risk.

## Query Categories

### Overlap Spacing / Overlap Direction

User intent:

- Verify whether overlap direction is correct.
- Avoid reverse-lap water entry.

Retrieve:

- `technical-center/waterproof-logic/`
- `technical-center/engineering-nodes/overlap-detail/`
- `technical-center/engineering-nodes/overlap-drainage/`
- `knowledge/failure-architecture.md`

Inspection response:

- Confirm upper element sheds over lower element.
- Check trim does not reverse water path.
- Capture close-up before closure.

## Screw Spacing / Screw Zone

User intent:

- Verify fastener line, support, or screw-zone restraint.

Retrieve:

- `technical-center/installation/interlock-sequence/`
- `technical-center/engineering-nodes/interlocking-joint/`
- `knowledge/inspection-system.md`

Inspection response:

- Confirm screw line reaches suitable substrate.
- Check no over-fixing or panel distortion.
- Inspect joint after fixing.

## Trim Closure

User intent:

- Verify edge closure, corner trim, opening trim, or finish trim.

Retrieve:

- `technical-center/accessories-trim-systems/`
- `technical-center/trim/outside-corner/`
- `technical-center/waterproof/window-flashing/`
- `technical-center/engineering-nodes/edge-closure/`

Inspection response:

- Confirm no exposed core.
- Check trim does not block drainage.
- Confirm water-shedding direction.
- Inspect both planes at corners.

## Drainage Path

User intent:

- Verify water can leave the assembly.

Retrieve:

- `technical-center/waterproof/base-drainage/`
- `technical-center/engineering-nodes/drainage-exit/`
- `technical-center/waterproof-logic/`

Inspection response:

- Confirm outlet remains open after panel seating.
- Check no sealant, foam, debris, or trim blocks exit.
- Record after-cleaning evidence.

## Flashing Closure

User intent:

- Verify window or opening flashing logic.

Retrieve:

- `technical-center/waterproof/window-flashing/`
- `technical-center/engineering-nodes/window-flashing/`
- `technical-center/waterproof-logic/`

Inspection response:

- Confirm head sheds outward.
- Confirm jamb trims protect cut edges.
- Confirm sill release is open.
- Capture evidence before trim closure hides the lap.

## Cut Edge Protection

User intent:

- Verify field cuts, exposed core, or corrosion risk.

Retrieve:

- `technical-center/engineering-nodes/cutting-corrosion/`
- `technical-center/waterproof/base-drainage/`
- `knowledge/project-risk-prevention.md`

Inspection response:

- Remove filings immediately.
- Protect exposed cut edges.
- Check lower trims and openings after cutting.

## Query Output Template

When answering an inspection query, return:

- Primary page.
- Related node.
- Failure risk.
- Inspection steps.
- Evidence needed.
- Correction workflow.
