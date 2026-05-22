# Technical Center Engineering Review Workflow

This workflow manages Technical Center pages as engineering documentation, not as normal website content.

The review goal is to confirm whether each page is useful as an exterior systems engineering reference: structured, linked, technically deep, evidence-ready, and inspectable.

## Review Dimensions

### 1. Architecture Review

Check whether the page fits the Technical Center information architecture.

- Taxonomy: page is classified by system behavior, workflow stage, risk type, and evidence type.
- Hierarchy: page belongs to the correct category, node group, or execution-reference layer.
- Routing: URL matches the engineering topic and future search/filter logic.
- Internal linking: page links to parent category, related systems, and relevant node/detail pages.
- Role paths: architect, installer, builder, distributor, or reviewer can reach the page logically.
- System relationships: page explains how adjacent systems affect the topic.

Review status after passing: `architecture-reviewed`.

## 2. Engineering Review

Check whether the page functions as engineering execution knowledge.

- Execution logic: page explains how the work is performed, not just what the component is.
- Sequencing: page defines order of work, hold points, and what must be checked before closure.
- Failure risks: page explains what can fail and why.
- Inspection logic: page includes checkpoints before concealment and after completion.
- Node relationships: page connects trims, panels, fasteners, substrate, drainage, thermal continuity, and handling where relevant.
- Engineering depth: page avoids generic summaries and provides practical field-control logic.

Review status after passing: `engineering-reviewed`.

## 3. Evidence Review

Check whether the page can be supported by technical evidence.

- QC evidence: factory or dimensional records where relevant.
- Installation evidence: sequence frames, fixing details, interlock close-ups, and finished condition.
- Annotated diagrams: arrows, callouts, water paths, airflow, screw zones, closure logic, and risk notes.
- Project evidence: real project images that show the relevant engineering condition.
- Logistics visuals: loading, pallet support, container protection, and unloading condition.
- Handling visuals: lifting, storage, cutting, cleaning, scratch prevention, and site protection.

Review status after passing: `evidence-reviewed`.

## 4. UI Consistency Review

Check whether the page is usable as part of a documentation platform.

- Layout consistency: page follows the Technical Center structure.
- Spacing: content density feels like engineering documentation, not a marketing poster.
- Typography: headings, body text, labels, and cards remain readable.
- Card structure: similar content types use similar components.
- Responsive behavior: diagrams, grids, cards, and side navigation remain usable on smaller screens.

UI consistency does not approve engineering content by itself. It only confirms that the documentation is readable and stable.

## Review Statuses

- `draft`: initial page exists, but review is incomplete.
- `architecture-reviewed`: taxonomy, hierarchy, routing, links, role paths, and relationships are checked.
- `engineering-reviewed`: execution logic, sequencing, failure risks, inspection logic, node relationships, and depth are checked.
- `evidence-reviewed`: evidence placeholders or real visuals are mapped to the required proof type.
- `approved`: architecture, engineering, evidence, and UI consistency are acceptable.
- `needs-depth`: page lacks sufficient execution logic, technical explanation, or workflow detail.
- `needs-evidence`: page lacks real images, annotated diagrams, QC records, project evidence, or workflow visuals.
- `needs-risk-analysis`: page lacks failure modes, risk paths, warnings, or inspection checkpoints.

## Reusable Checklists

### Technical Subpages

- Engineering overview explains the physical condition.
- Failure risks include cause and consequence.
- Assembly sequence includes field order and hold points.
- Annotated diagrams show control layers, arrows, zones, or closure logic.
- Inspection checkpoints include before-closure and after-closure review.
- Common failure conditions are specific to the node or workflow.
- Related systems are linked.
- Evidence placeholders name the required image type.

### Node Pages

- Node is physically defined.
- Control layers are identified.
- Layer relationships are described.
- Sequencing gates are present.
- Inspection system is present.
- Failure analysis connects geometry to risk.
- Evidence capture protocol is defined.

### Waterproof Pages

- Water path is explicit.
- Drainage outlet or release logic is defined.
- Reverse-lap risk is addressed.
- Sealant limitations are stated where relevant.
- Moisture trap risks are included.
- Evidence requires real drainage, flashing, overlap, or closure images.

### Installation Pages

- Sequence is practical for field crews.
- Receiving edge, alignment, seating, fixing, and inspection are separated.
- Fastener logic is tied to substrate and restraint.
- Improper sequencing risks are explained.
- Evidence includes before, during, after, and final frames.

### Thermal Pages

- Panel-field data is separated from whole-assembly performance.
- Joints, cuts, fasteners, trims, and openings are reviewed as continuity risks.
- Thermal bridge and condensation risks are described carefully without unsupported claims.
- Evidence includes joint close-ups, cut-edge core condition, and transition records.

### Logistics Pages

- Handling, storage, loading, unloading, and site protection are treated as engineering workflows.
- Deformation, scratch, rain exposure, unsupported storage, and cutting-debris risks are included.
- Evidence includes pallet support, loading frames, handling visuals, and protection details.

## Review Workflow

1. Assign the page type.
2. Run architecture review.
3. Run engineering review.
4. Run evidence review.
5. Run UI consistency review.
6. Assign one primary status and any blocking flags.
7. Prioritize the next pass based on `needs-depth`, `needs-evidence`, or `needs-risk-analysis`.

## Approval Rule

A page should only be marked `approved` when:

- It has passed architecture review.
- It has passed engineering review.
- It has passed evidence review.
- It has no open blocking flags.
- It remains readable and consistent in the Technical Center layout.
