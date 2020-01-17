---
title: "EU National Identification Number"
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
description: "This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU National Identification Number sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country."
---

# EU National Identification Number

This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU National Identification Number sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country.
  
## Austria

### Format

A 24-character combination of letters, digits, and special characters
  
### Pattern

24 characters:
  
-  22 letters (not case-sensitive), digits, backslashes, forward slashes, or plus signs 
    
- Two letters (not case-sensitive), digits, backslashes, forward slashes, plus signs, or equal signs
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_austria_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_austria_eu_national_id_card` is found. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_national_id_card" />
          <Match idRef="Keywords_austria_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_austria_eu_national_id_card

austrian identity number
  
national identity number
  
identity number
  
national id
  
personalausweis republik österreich
  
## Belgium

For details, see the section "Belgium National Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Bulgaria

### Format

Ten digits without spaces and delimiters
  
### Pattern

Ten digits without spaces and delimiters
  
-  Six digits that correspond to the birth date (YYMMDD) 
    
- Two digits that correspond to the birth order
    
- One digit that corresponds to gender: An even digit for male and an odd digit for female
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_bulgaria_national_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_bulgaria_national_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_bulgaria_national_number` finds content that matches the pattern. 
    
```
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_bulgaria_national_number" />
          <Match idRef="Keywords_bulgaria_national_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_bulgaria_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_bulgaria_national_number

egn
  
egn#
  
bulgarian national number
  
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
  
единен граждански номер
  
edinen grazhdanski nomer
  
егн
  
егн#
  
## Croatia

For details, see the section "Croatia Identity Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Cyprus

### Format

Ten digits without spaces and delimiters
  
### Pattern

 Ten digits 
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_cyprus_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_cyprus_eu_national_id_card` is found. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_national_id_card" />
          <Match idRef="Keywords_cyprus_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_cyprus_eu_national_id_card

id card number
  
national identification number
  
personal id number
  
identity card number
  
ταυτοτητασ
  
## Czech Republic

For details, see the section "Czech National Identity Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Denmark

For details, see the section "Denmark Personal Identification Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Estonia

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits:
  
- One digit that corresponds to sex and century of birth (odd number male, even number female; 1-2: 19th century; 3-4: 20th century; 5-6: 21st century)
    
- Six digits that correspond to date of birth (YYMMDD)
    
- Three digits that correspond to a serial number separating persons born on the same date
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_estonia_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_estonia_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_estonia_eu_national_id_card` finds content that matches the pattern. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_estonia_eu_national_id_card" />
          <Match idRef="Keywords_estonia_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_estonia_eu_national_id_card" />
</Pattern>
</Entity>
```

### Keywords

#### Keywords_estonia_eu_national_id_card

personal identification code
  
personal identification number
  
national identification number
  
national number
  
personal id number
  
personalidnumber#
  
ik
  
isikukood
  
id-kaart
  
## Finland

For details, see the section "Finland National ID" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## France

For details, see the section "France National ID Card (CNI)" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Germany

For details, see the section "Germany Identity Card Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Greece

For details, see the section "Greece National ID Card" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Hungary

### Format

11 digits
  
### Pattern

11 digits:
  
-  One digit that corresponds to gender (1-male, 2-female, other numbers are also possible for citizens born before 1900 or citizens with double citizenship) 
    
- Six digits that correspond to birth date (YYMMDD)
    
- Three digits that correspond to a serial number
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_hungary_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_national_id_card` finds content that matches the pattern. 
    
```
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_hungary_eu_national_id_card" />
          <Match idRef="Keywords_hungary_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_hungary_eu_national_id_card" />
