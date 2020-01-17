---
title: "EU Tax Identification Number"
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 8/17/2018
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
description: "This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Tax Identification Number sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country."
---

# EU Tax Identification Number

This topic shows what a data loss prevention (DLP) policy looks for when it detects the EU Tax Identification Number (TIN) sensitive information type. This sensitive information type defines different patterns, keywords, and other evidence for each country.
  
## Austria

### Format

Nine digits with optional hyphen and forward slash
  
### Pattern

Nine digits with optional hyphen and forward slash:
  
-  Two digits 
    
- A hyphen (optional)
    
- Three digits
    
- A forward slash (optional)
    
- Four digits
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_austria_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_austria_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_austria_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_austria_eu_tax_file_number" />
          <Match idRef="Keywords_austria_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_austria_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_austria_eu_tax_file_number

tax number
  
number
  
tax registration number
  
tax id
  
st.nr.
  
steuernummer
  
## Belgium

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits:
  
- Two digits
    
- A "0" or "1"
    
- One digit
    
- A "0" or "1" or "2" or "3" 
    
- Six digits
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_belgium_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_belgium_eu_tax_file_number` is found. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_belgium_eu_tax_file_number" />
          <Match idRef="Keywords_belgium_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_belgium_eu_tax_file_number

tax number
  
national registration number
  
tax registration number
  
tax id
  
nif
  
nif#
  
numéro de registre national
  
numéro d'identification fiscale
  
## Bulgaria

### Format

Ten digits without spaces and delimiters
  
### Pattern

10 digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_bulgaria_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_bulgaria_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_bulgaria_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_bulgaria_eu_tax_file_number" />
          <Match idRef="Keywords_bulgaria_eu_tax_file_number" />
        </Pattern>
 <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_bulgaria_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_bulgaria_eu_tax_file_number

bucn
  
uniform civil number
  
bucn#
  
uniformcivilnumber#
  
uniform civil id
  
uniform civil no
  
egn
  
bulgarian uniform civil number
  
uniformcivilno#
  
egn#
  
униформ граждански номер
  
униформ id
  
униформ граждански id
  
униформ граждански не
  
## Croatia

### Format

11 digits with no spaces or delimiters
  
### Pattern

11 digits:
  
- Ten digits, randomly chosen
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_croatia_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_croatia_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_croatia_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_croatia_eu_tax_file_number" />
          <Match idRef="Keywords_croatia_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_croatia_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_croatia_eu_tax_file_number

tax number
  
tax
  
tax id
  
oid
  
oid#
  
porezni broj
  
## Cyprus

### Format

Eight digits and one letter in the specified pattern
  
### Pattern

Eight digits and one letter:
  
-  A "0" 
    
- Seven digits
    
- One letter (not case-sensitive)
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_cyprus_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_cyprus_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_cyprus_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_cyprus_eu_tax_file_number" />
          <Match idRef="Keywords_cyprus_eu_tax_file_number" />
        </Pattern>
Pattern confidenceLevel="75">
          <IdMatch idRef="Func_cyprus_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_cyprus_eu_tax_file_number

tax number
  
tax
  
tax id
  
tax identification code
  
tic
  
tic#
  
αριθμός φορολογικού μητρώου
  
φορολογική ταυτότητα
  
κωδικός φορολογικού μητρώου
  
## Czech Republic

### Format

Nine or ten digits with an optional backslash
  
### Pattern

Nine or ten digits with an optional backslashl:
  
- Six digits 
    
- A backslash (optional)
    
- Three or four digits
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_czech_republic_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_czech_republic_eu_tax_file_number` is found. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_tax_file_number" />
          <Match idRef="Keywords_czech_republic_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_czech_republic_eu_tax_file_number

tax number
  
tax
  
tax id
  
personal number
  
daňové číslo
  
osobní číslo
  
## Denmark

### Format

Ten digits containing a hyphen
  
### Pattern

Ten digits containing a hyphenl:
  
-  Six digits that correspond to the birth date (DDMMYY) 
    
- A hyphen
    
