# My first profile with fsh - Min FHIR-utbildning - Sushi+IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **My first profile with fsh**

## Resource Profile: My first profile with fsh 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/education/kursig/StructureDefinition/EducationEncounter | *Version*:0.1.0 |
| Draft as of 2026-11-02 | *Computable Name*:EducationEncounter |

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/fhir.education.kursig|current/StructureDefinition/EducationEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EducationEncounter.csv), [Excel](StructureDefinition-EducationEncounter.xlsx), [Schematron](StructureDefinition-EducationEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EducationEncounter",
  "url" : "http://example.org/fhir/education/kursig/StructureDefinition/EducationEncounter",
  "version" : "0.1.0",
  "name" : "EducationEncounter",
  "title" : "My first profile with fsh",
  "status" : "draft",
  "date" : "2026-11-02T12:39:17+00:00",
  "publisher" : "FHIR-utbildning",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/education/kursig/StructureDefinition/EducationPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "mustSupport" : true
    }]
  }
}

```