</Pattern>
</Entity>
```

### Keywords

#### Keywords_hungary_eu_national_id_card

personal identification number
  
identification number
  
personal id number
  
személyazonosító igazolvány
  
## Ireland

### Format

A nine-character combination of letters, digits, and a space in the specified pattern
  
### Pattern

A nine-character combination of letters, digits, and a space in the specified pattern
  
From 01 January 2013 to now:
  
-  Seven digits 
    
- One check digit
    
- One space or the uppercase letter "W" (Case sensitive)
    
Prior to 01 January 2013:
  
-  Seven digits 
    
- One check digit
    
- One space or an uppercase letter (Case sensitive)
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function finds content that matches the pattern.
    
- A keyword from is found.
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function finds content that matches the pattern.
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_ireland_eu_national_id_card" />
          <Match idRef="Keywords_ireland_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_ireland_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_ireland_eu_national_id_card

personal public service number
  
pps no
  
revenue and social insurance number
  
rsi no
  
personal identification number
  
identification number
  
personal id number
  
uimhir phearsanta seirbhíse poiblí
  
uimh. psp
  
## Italy

### Format

A 16-character combination of letters and digits in the specified pattern
  
### Pattern

A 16-character combination of letters and digits:
  
- Three letters that correspond to the first three consonants in the family name
    
- Three letters that correspond to the first, third, and fourth consonants in the first name
    
- Two digits that correspond to the last digits of the birth year
    
- One letter that corresponds to the letter for the month of birth—letters are used in alphabetical order, but only the letters A to E, H, L, M, P, R to T are used (thus, January is A and October is R)
    
- Two digits that correspond to the day of the month of birth—in order to differentiate between genders, 40 is added to the day of birth for women
    
- Four digits that corresponds to the area code specific to the municipality where the person was born (country-wide codes are used for foreign countries)
    
- One parity digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_italy_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_italy_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_italy_eu_national_id_card` finds content that matches the pattern. 
    
```
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_italy_eu_national_id_card" />
          <Match idRef="Keywords_italy_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_italy_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_italy_eu_national_id_card

personal code
  
personal code number
  
personal certificate number
  
fiscal code
  
personalcodeno#
  
personal id number
  
personal id code
  
codice personale
  
numero certificato personale
  
numero personale
  
numero id personale
  
codice id personale
  
codice fiscale
  
## Latvia

### Format

11 digits and a hyphen in the specified format
  
### Pattern

11 digits and a hyphen:
  
-  Six digits that correspond to the birth date (DDMMYY) 
    
- A hyphen
    
- One digit that corresponds to the century of birth ("0" for 19th century, "1" for 20th century, and "2" for 21st century)
    
- Four digits, randomly generated
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_latvia_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_latvia_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_latvia_eu_national_id_card` finds content that matches the pattern. 
    
```
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_latvia_eu_national_id_card" />
          <Match idRef="Keywords_latvia_eu_national_id_card" />
        </Pattern>
 <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_latvia_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_latvia_eu_national_id_card

personal code
  
personal code number
  
personal certificate number
  
personalcodeno#
  
personal id number
  
personal id code
  
personas kods
  
## Lithuania

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits without spaces and delimiters:
  
- One digit that corresponds to the person's gender and century of birth
    
-  Six digits that correspond to birth date (YYMMDD) 
    
- Three digits that correspond to the serial number of the date of birth
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_lithuania_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_lithuania_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_lithuania_eu_national_id_card` finds content that matches the pattern. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_lithuania_eu_national_id_card" />
          <Match idRef="Keywords_lithuania_eu_national_id_card" />
        </Pattern> 
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_lithuania_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_lithuania_eu_national_id_card

personal numeric code
  
unique identification number
  
citizen service number
  
unique identity number
  
uniqueidentityno#
  
personal code.
  
asmeninis skaitmeninis kodas
  
unikalus identifikavimo numeris
  
piliečio paslaugos numeris
  
unikalus identifikavimo kodas
  
asmens kodas.
  
## Luxemburg

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits
  
- One digit that corresponds to the person's gender and century of birth
    
-  Six digits that correspond to birth date (YYMMDD) 
    
- Three digits that correspond to the serial number of the date of birth
    
- One check digit
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_luxemburg_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_luxemburg_eu_national_id_card` is found. 
    
```
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_luxemburg_eu_national_id_card" />
          <Match idRef="Keywords_luxemburg_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_luxemburg_eu_national_id_card

personal id
  
personal id number
  
personalidno#
  
unique id number
  
personalidnumber#
  
unique id key
  
personal id code
  
uniqueidkey#
  
individual code
  
individual id
  
eindeutige id-nummer
  
eindeutige id
  
id personnelle
  
numéro d'identification personnel
  
idpersonnelle#
  
persönliche identifikationsnummer
  
eindeutigeid#
  
## Malta

### Format

Seven digits followed by one letter
  
### Pattern

Seven digits followed by one letter:
  
-  Seven digits 
    
