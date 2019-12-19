---
title: "EU Passport Number"
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 8/16/2018
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
description: "This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Passport Number sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country."
---

# EU Passport Number

This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Passport Number sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country.
  
## Austria

### Format

One letter followed by an optional space and seven digits
  
### Pattern

A combination of one letter, seven digits, and one space:
  
- One letter (not case sensitive)
    
- One space (optional)
    
- Seven digits
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_austria_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_austria_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_passport_number" />
          <Match idRef="Keywords_austria_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_austria_eu_passport_number**|
|:-----|
|passport number  <br/> austrian passport number  <br/> passport no  <br/> reisepass  <br/> österreichisch reisepass  <br/> |
   
## Belgium

### Format

Two letters followed by six digits with no spaces or delimiters
  
### Pattern

Two letters and followed by six digits
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_belgium_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_belgium_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_belgium__eu_passport_number" />
          <Match idRef="Keywords_belgium_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_belgium_eu_passport_number**|
|:-----|
|passport number  <br/> belgian passport number  <br/> passport no  <br/> paspoort  <br/> paspoortnummer  <br/> reisepass kein  <br/> reisepass  <br/> |
   
## Bulgaria

### Format

Nine digits without spaces and delimiters
  
### Pattern

 Nine digits 
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_bulgaria_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_bulgaria_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_bulgaria_eu_passport_number" />
          <Match idRef="Keywords_bulgaria_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_bulgaria_eu_passport_number**|
|:-----|
|passport number  <br/> bulgarian passport number  <br/> passport no  <br/> номер на паспорта  <br/> |
   
## Croatia

### Format

Nine digits without spaces and delimiters
  
### Pattern

 Nine digits 
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_croatia_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_croatia_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_croatia_eu_passport_number" />
          <Match idRef="Keywords_croatia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_croatia_eu_passport_number**|
|:-----|
|passport number  <br/> croatian passport number  <br/> passport no  <br/> broj putovnice  <br/> |
   
## Cyprus

### Format

One letter followed by 6-8 digits with no spaces or delimiters
  
### Pattern

One letter followed by six to eight digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_cyprus_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_cyprus_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_passport_number" />
          <Match idRef="Keywords_cyprus_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_cyprus_eu_passport_number**|
|:-----|
|passport number  <br/> cyprus passport number  <br/> passport no  <br/> αριθμό διαβατηρίου  <br/> |
   
## Czech Republic

### Format

Eight digits without spaces or delimiters
  
### Pattern

Eight digits without spaces or delimiters
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_czech_republic_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_czech_republic_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_passport_number" />
          <Match idRef="Keywords_czech_republic_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_czech_republic_eu_passport_number**|
|:-----|
|passport number  <br/> czech passport number  <br/> passport no  <br/> cestovní pas  <br/> pas  <br/> |
   
## Denmark

### Format

Nine digits without spaces and delimiters
  
### Pattern

 Nine digits 
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_denmark_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_denmark_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_denmark_eu_passport_number" />
          <Match idRef="Keywords_denmark_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_denmark_eu_passport_number**|
|:-----|
|passport number  <br/> danish passport number  <br/> passport no  <br/> pas  <br/> pasnummer  <br/> |
   
## Estonia

### Format

One letter followed by seven digits with no spaces or delimiters
  
### Pattern

One letter followed by seven digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_estonia_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_estonia_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_estonia_eu_passport_number" />
          <Match idRef="Keywords_estonia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_estonia_eu_passport_number**|
|:-----|
|passport number  <br/> estonian passport number  <br/> passport no  <br/> eesti kodaniku pass  <br/> |
   
## Finland

For details, see the section "Finland Passport Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## France

For details, see the section "France Passport Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Germany

For details, see the section "German Passport Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Greece

### Format

Two letters followed by seven digits with no spaces or delimiters
  
### Pattern

Two letters followed by seven digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_greece_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_greece_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_passport_number" />
          <Match idRef="Keywords_greece_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_greece_eu_passport_number**|
|:-----|
|passport number  <br/> greek passport number  <br/> passport no  <br/> διαβατηριο  <br/> |
   
## Hungary

### Format

Two letters followed by six or seven digits with no spaces or delimiters
  
### Pattern

Two letters followed by six or seven digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_hungary_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_hungary_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_hungary_eu_passport_number" />
          <Match idRef="Keywords_hungary_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_hungary_eu_passport_number**|
|:-----|
|passport number  <br/> hungarian passport number  <br/> passport no  <br/> útlevél száma  <br/> |
   
## Ireland

### Format

Two letters or digits followed by seven digits with no spaces or delimiters
  
### Pattern

Two letters or digits followed by seven digits:
  
- Two digits or letters (not case sensitive)
    
- Seven digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_ireland_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_ireland_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_ireland_eu_passport_number" />
          <Match idRef="Keywords_ireland_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_ireland_eu_passport_number**|
|:-----|
|passport number  <br/> irish passport number  <br/> passport no  <br/> pas  <br/> passport  <br/> passeport  <br/> passeport numero  <br/> |
   
## Italy

### Format

Two letters or digits followed by seven digits with no spaces or delimiters
  
### Pattern

Two letters or digits followed by seven digits:
  
- Two digits or letters (not case sensitive)
    
