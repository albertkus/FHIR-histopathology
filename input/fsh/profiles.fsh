Profile: GenericHistopathologyReport
Parent: DiagnosticReport
Id: generic-histopathology-report
Title: "Generic Histopathology Diagnostic Report"
Description: "Generic FHIR profile covering routine histopathology reports in Lithuania."
* status MS
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject 1..1 MS
* subject only Reference(Patient)
* specimen 1..* MS
* specimen only Reference(HistopathologySpecimen)
* result MS
* result only Reference(Observation)

Profile: HistopathologySpecimen
Parent: Specimen
Id: histopathology-specimen
Title: "Histopathology Specimen"
Description: "Specimen profile capturing procedure and body site separately, supporting morphologic abnormalities."
* collection MS
* collection.method 1..1 MS
* collection.bodySite 1..1 MS
* collection.bodySite from HistopathologyBodySiteVS (preferred)