- Four digits that correspond to a sequence number where the first digit corresponds to the century of birth and the last digit corresponds to the individual's gender (odd for male and even for female)
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_denmark_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_denmark_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_denmark_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_denmark_eu_tax_file_number" />
          <Match idRef="Keywords_denmark_eu_tax_file_number" />
        </Pattern> 
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_denmark_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_denmark_eu_tax_file_number

tax number
  
tax
  
tax id
  
cpr number
  
cpr#
  
skat nummer
  
skat id
  
## Estonia

### Format

11 digits with no spaces or delimiters
  
### Pattern

11 digits:
  
-  One digit that corresponds to gender and century of birth where an odd number indicates male and the even number indicates female as follows: 1, 2 for the 19th century; 3, 4 for the 20th century; and 5, 6 for the 21st century 
    
- Six digits that correspond to birth date (YYMMDD)
    
- Three digits that correspond to a serial number separating persons born on the same date
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_estonia_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_estonia_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_estonia_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_estonia_eu_tax_file_number" />
          <Match idRef="Keywords_estonia_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_estonia_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_estonia_eu_tax_file_number

tax number
  
tax
  
tax id
  
personal code
  
maksunumber
  
maksu id
  
isikukood
  
## Finland

### Format

An 11-character combination of digits, letters, and plus and minus sign
  
### Pattern

An 11-character combination of digits, letters, and plus and minus sign:
  
- Six digits
    
- One of the following: a plus sign, a minus sign, or the letter "A" (not case sensitive) where the plus sign means born between 1800-1899, the minus sign means born between 1900-1999, and "A" means born 2000 and after
    
- Three digits
    
- One letter or one number
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_finland_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_finland_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_finland_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_finland_eu_tax_file_number" />
          <Match idRef="Keywords_finland_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_finland_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_finland_eu_tax_file_number

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
  
## France

### Format

13 digits for individuals and nine digits for entities
  
### Pattern

13 digits for individuals:
  
- One digit that must be 0, 1, 2, or 3
    
- 12 digits
    
Nine digits for entities
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_france_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_france_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_france_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_france_eu_tax_file_number" />
          <Match idRef="Keywords_france_eu_tax_file_number" />
        </Pattern>
 <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_france_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_france_eu_tax_file_number

tax identification number
  
tax number
  
tax id
  
numéro d'identification fiscale
  
## Germany

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits :
  
-  Ten digits 
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_germany_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_germany_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_germany_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_germany_eu_tax_file_number" />
          <Match idRef="Keywords_germany_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_germany_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_germany_eu_tax_file_number

tax number
  
tax no.
  
taxno#
  
taxnumber#
  
taxnumber
  
tax id
  
taxid#
  
tax identification number
  
tax identification no.
  
steuernummer
  
steuer id
  
steueridentifikationsnummer
  
## Greece

### Format

Nine digits without spaces and delimiters
  
### Pattern

