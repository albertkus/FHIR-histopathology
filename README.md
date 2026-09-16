# Lithuanian Histopathology FHIR Implementation Guide

This repository contains draft FHIR Shorthand models for routine histopathology reporting in Lithuania. It is designed to cover approximately 80% of generic histopathology workflows, serving as a foundation before expanding into complex cancer synoptic reporting.

## Key Features
* **Generic DiagnosticReport Profile**: Standardizes the reporting wrapper.
* **Histopathology Specimen Profile**: Enforces the separation of the collection procedure (`collection.method`) and the anatomical body site (`collection.bodySite`).
* **SNOMED CT ValueSet**: Includes both standard anatomical structures and morphologic abnormalities (e.g., hernias, cysts) for edge cases where standard anatomy is absent.

## Repository Structure
* `input/fsh/aliases.fsh`: Standard system definitions (SNOMED CT, LOINC, UCUM).
* `input/fsh/profiles.fsh`: The core `DiagnosticReport` and `Specimen` profiles.
* `input/fsh/valuesets.fsh`: SNOMED CT body site value set utilizing `is-a` hierarchies.
* `input/fsh/instances.fsh`: Test instances demonstrating a routine skin biopsy.

## Prerequisites
To compile the Shorthand files into standard FHIR JSON resources, you need to have [Node.js](https://nodejs.org/) and the **SUSHI** compiler installed on your machine.

To install SUSHI globally, run:
```bash
npm install -g fsh-sushi
