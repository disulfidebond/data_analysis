## Overview
This writeup provides a brief synopsis of Electronic Health Records (EHR) and an overview of how data is formatted within the records.

Several sources were used to create this writeup, including [Epic](https://open.epic.com/Tutorial/OAuth), [UCDSI Standards documentation](https://uscdi.epic.com/Sandbox), [FHIR standards](https://www.hl7.org/FHIR/index.html), and a sandbox for Epic's API that [Epic helpfully provided](https://open.epic.com/Clinical/FHIR?whereTo=patient).

### Terminology and Acronyms

UCDSI : [U.S. Core Data for Interoperability](https://uscdi.epic.com), formatting and standards for electronic patient health data.

CCDS : [Common Clinical Data Set](https://www.healthit.gov/sites/default/files/ccds_reference_document_v1_1.pdf), supported by epic, it defines how health information should be formatted 

FHIR : [Fast Healthcare Interoperability Resources](https://www.hl7.org/fhir/overview.html), a standard for exchanging healthcare information electronically

[HealthIT has a terminology list](https://www.healthit.gov/topic/health-it-basics/glossary)

[HL7 also has a terminology list](https://www.hl7.org/fhir/us/core/terminology.html)

### Where do I start?
If you are interested in writing Apps or software that leverages APIs to access EHR data, then start with [Epic's overview](https://open.epic.com/Interface/FHIR), read through [FHIR](https://www.hl7.org/fhir/overview.html) and [HL7 standards](https://www.hl7.org), then use Epic's documentation and [sandbox](https://open.epic.com/Interface/FHIR) as a reference. Be sure to review how [UCDSI elements](https://uscdi.epic.com) are formatted.

If you are interested in parsing EHR data that has already been retrieved, read through [Epic's](https://open.epic.com) documentation, and focus on using [the sandbox](https://open.epic.com/Interface/FHIR) to get an idea of what data can/will be retrieved.

If you are totally lost and have no idea where to start, see [this page here](https://www.healthit.gov/faq/what-electronic-health-record-ehr).

### Data basics with code
* source for code and data is [here](https://open.epic.com/Clinical/FHIR?whereTo=patient)
 
Patient data is set up under the idea that multiple parties can access and update the data, including but not limited to the patient, physicians(s) for the patient, and medical providers. Each entry into patient data is structured to be linked to a patient and retrievable with the correct credentials.

For example, to pull general demographic data on a patient, the bash script has been created that will download the patient data.
        
An R script has also been created that [will download the data](https://github.com/disulfidebond/data_analysis/blob/version1_changes/example_download.R).

There are some things to keep in mind:

* Depending on your installation or if you're using a Docker container for R, other options may work
* The default text formatting for this particular download seems to be XML, but JSON or other formats may also be used