- Seven digits
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_italy_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_italy_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_italy_eu_passport_number" />
          <Match idRef="Keywords_italy_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_italy_eu_passport_number**|
|:-----|
|italian passport number  <br/> repubblica italiana passaporto  <br/> passaporto  <br/> passaporto italiana  <br/> passport number  <br/> italiana passaporto numero  <br/> passaporto numero  <br/> numéro passeport italien  <br/> numéro passeport  <br/> |
   
## Latvia

### Format

Two letters or digits followed by seven digits with no spaces or delimiters
  
### Pattern

Two letters or digits followed by seven digits:
  
- Two digits or letters (not case sensitive)
    
- Seven digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_latvia_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_latvia_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_latvia_eu_passport_number" />
          <Match idRef="Keywords_latvia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_latvia_eu_passport_number**|
|:-----|
|passport number  <br/> latvian passport number  <br/> passport no  <br/> pase numurs  <br/> |
   
## Lithuania

### Format

Eight digits or letters with no spaces or delimiters
  
### Pattern

Eight digits or letters (not case sensitive)
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_lithuania_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_lithuania_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_lithuania_eu_passport_number" />
          <Match idRef="Keywords_lithuania_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_lithuania_eu_passport_number**|
|:-----|
|passport number  <br/> lithunian passport number  <br/> passport no  <br/> paso numeris  <br/> |
   
## Luxemburg

### Format

Eight digits or letters with no spaces or delimiters
  
### Pattern

Eight digits or letters (not case sensitive)
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_nation_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_nation_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_nation_eu_passport_number" />
          <Match idRef="Keywords_nation_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_nation_eu_passport_number**|
|:-----|
|passport number  <br/> latvian passport number  <br/> passport no  <br/> passnummer  <br/> |
   
## Malta

### Format

Seven digits without spaces or delimiters
  
### Pattern

 Seven digits 
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_malta_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_malta_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_passport_number" />
          <Match idRef="Keywords_malta_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_malta_eu_passport_number**|
|:-----|
|passport number  <br/> maltese passport number  <br/> passport no  <br/> numru tal-passaport  <br/> |
   
## Netherlands

### Format

Nine letters or digits with no spaces or delimiters
  
### Pattern

Nine letters or digits
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_netherlands_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_netherlands_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_netherlands_eu_passport_number" />
          <Match idRef="Keywords_netherlands_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_netherlands_eu_passport_number**|
|:-----|
|dutch passport number  <br/> passport number  <br/> netherlands passport number  <br/> nederlanden paspoort nummer  <br/> paspoort  <br/> nederlanden paspoortnummer  <br/> paspoortnummer  <br/> |
   
## Poland

For details, see the section "Poland Passport Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Portugal

### Format

One letter followed by six digits with no spaces or delimiters
  
### Pattern

One letter followed by six digits:
  
- One letter (not case sensitive)
    
- Six digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_portugal_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_portugal_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_portugal_eu_passport_number" />
          <Match idRef="Keywords_portugal_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_portugal_eu_passport_number**|
|:-----|
|passport number  <br/> portuguese passport number  <br/> passport no  <br/> número do passaporte  <br/> |
   
## Romania

### Format

Eight or nine digits without spaces and delimiters
  
### Pattern

Eight or nine digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_romania_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_romania_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_romania_eu_passport_number" />
          <Match idRef="Keywords_romania_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_romania_eu_passport_number**|
|:-----|
|passport number  <br/> romanian passport number  <br/> passport no  <br/> numărul pașaportului  <br/> |
   
## Slovakia

### Format

One digit or letter followed by seven digits with no spaces or delimiters
  
### Pattern

One digit or letter (not case sensitive) followed by seven digits
  
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_slovakia_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovakia_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovakia_eu_passport_number" />
          <Match idRef="Keywords_slovakia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_slovakia_eu_passport_number**|
|:-----|
|passport number  <br/> slovakian passport number  <br/> passport no  <br/> číslo pasu  <br/> |
   
## Slovenia

### Format

Two letters followed by seven digits with no spaces or delimiters
  
### Pattern

Two letters followed by seven digits:
  
- The letter "P"
    
- One uppercase letter
    
- Seven digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_slovenia_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovenia_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovenia_eu_passport_number" />
          <Match idRef="Keywords_slovenia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_slovenia_eu_passport_number**|
|:-----|
|passport number  <br/> slovenian passport number  <br/> passport no  <br/> številka potnega lista  <br/> |
   
## Spain

### Format

An eight- or nine-character combination of letters and numbers with no spaces or delimiters
  
### Pattern

An eight- or nine-character combination of letters and numbers:
  
-  Two digits or letters 
    
- One digit or letter (optional)
    
- Six digits
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_spain_eu_passport_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_spain_eu_passport_number` is found. 
    
```
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_spain_eu_passport_number" />
          <Match idRef="Keywords_spain_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

|
|
|**Keywords_spain_eu_passport_number**|
|:-----|
|passport  <br/> spain passport  <br/> passport book  <br/> passport number  <br/> passport no  <br/> libreta pasaporte  <br/> número pasaporte  <br/> españa pasaporte  <br/> pasaporte  <br/> |
   
## Sweden

For details, see the section "Sweden Passport Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## UK

For details, see the section "U.S. / U.K. Passport Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## See also

[What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)