- One uppercase letter (case sensitive)
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_malta_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_malta_eu_national_id_card` is found. 
    
A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_malta_eu_national_id_card` finds content that matches the pattern. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_national_id_card" />
          <Match idRef="Keywords_malta_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_malta_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_malta_eu_national_id_card

personal numeric code
  
unique identification number
  
citizen service number
  
unique identity number
  
uniqueidentityno#
  
kodiċi numerali personali
  
numru ta 'identifikazzjoni uniku
  
numru tas-servizz taċ-ċittadin
  
numru ta' identità uniku
  
## Netherlands

### Format

Nine digits without spaces or delimiters
  
### Pattern

Nine digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_netherlands_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from is found.
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_netherlands_eu_national_id_card` finds content that matches the pattern. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_netherlands_eu_national_id_card" />
          <Match idRef="Keywords_netherlands_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_netherlands_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_netherlands_eu_national_id_card

personal numeric code
  
unique identification number
  
citizen service number
  
unique identity number
  
uniqueidentityno#
  
bsn
  
bsn#
  
persoonlijke numerieke code
  
uniek identificatienummer
  
burgerservicenummer
  
uniek identiteitsnummer
  
## Poland

For details, see the section "Poland National ID (PESEL)" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Portugal

For details, see the section "Portugal Citizen Card Number" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Romania

### Format

13 digits without spaces and delimiters
  
### Pattern

13 digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_romania_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_romania_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_romania_eu_national_id_card` finds content that matches the pattern. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_romania_eu_national_id_card" />
          <Match idRef="Keywords_romania_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_romania_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_romania_eu_national_id_card

personal numeric code
  
unique identification number
  
cnp
  
cnp#
  
pin
  
pin#
  
insurance number
  
insurancenumber#
  
unique identity number
  
uniqueidentityno#
  
cod numeric personal
  
cod identificare personal
  
cod unic identificare
  
număr personal unic
  
număr identitate
  
număr identificare personal
  
număridentitate#
  
codnumericpersonal#
  
numărpersonalunic#
  
## Slovakia

### Format

Ten digits containing one backslash
  
### Pattern

Ten digits containing one backslash:
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_slovakia_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovakia_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_slovakia_eu_national_id_card` finds content that matches the pattern. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_slovakia_eu_national_id_card" />
          <Match idRef="Keywords_slovakia_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_slovakia_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_slovakia_eu_national_id_card

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
  
## Slovenia

### Format

13 digits without spaces or delimiters
  
### Pattern

13 digits in the specified pattern:
  
-  Seven digits that correspond to the birth date (DDMMLLL) where "LLL" corresponds to the last three digits of the birth year 
    
- Two digits that correspond to the area of birth
    
- Three digits that correspond to a combination of gender and serial number for persons born on the same day (000-499 for male and 500-999 for female)
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_slovenia_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovenia_eu_national_id_card` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_slovenia_eu_national_id_card` finds content that matches the pattern. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_slovenia_eu_national_id_card" />
          <Match idRef="Keywords_slovenia_eu_national_id_card" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_slovenia_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_slovenia_eu_national_id_card

personal numeric code
  
unique identification number
  
unique registration number
  
unique identity number
  
uniqueidentityno#
  
unique master citizen number
  
edinstvena identifikacijska številka
  
uniqueidentityno #
  
edinstvena številka glavnega državljana
  
emšo
  
## Spain

### Format

Seven digits followed by one character
  
### Pattern

Seven digits followed by one character
  
- Seven digits
    
- One digit or letter (not case-sensitive)
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_spain_eu_national_id_card` finds content that matches the pattern. 
    
- A keyword from  `Keywords_spain_eu_national_id_card"` is found. 
    
```
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_spain_eu_national_id_card" />
          <Match idRef="Keywords_spain_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_spain_eu_national_id_card

dni
  
national identification number
  
national identity number
  
insurance number
  
personal identification number
  
national identity
  
personal identity no
  
unique identity number
  
nationalidno#
  
uniqueid#
  
dni#
  
nationalid#
  
nie#
  
nie
  
nienúmero#
  
nie número
  
documento nacional de identidad
  
identidad único
  
número nacional identidad
  
dni número
  
dninúmero#
  
identidadúnico#
  
## Sweden

For details, see the section "Sweden National ID" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## See also

[What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)