Nine digits
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_greece_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_greece_eu_tax_file_number` is found. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_tax_file_number" />
          <Match idRef="Keywords_greece_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_greece_eu_tax_file_number

afm
  
tin
  
tax id no.
  
tax id no
  
tax identification number
  
tax registry number
  
tax registry no.
  
afm#
  
tin#
  
taxidno#
  
taxregistryno#
  
αριθμός φορολογικού μητρώου
  
aφμ
  
aφμ αριθμός
  
φορολογικού μητρώου νο.
  
τον αριθμό φορολογικού μητρώου
  
## Hungary

### Format

Ten digits with no spaces or delimiters
  
### Pattern

Ten digits:
  
-  One digit that must be "8" 
    
- Five digits that correspond to the number of days between the date 01/01/1867 and the date of the birth of the individual
    
- Three digits that correspond to the number generated by chance to differentiate individuals born on the same day
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_hungary_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_hungary_eu_tax_file_number" />
          <Match idRef="Keywords_hungary_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_hungary_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_hungary_eu_tax_file_number

hungarian tax identification number
  
hungarian tin
  
tax id number
  
vat number
  
tax authority no
  
tax id tax identity number
  
taxidnumber#
  
tin#
  
hungatiantin#
  
tax identification no
  
taxidno#
  
adóazonosító szám
  
adószám
  
adóhatóság szám
  
## Ireland

### Format

Seven digits followed by a letter with no spaces or delimiters
  
### Pattern

Seven digits followed by a letter:
  
-  Seven digits 
    
- One letter (not case-sensitive)
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_ireland_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_ireland_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_ireland_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_ireland_eu_tax_file_number" />
          <Match idRef="Keywords_ireland_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_ireland_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_ireland_eu_tax_file_number

public service no
  
personal public service no
  
pps no
  
personal service no
  
pps service no
  
ppsno#
  
irish pps no
  
publicserviceno#
  
personal public service number
  
uimhir phearsanta seirbhíse poiblí
  
pps uimh
  
uimhir aitheantais phearsanta
  
## Italy

### Format

16 letters and digits in the specified pattern
  
### Pattern

16 letters and digits:
  
-  Three letters that correspond to the first three consonants in the family name 
    
- Three letters that correspond to the first, third, and fourth consonants in the first name
    
- Two digits that correspond to the last digits of the birth year
    
- One digit that corresponds to the month of birth—letters are used in alphabetical order, but only the letters A to E, H, L, M, P, R to T are used (thus, January is A and October is R)
    
- Two digits that correspond to the day of the month of birth where 40 is added to the day of birth for females to differentiate from males
    
- Four digits that correspond to an area code specific to the municipality where the person was born—country-wide codes are used for foreign countries
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_italy_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_italy_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_italy_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_italy_eu_tax_file_number" />
          <Match idRef="Keywords_italy_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_italy_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_italy_eu_tax_file_number

tax number
  
tax no.
  
taxno#
  
taxnumber#
  
taxnumber
  
tax id
  
taxid#
  
fiscal code
  
codice fiscale
  
## Latvia

### Format

11 digits with no spaces or delimiters
  
### Pattern

11 digits in the specified pattern
  
-  Six digits that correspond to the date of birth (DDMMYY) 
    
- One digit that corresponds to the century of birth where "0" corresponds to 19th century, "1" corresponds to 20th century, and "2"corresponds to 21st century
    
- Four digits
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_latvia_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_latvia_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_latvia_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_latvia_eu_tax_file_number" />
          <Match idRef="Keywords_latvia_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_latvia_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_latvia_eu_tax_file_number

tax number
  
tax no.
  
taxno#
  
taxnumber#
  
taxnumber
  
tax id
  
taxid#
  
tax identification number
  
tax identification no.
  
nodokļa numurs
  
nodokļu identifikācijas numurs
  
nodokļu identifikācija numurs
  
## Lithuania

### Format

11 digits without spaces or delimiters
  
### Pattern

11 digits
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_lithuania_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_lithuania_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_lithuania_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_lithuania_eu_tax_file_number" />
          <Match idRef="Keywords_lithuania_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_lithuania_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_lithuania_eu_tax_file_number

tax number
  
tax no.
  
tax no#
  
taxnumber#
  
taxnumber
  
tax id
  
taxid#
  
tax identification number
  
tax identification no.
  
mokesčių id
  
mokesčių numeris
  
mokesčių identifikavimas numeris
  
## Luxemburg

### Format

13 digits with no spaces or delimiters
  
### Pattern

13 digits:
  
-  11 digits 
    
- Two check digits
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_luxemburg_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_luxemburg_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_luxemburg_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_luxemburg_eu_tax_file_number" />
          <Match idRef="Keywords_luxemburg_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_luxemburg_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_luxemburg_eu_tax_file_number

tax number
  
tax no.
  
taxno#
  
taxnumber#
  
taxnumber
  
tax id
  
taxid#
  
tax identification number
  
tax identification no.
  
steuernummer
  
steuer id
  
steueridentifikationsnummer
  
## Malta

### Format

For Maltese nationals: 7 digits and one letter in the specified pattern
  
Non-Maltese nationals and Maltese entities: 9 digits
  
### Pattern

Maltese nationals: 7 digits and one letter
  
-  Seven digits 
    
- One letter (not case-sensitive)
    
Non-Maltese nationals and Maltese entities: 9 digits
  
-  Nine digits 
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_malta_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_malta_eu_tax_file_number` is found. 
    
