---
title: "South Korea driver's license number entity definition"
f1.keywords:
- CSH
ms.author: v-katykoenen
author: kmkoenen
manager: laurawi
ms.date: 05/04/2023
audience: Admin
search.appverid: MET150
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier3
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "South Korea driver's license number sensitive information type entity definition."
---

# South Korea driver's license number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

10 or 12 digits with optional hyphens 

## Pattern

Pattern 1: 

- two digits 
- optional hyphen 
- six digits 
- optional hyphen 
- two digits 

Pattern 2: 

- optional 2 digits (allowed digits are 11-26 and 28) 
- optional hyphen 
- two digits 
- optional hyphen 
- six digits 
- optional hyphen 
- two digits 

## Checksum

NA

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression `Regex_south_korea_driver's_license_10digits` or `Regex_south_korea_driver's_license_12digits` finds content that matches the pattern. 
- A keyword from `Keyword_south_korea_driver's_license` or `Keywords_eu_driver's_license_number_common` is found. 

 
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression `Regex_south_korea_driver's_license_12digits` finds content that matches the pattern. 

```xml
      <!-- South Korea Driver's License Number -->
      <Entity id="3da0b024-4c08-406b-9f9e-de96accd0209" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_south_korea_driver's_license_10digits" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number_common" />
            <Match idRef="Keyword_south_korea_driver's_license" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_south_korea_driver's_license_12digits" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number_common" />
            <Match idRef="Keyword_south_korea_driver's_license" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_south_korea_driver's_license_12digits" />
        </Pattern>
      </Entity>
```

## Keywords

**Keyword_south_korea_driver's_license**

- 운전면허번호
- 운전면허 번호
- 운전 면허 번호
- 운전면허증 번호
- 운전면허증

**Keywords_eu_driver's_license_number_common**

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number
