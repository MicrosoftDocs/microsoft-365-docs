---
title: "EU Driver's License Number"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 8/17/2018
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
description: "This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Driver's License Number sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country."
---

# EU Driver's License Number

This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Driver's License Number sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country.
  
## Austria

### Format

Eight digits without spaces and delimiters
  
### Pattern

Eight digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_austria_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_austria_eu_driver's_license_number` is found. 
    
```
<!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_driver's_license_number" />
          <Match idRef="Keywords_austria_eu_driver's_license_number" />
        </Pattern>
    </Entity>

```

### Keywords

|
|
|**Keywords_austria_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> driver's licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/>  driving license number  <br/> dlno#  <br/> fuhrerschein  <br/> fuhrerschein republik osterreich  <br/> |
   
## Belgium

### Format

10 digits without spaces and delimiters
  
### Pattern

10 digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_belgium_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_belgium_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_belgium_eu_driver's_license_number" />
          <Match idRef="Keywords_belgium_eu_driver's_license_number" />
        </Pattern>
</Entity>

```

### Keywords

|
|
|**Keywords__belgium_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> dlno#  <br/> rijbewijs  <br/> rijbewijsnummer  <br/> führerscheinnummer  <br/> fuhrerscheinnummer  <br/> fuehrerscheinnummer  <br/> führerschein- nr  <br/> fuehrerschein- Nr  <br/> fuehrerschein- nr  <br/> |
   
## Bulgaria

### Format

Nine digits without spaces and delimiters
  
### Pattern

Nine digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_bulgaria_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_bulgaria_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
             <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_bulgaria_eu_driver's_license_number" />
          <Match idRef="Keywords_bulgaria_eu_driver's_license_number" />
        </Pattern> 
</Entity>    

```

### Keywords

|
|
|**Keywords_bulgaria_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> свидетелство за управление на мпс  <br/> свидетелство за управление на моторно превозно средство  <br/> сумпс  <br/> шофьорска книжка  <br/> |
   
## Croatia

### Format

Eight digits without spaces and delimiters
  
### Pattern

Eight digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_croatia_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_croatia_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_croatia_eu_driver's_license_number" />
          <Match idRef="Keywords_croatia_eu_driver's_license_number" />
        </Pattern>
</Entity>

```

### Keywords

|
|
|**Keywords_croatia_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> vozačka dozvola  <br/> |
   
## Cyprus

### Format

12 digits without spaces and delimiters
  
### Pattern

12 digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_cyprus_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_cyprus_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_driver's_license_number" />
          <Match idRef="Keywords_cyprus_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_cyprus_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> άδεια οδήγησης  <br/> |
   
## Czech Republic

### Format

Two letters followed by six digits
  
### Pattern

Eight letters and digits:
  
- Two letters (not case-sensitive)
    
- A space (optional)
    
- Six digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_czech_republic_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_czech_republic_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_driver's_license_number" />
          <Match idRef="Keywords_czech_republic_eu_driver's_license_number" />
        </Pattern>
</Entity>

```

### Keywords

|
|
|**Keywords_czech_republic_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> řidičský prúkaz  <br/> |
   
## Denmark

### Format

Eight digits without spaces and delimiters
  
### Pattern

Eight digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_denmark_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_denmark_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_denmark_eu_driver's_license_number" />
          <Match idRef="Keywords_denmark_eu_driver's_license_number" />
        </Pattern>
</Entity>

```

### Keywords

|
|
|**Keywords_denmark_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> kørekort  <br/> kørekortnummer  <br/> |
   
## Estonia

### Format

Two letters followed by six digits
  
### Pattern

Two letters and six digits:
  
-  The letters "ET" (not case-sensitive) 
    
- Six digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_estonia_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_estonia_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_estonia_eu_driver's_license_number" />
          <Match idRef="Keywords_estonia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_estonia_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driving license number  <br/> dlno#  <br/> permis de conduire  <br/> |
   
## Finland

### Format

10 digits containing a hyphen
  
### Pattern

10 digits containing a hyphen:
  
-  Six digits 
    
- A hyphen
    
-  Four digits 
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_finland_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_finland_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_finland_eu_driver's_license_number" />
          <Match idRef="Keywords_finland_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_finland_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> ajokortti  <br/> |
   
## France

For details, see the section "France Driver's License Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Germany

For details, see the section "German Driver's License Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Greece

### Format

Nine digits without spaces and delimiters
  
### Pattern

 Nine digits 
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_greece_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_greece_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_driver's_license_number" />
          <Match idRef="Keywords_greece_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_greece_eu_driver's_license_number**|
|:-----|
|dlL#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> δεια οδήγησης  <br/> Adeia odigisis  <br/> |
   
## Hungary

### Format

Two letters followed by six digits
  
### Pattern

Two letters and six digits:
  
-  Two letters (not case-sensitive) 
    
- Six digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_hungary_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_hungary_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_hungary_eu_driver's_license_number" />
          <Match idRef="Keywords_hungary_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_hungary_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> vezetoi engedely  <br/> |
   
## Ireland

### Format

Six digits followed by four letters
  
### Pattern

Six digits and four letters:
  
- Six digits
    
- Four letters (not case-sensitive)
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_ireland_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_ireland_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_ireland_eu_driver's_license_number" />
          <Match idRef="Keywords_ireland_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_ireland_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> ceadúnas tiomána  <br/> |
   
## Italy

For details, see the section "Italy Driver's License Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Latvia

### Format

Three letters followed by six digits
  
### Pattern

Three letters and six digits:
  
-  Three letters (not case-sensitive) 
    
- Six digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_latvia_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_latvia_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_latvia_eu_driver's_license_number" />
          <Match idRef="Keywords_latvia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_latvia_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> autovadītāja apliecība  <br/> |
   
## Lithuania

### Format

Eight digits without spaces and delimiters
  
### Pattern

 Eight digits 
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_lithuania_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_lithuania_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_lithuania_eu_driver's_license_number" />
          <Match idRef="Keywords_lithuania_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_lithuania_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> vairuotojo pažymėjimas  <br/> |
   
## Luxemburg

### Format

Six digits without spaces and delimiters
  
### Pattern

 Six digits 
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_luxemburg_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_luxemburg_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_luxemburg_eu_driver's_license_number" />
          <Match idRef="Keywords_luxemburg_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_luxemburg_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> fahrerlaubnis  <br/> |
   
## Malta

### Format

Combination of two characters and six digits in the specified pattern
  
### Pattern

Combination of two characters and six digits:
  
- Two characters (digits or letters, not case-sensitive)
    
- A space (optional)
    
- Three digits
    
- A space (optional)
    
- Three digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_malta_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_malta_eu_driver's_license_number` is found. 
    