A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_malta_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_malta_eu_tax_file_number" />
          <Match idRef="Keywords_malta_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_malta_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_malta_eu_tax_file_number

tax number
  
tax no.
  
taxno#
  
taxnumber#
  
taxnumber
  
tax id
  
taxid#
  
tax identification number
  
tax identification no.
  
numru tat-taxxa
  
id tat-taxxa
  
numru ta 'identifikazzjoni tat-taxxa
  
## Netherlands

### Format

Nine digits without spaces or delimiters
  
### Pattern

Nine digits 
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_netherlands_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_netherlands_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_netherlands_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_netherlands_eu_tax_file_number" />
          <Match idRef="Keywords_netherlands_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_netherlands_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_netherlands_eu_tax_file_number

netherlands tax identification number
  
netherlands tax identification
  
netherland's tax identification number
  
netherland's tax identification
  
tax identification number
  
dutch tax id
  
dutch tax identification number
  
tax id
  
tax id#
  
tax number
  
tax no#
  
tax#
  
tin
  
tin#
  
netherlands tin
  
netherland's tin
  
nederlands belasting identificatienummer
  
identificatienummer van belasting
  
identificatienummer belasting
  
nederlands belasting identificatie
  
nederlands belasting id nummer
  
nederlands belastingnummer
  
btw nummer
  
nederlandse belasting identificatie
  
## Poland

### Format

Eleven digits with no spaces or delimiters
  
### Pattern

Eleven digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_poland_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_poland_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_poland_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_poland_eu_tax_file_number" />
          <Match idRef="Keywords_poland_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_poland_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_poland_eu_tax_file_number

tax number
  
tax no.
  
taxno#
  
taxnumber#
  
taxnumber
  
nip
  
nip#
  
tax id
  
tax id#
  
nip id
  
nip id#
  
tax identification number
  
tax identification no.
  
vat number
  
vat no.
  
vatno#
  
vat id
  
vat id#
  
numer identyfikacji podatkowej
  
polski numer identyfikacji podatkowej
  
numeridentyfikacjipodatkowej#
  
## Portugal

### Format

Nine digits with no spaces or delimiters
  
### Pattern

Nine digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_portugal_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_portugal_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_portugal_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_portugal_eu_tax_file_number" />
          <Match idRef="Keywords_portugal_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_portugal_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_portugal_eu_tax_file_number

tax number
  
tax no.
  
taxno#
  
taxnumber#
  
taxnumber
  
nif
  
nif#
  
numero fiscal
  
número de identificação fiscal
  
## Romania

### Format

13 digits with no spaces or delimiters
  
### Pattern

13 digits
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_romania_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_romania_eu_tax_file_number` is found. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_romania_eu_tax_file_number" />
          <Match idRef="Keywords_romania_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_romania_eu_tax_file_number

tax id
  
tax id number
  
tax file no
  
tax file number
  
tax no
  
tax number
  
taxid#
  
taxno#
  
id-ul taxei
  
numărul de identificare fiscală
  
## Slovakia

### Format

10 digits with no spaces or delimiters
  
### Pattern

10 digits
  
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_slovakia_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovakia_eu_tax_file_number` is found. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovakia_eu_tax_file_number" />
          <Match idRef="Keywords_slovakia_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_slovakia_eu_tax_file_number

tax id
  
tax id number
  
tin id
  
tin no
  
slovakian tin id
  
tin
  
tax file no
  
tax file number
  
tax no
  
tax number
  
taxid#
  
taxno#
  
daňové identifikačné číslo
  
daňové číslo
  
daňové číslo súboru
  
## Slovenia

### Format

Eight digits with no spaces or delimiters
  
### Pattern

