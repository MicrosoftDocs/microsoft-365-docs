---
title: "EU Social Security Number or Equivalent ID"
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
description: "This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Social Security Number or Equivalent ID sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country."
---

# EU Social Security Number or Equivalent ID

This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Social Security Number (SSN) or Equivalent ID sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country.
  
## Austria

### Format

10 digits in the specified format
  
### Pattern

10 digits:
  
-  Three digits that correspond to a serial number 
    
- One check digit
    
- Six digits that correspond to the birth date (DDMMYY)
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_austria_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_austria_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_austria_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_austria_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_austria_eu_ssn_or_equivalent" />
        </Pattern>
<Pattern confidenceLevel="75">
            <IdMatch idRef="Func_austria_eu_ssn_or_equivalent" />
          </Pattern>
</Entity>
```

### Keywords

#### Keywords_austria_eu_ssn_or_equivalent

social security no
  
social security number
  
social security code
  
insurance number
  
austrian ssn
  
ssn#
  
ssn
  
insurance code
  
insurance code#
  
socialsecurityno#
  
sozialversicherungsnummer
  
soziale sicherheit kein
  
versicherungsnummer
  
## Belgium

### Format

11 digits without spaces or delimiters
  
### Pattern

11 digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_belgium_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_belgium_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_belgium_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_belgium_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_belgium_eu_ssn_or_equivalent" />
        </Pattern> 
       <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_belgium_eu_ssn_or_equivalent" />
        </Pattern>      
</Entity>
```

### Keywords

#### Keywords_belgium_eu_ssn_or_equivalent

belgian national number
  
national number
  
social security number
  
nationalnumber#
  
ssn#
  
ssn
  
nationalnumber
  
bnn#
  
bnn
  
personal id number
  
personalidnumber#
  
numéro national
  
numéro de sécurité
  
numéro d'assuré
  
identifiant national
  
identifiantnational#
  
numéronational#
  
## Croatia

### Format

11 digits without spaces and delimiters
  
### Pattern

 11 digits: 
  
-  Ten digits 
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_croatia_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_croatia_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_croatia_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_croatia_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_croatia_eu_ssn_or_equivalent" />
        </Pattern> 
       <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_croatia_eu_ssn_or_equivalent" />
        </Pattern>      
</Entity>
```

### Keywords

#### Keywords_croatia_eu_ssn_or_equivalent

personal identification number
  
master citizen number
  
national identification number
  
social security number
  
nationalnumber#
  
ssn#
  
ssn
  
nationalnumber
  
bnn#
  
bnn
  
personal id number
  
personalidnumber#
  
oib
  
osobni identifikacijski broj
  
## Czech Republic

### Format

Ten digits and a backslash in the specified pattern
  
### Pattern

Ten digits and a backslash:
  
- Six digits that correspond to the birth date (YYMMDD): 
    
- A backslash
    
- Three digits that correspond to a serial number that separates persons born on the same date
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_czech_republic_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_czech_republic_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_czech_republic_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_czech_republic_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_czech_republic_eu_ssn_or_equivalent" />
        </Pattern> 
       <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_czech_republic_eu_ssn_or_equivalent" />
        </Pattern>      
</Entity>
```

### Keywords

#### Keywords_czech_republic_eu_ssn_or_equivalent

birth number
  
national identification number
  
personal identification number
  
social security number
  
nationalnumber#
  
ssn#
  
ssn
  
national number
  
personal id number
  
personalidnumber#
  
rč
  
rodné číslo
  
rodne cislo
  
## Denmark

### Format

Ten digits and a hyphen in the specified pattern
  
### Pattern

Ten digits and a hyphen:
  
- Six digits that correspond to the birth date (DDMMYY) 
    
- A hyphen
    
- Four digits that correspond to a sequence number
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_denmark_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_denmark_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_denmark_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_denmark_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_denmark_eu_ssn_or_equivalent" />
        </Pattern> 
       <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_denmark_eu_ssn_or_equivalent" />
        </Pattern>      
