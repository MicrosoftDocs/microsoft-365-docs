---
title: "Singapore driver's license number entity definition"
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
description: "Singapore driver's license number sensitive information type entity definition."
---

# Singapore driver's license number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Nine alphanumeric characters 

## Pattern

- One letter followed by 
- seven digits followed by 
- One letter 

## Checksum

NA

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression Regex_singapore_driving_license finds content that matches the pattern. 
- A keyword from Keyword_singapore_driving_license or Keywords_eu_driver's_license_number_common is found. 
 

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression Regex_singapore_driving_license finds content that matches the pattern. 

```xml
      <!-- Singapore Driving License Number -->
      <Entity id="beaa54d7-ec6a-4160-a37b-f3916b68934b" patternsProximity="300" recommendedConfidence="85" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_singapore_driving_license" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number_common" />
            <Match idRef="Keyword_singapore_driving_license" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_singapore_driving_license" />
        </Pattern>
      </Entity>
```

## Keywords

**Keyword_singapore_driving-license**

- Licence number
- licence no
- licence#
- lesen memandu
- lesen pemandu
- nombor lesen
- 驾驶执照
- 驾驶 执照
- 驾驶执照号码
- 驾驶 执照 号码

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
