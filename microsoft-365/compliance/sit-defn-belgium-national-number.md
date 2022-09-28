---
title: "Belgium national number entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Belgium national number sensitive information type entity definition."
---

# Belgium national number

## Format

11 digits plus optional delimiters

## Pattern

11 digits plus delimiters:

- six digits and two optional periods in the format YY.MM.DD for date of birth
- An optional delimiter from dot, dash, space
- three sequential digits (odd for males, even for females)
- An optional delimiter from dot, dash, space
- two check digits

## Checksum

Yes

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_belgium_national_number` finds content that matches the pattern.
- A keyword from `Keyword_belgium_national_number` is found.
- The checksum passes.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_belgium_national_number` finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Belgium National Number -->
       <Entity id="fb969c9e-0fd1-4b18-8091-a2123c5e6a54" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_belgium_national_number" />
          <Match idRef="Keyword_belgium_national_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_belgium_national_number" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_belgium_national_number

- belasting aantal
- bnn#
- bnn
- carte d'identité
- identifiant national
- identifiantnational#
- identificatie
- identification
- identifikation
- identifikationsnummer
- identifizierung
- identité
- identiteit
- identiteitskaart
- identity
- inscription
- national number
- national register
- nationalnumber#
- nationalnumber
- nif#
- nif
- numéro d'assuré
- numéro de registre national
- numéro de sécurité
- numéro d'identification
- numéro d'immatriculation
- numéro national
- numéronational#
- personal id number
- personalausweis
- personalidnumber#
- registratie
- registration
- registrationsnumme
- registrierung
- social security number
- ssn#
- ssn
- steuernummer
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#