ValueSet: HistopathologyBodySiteVS
Id: histopathology-body-site-vs
Title: "Histopathology Body Site and Morphology Value Set"
Description: "Allows both normal anatomical structures and morphologic abnormalities as valid sites."
* include codes from system $sct where concept is-a #442083009 "Anatomical or acquired anatomic structure"
* include codes from system $sct where concept is-a #49755003 "Morphologically abnormal structure"