Instance: ExampleBiopsySpecimen
InstanceOf: HistopathologySpecimen
Description: "Test instance of a routine skin biopsy"
* status = #available
* type = $sct#309066003 "Skin biopsy specimen (specimen)"
* collection.procedure = $sct#240977001 "Biopsy of skin (procedure)"
* collection.bodySite = $sct#442083009 "Anatomical or acquired body structure (body structure)"

Instance: ExampleBiopsyReport
InstanceOf: GenericHistopathologyReport
Description: "Test instance of a routine biopsy report"
* status = #final
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(ExamplePatient)
* specimen = Reference(ExampleBiopsySpecimen)

Instance: ExamplePatient
InstanceOf: Patient
Description: "Dummy patient to satisfy reference validation"
* name.family = "Pavardenis"
* name.given = "Vardenis"
* gender = #male
* birthDate = "1980-01-01"