Eight digits
  
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_slovenia_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_slovenia_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_slovenia_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_nation_eu_tax_file_number" />
          <Match idRef="Keywords_nation_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_slovenia_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_slovenia_eu_tax_file_number

tax id
  
tax id number
  
tin id
  
tin no
  
slovenian tin id
  
tin
  
tax file no
  
tax file number
  
tax no
  
tax number
  
taxid#
  
taxno#
  
identifikacijska številka davka
  
davčna številka
  
številka davčne datoteke
  
## Spain

### Format

Seven or eight digits and one or two letters in the specified pattern
  
### Pattern

Spanish Natural Persons with a Spain National Identity Card:
  
-  Eight digits 
    
- One uppercase letter (case-sensitive) 
    
Non-resident Spaniards without a Spain National Identity Card
  
- One uppercase letter "L" (case-sensitive)
    
- Seven digits
    
- One uppercase letter (case-sensitive) 
    
Resident Spaniards under the age of 14 years without a Spain National Identity Card :
  
- One uppercase letter"K" (case-sensitive)
    
-  Seven digits 
    
- One uppercase letter (case-sensitive)
    
Foreigners with a Foreigner's Identification Number
  
- One uppercase letter that is "X", "Y", or "Z" (case-sensitive) 
    
- Seven digits
    
- One uppercase letter (case-sensitive) 
    
Foreigners without a Foreigner's Identification Number
  
- One uppercase letter that is "M" (case-sensitive) 
    
- Seven digits
    
- One uppercase letter (case-sensitive) 
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_spain_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_spain_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_spain_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_tax_file_number" />
          <Match idRef="Keywords_spain_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_spain_eu_tax_file_number

tax id
  
tax id number
  
cif id
  
cif no
  
spanish cif id
  
cif
  
tax file no
  
spanish cif number
  
tax file number
  
spanish cif no
  
tax no
  
tax number
  
taxid#
  
taxno#
  
cifid#
  
spanishcifid#
  
spanishcifno#
  
número de contribuyente
  
número de impuesto corporativo
  
número de identificación fiscal
  
cif número
  
cifnúmero#
  
## Sweden

### Format

Ten digits and a symbol in the specified pattern
  
### Pattern

Ten digits and a symbol:
  
-  Six digits that correspond to the birth date (YYMMDD) 
    
- A plus sign, minus sign, or backslash
    
- Three digits that make the identification number unique where: 
    
  - For numbers issued before 1990, the seventh and eighth digit identify the county of birth or foreign-born people
    
  - The digit in the ninth position indicates gender by either odd for male or even for female
    
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_sweden_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_sweden_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_sweden_eu_tax_file_number` finds content that matches the pattern. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_sweden_eu_tax_file_number" />
          <Match idRef="Keywords_sweden_eu_tax_file_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_sweden_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_sweden_eu_tax_file_number

tax id
  
tax id no.
  
tax id number
  
tax identification
  
tax identification#
  
tax no.
  
tax#
  
taxid#
  
tax file
  
tax file no.
  
personal id number
  
skatt id nummer
  
skatt identifikation
  
personnummer
  
## UK

### Format

Unique Taxpayer Reference (UTR): 10 digits without spaces and delimiters
  
National Insurance Number (NINO): For details, see the section "U.K. National Insurance Number (NINO)" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
### Pattern

Unique Taxpayer Reference (UTR): 10 digits
  
National Insurance Number (NINO): For details, see the section "U.K. National Insurance Number (NINO)" in [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
### Checksum

Yes
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_uk_eu_tax_file_number` finds content that matches the pattern. 
    
- A keyword from  `Keywords_uk_eu_tax_file_number` is found. 
    
```
 <!-- EU Tax File Number -->
<Entity id="e09c07d3-66e5-4783-989d-49ac62748f5f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_uk_eu_tax_file_number" />
          <Match idRef="Keywords_uk_eu_tax_file_number" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_uk_eu_tax_file_number

tax id
  
tax id no.
  
tax id number
  
tax identification
  
tax identification#
  
tax no.
  
tax#
  
taxid#
  
tax file
  
tax file no.
  
## See also

[What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)

