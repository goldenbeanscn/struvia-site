# Image Crop Rules

This document defines engineering crop rules for Struvia technical evidence assets.

Core rule:

* crop around the engineering subject, not the most aesthetic composition

Do not overwrite original images.

Processed images must be created under:

* `assets/processed/`

---

# Required Crop Ratios

Hero:

* ratio: 16:9
* use for Technical Center hero evidence, project evidence, installation sequence overviews, logistics overviews
* keep the main facade or workflow action centered

Application cards:

* ratio: 4:3
* use for project cards, application evidence, facade type examples
* preserve building volume and facade surface

Detail evidence:

* ratio: 1:1
* use for interlocks, trims, corners, screw zones, openings, panel texture, drainage exits
* subject should occupy the center 60-75 percent of the frame

Technical diagrams:

* ratio: horizontal when showing sequence, load path, water path, or panel run
* ratio: vertical when showing wall section, drainage stack, cavity, or facade layer build-up

Mobile crop:

* center key engineering subject
* avoid cropping away panel joints, trims, workers, drainage exits, or fastener zones

---

# Crop Priorities

Installation images:

* keep worker action visible
* keep panel edge, trim, or fixing operation visible
* avoid crop that only shows a finished wall with no workflow evidence

Waterproof images:

* prioritize drainage exit, overlap direction, flashing, lower trim, or wet test condition
* if no true water evidence exists, mark as `needs real image`

Accessories and trims:

* crop close to corner, opening, starter, finishing, or connecting trim
* avoid wide facade crops that hide the detail

Product structure:

* crop panel surface, profile, cut edge, interlock, backing, or layer relationship
* avoid decorative-only facade views

Factory and QC:

* crop inspection action, production line, finished stack, label, package, or checkpoint
* avoid broad factory ambience without QC evidence

Loading and logistics:

* crop container, pallet, forklift path, loading sequence, package support, or long-panel handling
* avoid generic transport images without panel evidence

Site handling:

* crop worker spacing, long-panel support, pallet spacing, storage covering, cutting, or cleaning action

---

# Improvement Actions

Use these labels in the manifest:

* crop
* upscale
* remove clutter
* extend sky
* extend ground
* brighten
* replace
* needs real image

Use `replace` when:

* facade is warped
* building looks unrealistic
* joints are impossible
* trim logic is wrong
* image is decorative-only
* image is too low-resolution for technical evidence

Use `needs real image` when:

* no real asset exists for the engineering proof
* a proxy image could mislead technical readers