</Entity>
```

### Keywords

#### Keywords_denmark_eu_ssn_or_equivalent

personal identification number
  
national identification number
  
social security number
  
nationalnumber#
  
ssn#
  
ssn
  
national number
  
personal id number
  
personalidnumber#
  
cpr-nummer
  
personnummer
  
## Finland

### Format

An 11-character combination in the specified format
  
### Pattern

An 11-character combination in the specified format:
  
-  Six digits 
    
- One instance of one of the following:
    
  - Plus symbol
    
  - Minus symbol
    
  - The letter "A" (not case-sensitive)
    
- Three digits
    
- One letter or one digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_finland_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_finland_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_finland_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_finland_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_finland_eu_ssn_or_equivalent" />
        </Pattern> 
       <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_finland_eu_ssn_or_equivalent" />
        </Pattern>      
</Entity>
```

### Keywords

#### Keywords_finland_eu_ssn_or_equivalent

identification number
  
personal id
  
identity number
  
finnish national id number
  
personalidnumber#
  
national identification number
  
id number
  
national id no.
  
national id number
  
id no
  
tunnistenumero
  
henkilötunnus
  
yksilöllinen henkilökohtainen tunnistenumero
  
ainutlaatuinen henkilökohtainen tunnus
  
identiteetti numero
  
suomen kansallinen henkilötunnus
  
henkilötunnusnumero#
  
kansallisen tunnistenumero
  
tunnusnumero
  
kansallinen tunnus numero
  
hetu
  
## France

For details, see the section "France Social Security Number (INSEE)" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Germany

For details, see the section "Germany Identity Card Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Greece

For details, see the section "Greece National ID Card" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Hungary

### Format

Nine digits without spaces and delimiters
  
### Pattern

Nine digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_hungary_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_hungary_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_hungary_eu_ssn_or_equivalent" />
        </Pattern> 
       <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_hungary_eu_ssn_or_equivalent" />
        </Pattern>      
</Entity>
```

### Keywords

#### Keywords_hungary_eu_ssn_or_equivalent

hungarian social security number
  
social security number
  
socialsecuritynumber#
  
hssn#
  
socialsecuritynno
  
hssn
  
taj
  
taj#
  
ssn
  
ssn#
  
social security no
  
áfa
  
közösségi adószám
  
általános forgalmi adó szám
  
hozzáadottérték adó
  
áfa szám
  
magyar áfa szám
  
## Portugal

For details, see the section "Portugal Citizen Card Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Spain

For details, see the section "Spain Social Security Number (SSN)" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Sweden

### Format

12 digits without spaces and delimiters
  
### Pattern

12 digits:
  
-  Eight digits that correspond to the birth date (YYYYMMDD) 
    
- Three digits that correspond to a serial number where: 
    
  - The last digit in the serial number indicates gender by the assignment of an odd number for male and an even number for female
    
  - Up to 1990, the assignment of serial number corresponded to the county where the bearer of the number was born or (if born before 1947) where he/she had been living, according to tax records, on January 1, 1947, with a special code (usually 9 as the 7th digit) for immigrants 
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_sweden_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
- A keyword from  `Keywords_sweden_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_sweden_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```
 <!-- EU SSN or Equivalent Number -->
<Entity id="d24e32a4-c0bb-4ba8-899d-6303b95742d9" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_sweden_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_sweden_eu_ssn_or_equivalent" />
        </Pattern> 
       <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_sweden_eu_ssn_or_equivalent" />
        </Pattern>      
</Entity>
```

### Keywords

#### Keywords_sweden_eu_ssn_or_equivalent

personal id number
  
identification number
  
personal id no
  
identity no
  
identification no
  
personal identification no
  
personnummer id
  
personligt id-nummer
  
unikt id-nummer
  
personnummer
  
identifikationsnumret
  
personnummer#
  
identifikationsnumret#
  
## See also

[What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)