```
<!-- EU Driver's License Number -->
 <Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_driver's_license_number" />
          <Match idRef="Keywords_malta_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_malta_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> liċenzja tas-sewqan  <br/> |
   
## Netherlands

### Format

10 digits without spaces and delimiters
  
### Pattern

10 digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_netherlands_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_netherlands_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_netherlands_eu_driver's_license_number" />
          <Match idRef="Keywords_netherlands_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_netherlands_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> permis de conduire  <br/> rijbewijs  <br/> rijbewijsnummer  <br/> |
   
## Poland

### Format

14 digits containing 2 forward slashes
  
### Pattern

14 digits and 2 forward slashes:
  
-  Five digits 
    
- A forward slash
    
- Two digits
    
- A forward slash
    
- Seven digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_poland_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_poland_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_poland_eu_driver's_license_number" />
          <Match idRef="Keywords_poland_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_poland_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> prawo jazdy  <br/> |
   
## Portugal

### Format

Two letters followed by a seven numbers in the specified pattern
  
### Pattern

Two letters followed by seven numbers with special characters:
  
-  Two letters (not case-sensitive) 
    
- A hyphen
    
- Six digits
    
- A space
    
- One digit
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_portugal_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_portugal_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_portugal_eu_driver's_license_number" />
          <Match idRef="Keywords_portugal_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_portugal_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> carteira de motorista  <br/> |
   
## Romania

### Format

One character followed by eight digits
  
### Pattern

One character followed by eight digits:
  
-  One letter (not case-sensitive) or digit 
    
- Eight digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_romania_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_romania_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_romania_eu_driver's_license_number" />
          <Match idRef="Keywords_romania_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_romania_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> permis de conducere  <br/> |
   
## Slovakia

### Format

One character followed by seven digits
  
### Pattern

One character followed by seven digits
  
- One letter (not case-sensitive) or digit
    
-  Seven digits 
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_slovakia_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovakia_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovaknia_eu_driver's_license_number" />
          <Match idRef="Keywords_slovakia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_slovakia_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> vodičský preukaz  <br/> |
   
## Slovenia

### Format

Nine digits without spaces and delimiters
  
### Pattern

Nine digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_slovenia_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovenia_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovenia_eu_driver's_license_number" />
          <Match idRef="Keywords_slovenia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_slovenia_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> vozniško dovoljenje  <br/> |
   
## Spain

### Format

Eight digits followed by one character
  
### Pattern

Eight digits followed by one character:
  
-  Eight digits 
    
- One digit or letter (not case-sensitive)
    
### Checksum

Yes
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_spain_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_spain_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_driver's_license_number" />
          <Match idRef="Keywords_spain_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_spain_eu_driver's_license_number**|
|:-----|
|dlno#  <br/> dl#  <br/> drivers lic.  <br/> driver licence  <br/> driver license  <br/> drivers licence  <br/> drivers license  <br/> driver's licence  <br/> driver's license  <br/> driving licence  <br/> driving license  <br/> driver licence number  <br/> driver license number  <br/> drivers licence number  <br/> drivers license number  <br/> driver's licence number  <br/> driver's license number  <br/> driving licence number  <br/> driving license number  <br/> driving permit  <br/> driving permit number  <br/> permiso de conducción  <br/> permiso conducción  <br/> número licencia conducir  <br/> número de carnet de conducir  <br/> número carnet conducir  <br/> licencia conducir  <br/> número de permiso de conducir  <br/> número de permiso conducir  <br/> número permiso conducir  <br/> permiso conducir  <br/> licencia de manejo  <br/> el carnet de conducir  <br/> carnet conducir  <br/> |
   
## Sweden

### Format

Ten digits containing a hyphen
  
### Pattern

Ten digits containing a hyphen:
  
-  Six digits 
    
- A hyphen
    
- Four digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_sweden_eu_driver's_license_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_sweden_eu_driver's_license_number` is found. 
    
```
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_sweden_eu_driver's_license_number" />
          <Match idRef="Keywords_sweden_eu_driver's_license_number" />
        </Pattern>
</Entity> 
```

### Keywords

|
|
|**Keywords_sweden_eu_driver's_license_number**|
|:-----|
|dl#  <br/> driver license  <br/> driver license number  <br/> driver licence  <br/> drivers lic.  <br/> drivers license  <br/> drivers licence  <br/> driver's license  <br/> driver's license number  <br/> driver's licence number  <br/> driving license number  <br/> dlno#  <br/> körkort  <br/> |
   
## UK

For details, see the section "U.K. Driver's License Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## See also

[What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)

