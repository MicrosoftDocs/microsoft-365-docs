---
title: "Sensitive information type entity definitions"
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
localization_priority: Normal
ms.collection: 
- M365-security-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Data loss prevention (DLP) in the Security &amp; Compliance Center includes over 200 sensitive information types that are ready for you to use in your DLP policies. This article lists all of these sensitive information types and shows what a DLP policy looks for when it detects each type."
---

# Sensitive information type entity definitions

Data loss prevention (DLP) in the Compliance Center includes many sensitive information types that are ready to use in your DLP policies. This article lists all of these sensitive information types and shows what a DLP policy looks for when it detects each type. To learn more about sensitive information types, see [Sensitive information types](sensitive-information-type-learn-about.md)

## ABA routing number

### Format

nine digits that may be in a formatted or unformatted pattern

### Pattern

- two digits in the ranges 00-12, 21-32, 61-72, or 80
- two digits
- an optional hyphen
- four digits
- an optional hyphen
- a digit


### Checksum

Yes

### Definition

A policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_aba_routing finds content that matches the pattern.
- A keyword from Keyword_ABA_Routing is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_aba_routing finds content that matches the pattern.

```xml
    <!-- ABA Routing Number -->
    <Entity id="cb353f78-2b72-4c3c-8827-92ebe4f69fdf" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_aba_routing" />
        <Match idRef="Keyword_ABA_Routing" />
      </Pattern>
      <Pattern confidenceLevel="65">
        <IdMatch idRef="Func_aba_routing" />
      </Pattern>
    </Entity>
```


### Keywords

#### Keyword_aba_routing

- aba number
- aba#
- aba
- abarouting#
- abaroutingnumber
- americanbankassociationrouting#
- americanbankassociationroutingnumber
- bankrouting#
- bankroutingnumber
- routing #
- routing no
- routing number
- routing transit number
- routing#
- RTN


## Argentina national identity (DNI) number

### Format

Eight digits with or without periods

### Pattern

Eight digits:
- two digits
- an optional period
- three digits
- an optional period
- three digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_argentina_national_id finds content that matches the pattern.
- A keyword from Keyword_argentina_national_id is found.

```xml
<!-- Argentina National Identity (DNI) Number -->
<Entity id="eefbb00e-8282-433c-8620-8f1da3bffdb2" recommendedConfidence="75" patternsProximity="300">
   <Pattern confidenceLevel="75">
      <IdMatch idRef="Regex_argentina_national_id"/>
      <Match idRef="Keyword_argentina_national_id"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_argentina_national_id

- Argentina National Identity number 
- cedula 
- cédula 
- dni 
- documento nacional de identidad 
- documento número 
- documento numero 
- registro nacional de las personas 
- rnp 
   
## Argentina Unique Tax Identification Key (CUIT/CUIL)

### Format

Eleven digits with dash

### Pattern

Eleven digits with a dash:
- two digits in 20, 23, 24, 27, 30, 33 or 34
- a hyphen (-)
- eight digits
- a hyphen (-)
- one check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_Argentina_Unique_Tax_Key` finds content that matches the pattern.
- A keyword from `Keyword_Argentina_Unique_Tax_Key` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_Argentina_Unique_Tax_Key` finds content that matches the pattern.

```xml
    <!-- Argentina Unique Tax Identification Key (CUIT/CUIL) -->
      <Entity id="98da3da1-9199-4571-b7c4-b6522980b507" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_Argentina_Unique_Tax_Key" />
          <Match idRef="Keyword_Argentina_Unique_Tax_Key" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_Argentina_Unique_Tax_Key" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_Argentina_Unique_Tax_Key

- Clave Unica de Identificacion Tributaria
- CUIT
- unique code of labour identification 
- Clave Única de Identificación Tributaria
- unique labour identification code
- CUIL
- Unique Tax Identification Key
- Unique Labour Identification Key
- Unique Key of Labour Identification
- Unique Work Identification Code
- Unique Code of Work Identification
- Unique Work Identification Key
- Unique Key of Work Identification
- Unique Code of Tax Identification
- Unique Key of Tax Identification
- Unique Labor Identification Code
- Unique Code of Labor Identification
- Unique Labor Identification Key
- Unique Key of Labor Identification
- tax ID
- taxID#
- taxId
- taxidnumber
- tax number
- tax no
- tax #
- tax#
- taxpayer ID
- taxpayer number
- taxpayer no
- taxpayer #
- taxpayer#
- tax identity
- tax identification
- Número de Identificación Fiscal
- número de contribuyente
   
   
## Australia bank account number

### Format

six to ten digits with or without a bank state branch number

### Pattern

Account number is 6 to 10 digits.

Australia bank state branch number:
- three digits 
- a hyphen 
- three digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_australia_bank_account_number finds content that matches the pattern.
- A keyword from Keyword_australia_bank_account_number is found.
- The regular expression Regex_australia_bank_account_number_bsb finds content that matches the pattern.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_australia_bank_account_number finds content that matches the pattern.

- A keyword from Keyword_australia_bank_account_number is found.

```xml
<!-- Australia Bank Account Number -->
<Entity id="74a54de9-2a30-4aa0-a8aa-3d9327fc07c7" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Regex_australia_bank_account_number" />
        <Match idRef="Keyword_australia_bank_account_number" />
        <Match idRef="Regex_australia_bank_account_number_bsb" />
  </Pattern>
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_australia_bank_account_number" />
        <Match idRef="Keyword_australia_bank_account_number" />
  </Pattern>
 </Entity>
```

### Keywords

#### Keyword_australia_bank_account_number

- swift bank code
- correspondent bank
- base currency
- usa account
- holder address
- bank address
- information account
- fund transfers
- bank charges
- bank details
- banking information
- full names
- iaea

## Australia business number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security


### Format

11 digits with optional delimiters

### Pattern

11 digits with optional delimiters:

- two digits
- an optional hyphen or space
- three digits
- an optional hyphen or space
- three digits
- an optional hyphen or space
- three digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_australian_business_number finds content that matches the pattern.
- A keyword from Keywords_australian_business_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_australian_business_number finds content that matches the pattern.

```xml
      <!-- Australia Business Number -->
      <Entity id="76e83b3b-01ee-4530-aced-e667a6609f49" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_australian_business_number" />
          <Match idRef="Keywords_australian_business_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_australian_business_number" />
        </Pattern>
      </Entity>
```
### Keywords

#### Keyword_australia_business_number

- australia business no
- business number
- abn#
- businessid#
- business id
- abn
- businessno#

## Australia company number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

nine digits with delimiters

### Pattern

nine digits with delimiters:

- three digits
- a space
- three digits
- a space
- three digits


### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Australian_Company_Number finds content that matches the pattern.
- A keyword from Keyword_Australian_Company_Number is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Australian_Company_Number finds content that matches the pattern.

```xml
      <!-- Australia Company Number -->
      <Entity id="b1fba4f7-7b3e-4bb9-8f9a-9366df604dbb" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_Australian_Company_Number" />
          <Match idRef="Keyword_Australian_Company_Number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_Australian_Company_Number" />
        </Pattern>
      </Entity>
```
### Keywords

#### Keyword_australia_company_number

- acn
- australia company no
- australia company no#
- australia company number
- australian company no
- australian company no#
- australian company number

## Australia driver's license number

### Format

nine letters and digits

### Pattern

nine letters and digits: 

- two digits or letters (not case-sensitive) 
- two digits 
- five digits or letters (not case-sensitive)

OR

- one to two optional letters (not case-sensitive) 
- four to nine digits

OR

- nine digits or letters (not case-sensitive)

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_australia_drivers_license_number finds content that matches the pattern.
- A keyword from Keyword_australia_drivers_license_number is found.
- No keyword from Keyword_australia_drivers_license_number_exclusions is found.

```xml
<!-- Australia Drivers License Number -->
<Entity id="1cbbc8f5-9216-4392-9eb5-5ac2298d1356" patternsProximity="300" recommendedConfidence="75">
   <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_australia_drivers_license_number" />
        <Match idRef="Keyword_australia_drivers_license_number" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_australia_drivers_license_number_exclusions" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_australia_drivers_license_number

- international driving permits
- australian automobile association
- international driving permit
- DriverLicence
- DriverLicences
- Driver Lic
- Driver Licence
- Driver Licences
- DriversLic
- DriversLicence
- DriversLicences
- Drivers Lic
- Drivers Lics
- Drivers Licence
- Drivers Licences
- Driver'Lic
- Driver'Lics
- Driver'Licence
- Driver'Licences
- Driver' Lic
- Driver' Lics
- Driver' Licence
- Driver' Licences
- Driver'sLic
- Driver'sLics
- Driver'sLicence
- Driver'sLicences
- Driver's Lic
- Driver's Lics
- Driver's Licence
- Driver's Licences
- DriverLic#
- DriverLics#
- DriverLicence#
- DriverLicences#
- Driver Lic#
- Driver Lics#
- Driver Licence#
- Driver Licences#
- DriversLic#
- DriversLics#
- DriversLicence#
- DriversLicences#
- Drivers Lic#
- Drivers Lics#
- Drivers Licence#
- Drivers Licences#
- Driver'Lic#
- Driver'Lics#
- Driver'Licence#
- Driver'Licences#
- Driver' Lic#
- Driver' Lics#
- Driver' Licence#
- Driver' Licences#
- Driver'sLic#
- Driver'sLics#
- Driver'sLicence#
- Driver'sLicences#
- Driver's Lic#
- Driver's Lics#
- Driver's Licence#
- Driver's Licences# 

#### Keyword_australia_drivers_license_number_exclusions

- aaa
- DriverLicense
- DriverLicenses
- Driver License
- Driver Licenses
- DriversLicense
- DriversLicenses
- Drivers License
- Drivers Licenses
- Driver'License
- Driver'Licenses
- Driver' License
- Driver' Licenses
- Driver'sLicense
- Driver'sLicenses
- Driver's License
- Driver's Licenses
- DriverLicense#
- DriverLicenses#
- Driver License#
- Driver Licenses#
- DriversLicense#
- DriversLicenses#
- Drivers License#
- Drivers Licenses#
- Driver'License#
- Driver'Licenses#
- Driver' License#
- Driver' Licenses#
- Driver'sLicense#
- Driver'sLicenses#
- Driver's License#
- Driver's Licenses#
   
## Australia medical account number

### Format

10-11 digits

### Pattern

10-11 digits:
- First digit is in the range 2-6
- Nine digit is a check digit
- Tenth digit is the issue digit
- Eleventh digit (optional) is the individual number

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_australian_medical_account_number finds content that matches the pattern.
- A keyword from Keyword_Australia_Medical_Account_Number is found.
- The checksum passes.


```xml
  <!-- Australia Medical Account Number -->
<Entity id="104a99a0-3d3b-4542-a40d-ab0b9e1efe63" recommendedConfidence="85" patternsProximity="300">
    <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_australian_medical_account_number"/>
     <Match idRef="Keyword_Australia_Medical_Account_Number"/>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_Australia_Medical_Account_Number

- bank account details
- medicare payments
- mortgage account
- bank payments
- information branch
- credit card loan
- department of human services
- local service
- medicare

   
## Australia passport number

### Format

eight or nine alphanumeric characters 

### Pattern

- one letter (N, E, D, F, A, C, U, X) followed by 7 digits
or
- 2 letters (PA, PB, PC, PD, PE, PF, PU, PW, PX, PZ) followed by 7 digits.

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression `Regex_australia_passport_number` finds content that matches the pattern.
- A keyword from `Keyword_australia_passport_number` is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression `Regex_australia_passport_number` finds content that matches the pattern.

```xml
    <!-- Australia Passport Number -->
    <Entity id="29869db6-602d-4853-ab93-3484f905df50" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_australia_passport_number" />
        <Match idRef="Keyword_australia_passport_number" />
      </Pattern>
      <Pattern confidenceLevel="65">
        <IdMatch idRef="Regex_australia_passport_number" />
      </Pattern>
    </Entity>  
```

### Keywords

#### Keyword_australia_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers
- passport details
- immigration and citizenship
- commonwealth of australia
- department of immigration
- national identity card
- travel document
- issuing authority


## Australia tax file number

### Format

eight to nine digits

### Pattern

eight to nine digits typically presented with spaces as follows:
- three digits 
- an optional space 
- three digits 
- an optional space 
- two to three digits where the last digit is a check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_australian_tax_file_number finds content that matches the pattern.
- No keyword from Keyword_Australia_Tax_File_Number or Keyword_number_exclusions is found.
- The checksum passes.

```xml
   <!-- Australia Tax File Number -->
    <Entity id="e29bc95f-ff70-4a37-aa01-04d17360a4c5" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_australian_tax_file_number" />
        <Match idRef="Keyword_Australia_Tax_File_Number" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_australia_tax_file_number

- australian business number
- marginal tax rate
- medicare levy
- portfolio number
- service veterans
- withholding tax
- individual tax return
- tax file number
- tfn

## Austria driver's license number

### Format

eight digits without spaces and delimiters
  
### Pattern

eight digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_austria_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_austria_eu_driver's_license_number` is found. 
    
```xml
      <!-- Austria Driver's License Number -->
      <Entity id="682f18ce-44eb-482b-8198-2bcb96a0761e" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_austria_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_austria_eu_driver's_license_number

- fuhrerschein
- führerschein
- Führerscheine
- Führerscheinnummer
- Führerscheinnummern

## Austria identity card
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

A 24-character combination of letters, digits, and special characters
  
### Pattern

24 characters:
  
-  22 letters (not case-sensitive), digits, backslashes, forward slashes, or plus signs 
    
- two letters (not case-sensitive), digits, backslashes, forward slashes, plus signs, or equal signs
    
### Checksum

Not applicable
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_austria_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_austria_eu_national_id_card` is found. 
   
```xml
      <!-- Austria Identity Card -->
      <Entity id="5ec06c3b-007e-4820-8343-7ff73b889735" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_national_id_card" />
          <Match idRef="Keywords_austria_eu_national_id_card" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_austria_eu_national_id_card

- identity number
- national id
- personalausweis republik österreich

## Austria passport number

### Format

One letter followed by an optional space and seven digits
  
### Pattern

A combination of one letter, seven digits, and one space:
  
- one letter (not case-sensitive)
- one space (optional)
- seven digits
    
### Checksum

not applicable
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_austria_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_austria_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_austria_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_austria_eu_passport_number` is found. 
    
```xml
      <!-- Austria Passport Number -->
      <Entity id="1c96ae4e-303b-447d-86c7-77113ac266bf" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_austria_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_austria_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_austria_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_austria_eu_passport_number

- reisepassnummer
- reisepasse
- No-Reisepass 
- Nr-Reisepass
- Reisepass-Nr
- Passnummer
- reisepässe

#### Keywords_eu_passport_date

- date of issue
- date of expiry

## Austria social security number

### Format

10 digits in the specified format
  
### Pattern

10 digits:
  
- three digits that correspond to a serial number 
- one check digit
- six digits that correspond to the birth date (DDMMYY)
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_austria_eu_ssn_or_equivalent` finds content that matches the pattern. 
- a keyword from  `Keywords_austria_eu_ssn_or_equivalent` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_austria_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```xml
      <!-- Austria Social Security Number -->
      <Entity id="6896a906-86c9-4d19-a2da-6e43ccd19b7b" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_austria_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_austria_eu_ssn_or_equivalent" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_austria_eu_ssn_or_equivalent" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_austria_eu_telephone_number" />
            <Match idRef="Keywords_austria_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_austria_eu_ssn_or_equivalent

- austrian ssn
- ehic number
- ehic no
- insurance code
- insurancecode#
- insurance number
- insurance no
- krankenkassennummer
- krankenversicherung
- socialsecurityno
- socialsecurityno#
- social security no
- social security number
- social security code
- sozialversicherungsnummer
- sozialversicherungsnummer#
- soziale sicherheit kein
- sozialesicherheitkein#
- ssn#
- ssn
- versicherungscode
- versicherungsnummer
- zdravstveno zavarovanje

## Austria tax identification number

### Format

nine digits with optional hyphen and forward slash
  
### Pattern

nine digits with optional hyphen and forward slash:
  
- two digits
- a hyphen (optional)
- three digits
- a forward slash (optional)
- four digits
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_austria_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_austria_eu_tax_file_number` is found. 
    
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_austria_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Austria Tax Identification Number -->
      <Entity id="4fd58d22-af28-4451-b18a-6f722430a56d" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_austria_eu_tax_file_number" />
          <Match idRef="Keywords_austria_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_austria_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_austria_eu_tax_file_number

- österreich
- st.nr.
- steuernummer
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- tax number
 
## Austria value added tax
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

11-character alphanumeric pattern

### Pattern

11-character alphanumeric pattern:

- A or a
- T or t
- Optional space
- U or u
- optional space
- two or three digits
- optional space
- four digits
- optional space
- one or two digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Austria_Value_Added_Tax finds content that matches the pattern.
- A keyword from Keyword_Austria_Value_Added_Tax is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Austria_Value_Added_Tax finds content that matches the pattern.

```xml
      <!-- Austria Value Added Tax -->
      <Entity id="b6a3eda2-c56c-4b69-a5f7-dca34db00f48" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_Austria_Value_Added_Tax" />
          <Match idRef="Keyword_Austria_Value_Added_Tax" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_Austria_Value_Added_Tax" />
        </Pattern>
      </Entity>
```
### Keywords

#### Keyword_austria_value_added_tax

- vat number
- vat#
- austrian vat number
- vat no.
- vatno#
- value added tax number
- austrian vat
- mwst
- umsatzsteuernummer
- mwstnummer
- ust.-identifikationsnummer
- umsatzsteuer-identifikationsnummer
- vat identification number
- atu number
- uid number


## Azure DocumentDB auth key

### Format

The string "DocumentDb" followed by the characters and strings outlined in the pattern below.

### Pattern

- The string "DocumentDb"
- Any combination of between 3-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- A greater than symbol (>), an equal sign (=), a quotation mark ("), or an apostrophe (')
- Any combination of 86 lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- Two equal signs (=)

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureDocumentDBAuthKey finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.

```xml
<!-- Azure Document DB Auth Key -->
<Entity id="0f587d92-eb28-44a9-bd1c-90f2892b47aa" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureDocumentDBAuthKey" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_CommonExampleKeywords" />
          </Any>
  </Pattern>
</Entity>
```

### Keywords

#### CEP_CommonExampleKeywords

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Azure IAAS database connection string and Azure SQL connection string

### Format

The string "Server", "server", or "data source" followed by the characters and strings outlined in the pattern below, including the string "cloudapp.azure.<!--no-hyperlink-->com" or "cloudapp.azure.<!--no-hyperlink-->net" or "database.windows.<!--no-hyperlink-->net", and the string "Password" or "password" or "pwd".

### Pattern

- the string "Server", "server", or "data source"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "cloudapp.azure.<!--no-hyperlink-->com", "cloudapp.azure.<!--no-hyperlink-->net", or "database.windows.<!--no-hyperlink-->net"
- any combination of between 1-300 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "Password", "password", or "pwd"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- one or more characters that aren't a semicolon (;), quotation mark ("), or apostrophe (')
- a semicolon (;), quotation mark ("), or apostrophe (')

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureConnectionString finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.

```xml
<!--Azure IAAS Database Connection String and Azure SQL Connection String-->
<Entity id="ce1a126d-186f-4700-8c0c-486157b953fd" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureConnectionString" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### CEP_common_example_keywords

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Azure IoT connection string

### Format

The string "HostName" followed by the characters and strings outlined in the pattern below, including the strings "azure-devices.<!--no-hyperlink-->net" and "SharedAccessKey".

### Pattern

- the string "HostName"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "azure-devices.<!--no-hyperlink-->net"
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "SharedAccessKey"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of 43 lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- an equal sign (=)

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureIoTConnectionString finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.

```xml
<!--Azure IoT Connection String-->
<Entity id="0b34bec3-d5d6-4974-b7b0-dcdb5c90c29d" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureIoTConnectionString" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### CEP_common_example_keywords

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Azure publish setting password

### Format

The string "userpwd=" followed by an alphanumeric string.

### Pattern

- the string "userpwd="
- any combination of 60 lowercase letters or digits
- a quotation mark (")

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzurePublishSettingPasswords finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.


```xml
<!--Azure Publish Setting Password-->
<Entity id="75f4cc8a-a68e-49e5-89ce-fa8f03d286a5" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
       <IdMatch idRef="CEP_Regex_AzurePublishSettingPasswords" />
       <Any minMatches="0" maxMatches="0">
           <Match idRef="CEP_CommonExampleKeywords" />
       </Any>
  </Pattern>
</Entity>
```

### Keywords

#### CEP_common_example_keywords

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Azure Redis cache connection string

### Format

The string "redis.cache.windows.<!--no-hyperlink-->net" followed by the characters and strings outlined in the pattern below, including the string "password" or "pwd".

### Pattern

- the string "redis.cache.windows.<!--no-hyperlink-->net"
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "password" or "pwd"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of 43 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- an equal sign (=)

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureRedisCacheConnectionString finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.

```xml
<!--Azure Redis Cache Connection String-->
<Entity id="095a7e6c-efd8-46d5-af7b-5298d53a49fc" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureRedisCacheConnectionString" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### CEP_common_example_keywords

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Azure SAS

### Format

The string "sig" followed by the characters and strings outlined in the pattern below.

### Pattern

- the string "sig"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 43-53 characters that are lower- or uppercase letters, digits, or the percent sign (%)
- the string "%3d"
- any character that isn't a lower- or uppercase letter, digit, or percent sign (%)

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureSAS finds content that matches the pattern.

```xml
<!--Azure SAS-->
<Entity id="4d235014-e564-47f4-a6fb-6ebb4a826834" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureSAS" />
  </Pattern>
</Entity>
```

## Azure service bus connection string

### Format

The string "EndPoint" followed by the characters and strings outlined in the pattern below, including the strings "servicebus.windows.<!--no-hyperlink-->net" and "SharedAccesKey".

### Pattern

- the string "EndPoint"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "servicebus.windows.<!--no-hyperlink-->net"
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "SharedAccessKey"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of 43 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- an equal sign (=)

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureServiceBusConnectionString finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.

```xml
<!--Azure Service Bus Connection String-->
<Entity id="b9a6578f-a83f-4fcd-bf44-2130bae49a6f" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureServiceBusConnectionString" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### CEP_common_example_keywords

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Azure storage account key

### Format

The string "DefaultEndpointsProtocol" followed by the characters and strings outlined in the pattern below, including the string "AccountKey".

### Pattern

- the string "DefaultEndpointsProtocol"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "AccountKey"
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of 86 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- two equal signs (=)

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureStorageAccountKey finds content that matches the pattern.
- The regular expression CEP_AzureEmulatorStorageAccountFilter doesn't find content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.

```xml
<!--Azure Storage Account Key-->
<Entity id="c7bc98e8-551a-4c35-a92d-d2c8cda714a7" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureStorageAccountKey" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_AzureEmulatorStorageAccountFilter" />
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### CEP_azure_emulator_storage_account_filter

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==

#### CEP_common_example_keywords

(Technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Azure Storage account key (generic)

### Format

Any combination of 86 lower- or uppercase letters, digits, the forward slash (/), or plus sign (+), preceded or followed by the characters outlined in the pattern below.

### Pattern

- zero to one of the greater than symbol (>), apostrophe ('), equal sign (=), quotation mark ("), or number sign (#)
- any combination of 86 characters that are lower- or uppercase letters, digits, the forward slash (/), or plus sign (+)
- two equal signs (=)

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureStorageAccountKeyGeneric finds content that matches the pattern.

```xml
<!--Azure Storage Account Key (Generic)-->
<Entity id="7ff41bd0-5419-4523-91d6-383b3a37f084" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureStorageAccountKeyGeneric" />
  </Pattern>
</Entity>
```
## Belgium driver's license number

### Format

10 digits without spaces and delimiters
  
### Pattern

10 digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_belgium_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from `Keywords_eu_driver's_license_number` or `Keywords_belgium_eu_driver's_license_number` is found.
    
```xml
      <!-- Belgium Driver's License Number -->
      <Entity id="d89fd329-9324-433c-b687-2c37bd5166f3" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_belgium_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_belgium_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords


#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number

#### Keywords_belgium_eu_driver's_license_number

- rijbewijs
- rijbewijsnummer
- führerschein
- führerscheinnummer
- füehrerscheinnummer
- fuhrerschein
- fuehrerschein
- fuhrerscheinnummer
- fuehrerscheinnummer
- permis de conduire
- numéro permis conduire


## Belgium national number

### Format

11 digits plus optional delimiters

### Pattern

11 digits plus delimiters:
- six digits and two optional periods in the format YY.MM.DD for date of birth 
- An optional delimiter from dot, dash, space 
- three sequential digits (odd for males, even for females) 
- An optional delimiter from dot, dash, space 
- two check digits

### Checksum

Yes

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_belgium_national_number finds content that matches the pattern.
- A keyword from Keyword_belgium_national_number is found.
- The checksum passes.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_belgium_national_number finds content that matches the pattern.
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

### Keywords

#### Keyword_belgium_national_number

- belasting aantal
- bnn#
- bnn
- carte d’identité
- identifiant national
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
- national number
- national register
- nationalnumber#
- nationalnumber
- nif#
- nif
- numéro d'assuré
- numéro de registre national
- numéro de sécurité
- numéro d'identification
- numéro d'immatriculation
- numéro national
- numéronational#
- personal id number
- personalausweis
- personalidnumber#
- registratie
- registration
- registrationsnumme
- registrierung
- social security number
- ssn#
- ssn
- steuernummer
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#

## Belgium passport number

### Format

two letters followed by six digits with no spaces or delimiters
  
### Pattern

two letters and followed by six digits
  
### Checksum

not applicable
  
### Definition

 A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_belgium_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_belgium_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date2` finds date in the format DD MM YY or a keyword from `Keywords_eu_passport_date` or `Keywords_belgium_eu_passport_number` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_belgium_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_belgium_eu_passport_number` is found. 

```xml
      <!-- Belgium Passport Number -->
      <Entity id="d7b1315b-21ca-4774-a32a-596010ff78fd" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_belgium_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_belgium_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date2" />
            <Match idRef="Keywords_eu_passport_date" />
            <Match idRef="Keywords_belgium_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_belgium_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_belgium_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>

```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_belgium_eu_passport_number

- numéro passeport
- paspoort nr
- paspoort-nr
- paspoortnummer
- paspoortnummers
- Passeport carte
- Passeport livre
- Pass-Nr
- Passnummer
- reisepass kein

#### Keywords_eu_passport_date

- date of issue
- date of expiry

## Belgium value added tax number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

12-character alphanumeric pattern

### Pattern

12-character alphanumeric pattern:

- a letter B or b
- a letter E or e
- a digit 0
- a digit from 1 to 9
- an optional dot or Hyphen or space
- four digits
- an optional dot or Hyphen or space
- four digits


### Checksum

Yes


### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_belgium_value_added_tax_number finds content that matches the pattern.
- A keyword from Keywords_belgium_value_added_tax_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_belgium_value_added_tax_number finds content that matches the pattern.

```xml
      <!-- Belgium Value Added Tax Number -->
      <Entity id="85b5b3c3-f2de-4ae8-ac46-fd3cb38bf9ed" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_belgium_value_added_tax_number" />
          <Match idRef="Keywords_belgium_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_belgium_value_added_tax_number" />
        </Pattern>
      </Entity>
    </Version>
```
### Keywords

#### Keyword_belgium_value_added_tax_number

- nº tva
- vat number
- vat no
- numéro t.v.a
- umsatzsteuer-identifikationsnummer
- umsatzsteuernummer
- btw
- btw#
- vat#


## Brazil CPF number

### Format

11 digits that include a check digit and can be formatted or unformatted

### Pattern

Formatted:
- three digits
- a period
- three digits
- a period
- three digits
- a hyphen
- two digits that are check digits

Unformatted:
- 11 digits where the last two digits are check digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_cpf finds content that matches the pattern.
- A keyword from Keyword_brazil_cpf is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_cpf finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Brazil CPF Number -->
<Entity id="78e09124-f2c3-4656-b32a-c1a132cd2711" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_brazil_cpf"/>
     <Match idRef="Keyword_brazil_cpf"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_brazil_cpf"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_brazil_cpf

- CPF
- Identification
- Registration
- Revenue
- Cadastro de Pessoas Físicas 
- Imposto 
- Identificação 
- Inscrição 
- Receita 

   
## Brazil legal entity number (CNPJ)

### Format

14 digits that include a registration number, branch number, and check digits, plus delimiters

### Pattern

14 digits, plus delimiters:

- two digits 
- a period 
- three digits 
- a period 
- three digits (these first eight digits are the registration number) 
- a forward slash 
- four-digit branch number 
- a hyphen 
- two digits that are check digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_cnpj finds content that matches the pattern.
- A keyword from Keyword_brazil_cnpj is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_cnpj finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Brazil Legal Entity Number (CNPJ) -->
<Entity id="9b58b5cd-5e90-4df6-b34f-1ebcc88ceae4" recommendedConfidence="85" patternsProximity="300">
   <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_brazil_cnpj"/>
     <Match idRef="Keyword_brazil_cnpj"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_brazil_cnpj"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_brazil_cnpj

- CNPJ 
- CNPJ/MF 
- CNPJ-MF 
- National Registry of Legal Entities 
- Taxpayers Registry 
- Legal entity 
- Legal entities 
- Registration Status 
- Business 
- Company
- CNPJ 
- Cadastro Nacional da Pessoa Jurídica 
- Cadastro Geral de Contribuintes 
- CGC 
- Pessoa jurídica 
- Pessoas jurídicas 
- Situação cadastral 
- Inscrição 
- Empresa 

   
## Brazil national identification card (RG)

### Format

Registro Geral (old format): Nine digits

Registro de Identidade (RIC) (new format): 11 digits

### Pattern

Registro Geral (old format):
- two digits 
- a period 
- three digits 
- a period 
- three digits 
- a hyphen 
- one digit that is a check digit

Registro de Identidade (RIC) (new format):
- 10 digits 
- a hyphen 
- one digit that is a check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_rg finds content that matches the pattern.
- A keyword from Keyword_brazil_rg is found.
- The checksum passes.


```xml
      <!-- Brazil National ID Card (RG) -->
      <Entity id="486de900-db70-41b3-a886-abdf25af119c" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_brazil_rg" />
          <Match idRef="Keyword_brazil_rg" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_brazil_rg

- Cédula de identidade
- identity card
- national id 
- número de rregistro
- registro de Iidentidade 
- registro geral
- RG (this keyword is case-sensitive) 
- RIC (this keyword is case-sensitive) 


## Bulgaria driver's license number

### Format

nine digits without spaces and delimiters
  
### Pattern

nine digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_bulgaria_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_bulgaria_eu_driver's_license_number` is found. 
    
```xml
      <!-- Bulgaria Driver's License Number -->
      <Entity id="66d39258-94c2-43b2-804b-aa312258e54b" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_bulgaria_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_bulgaria_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>    
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_bulgaria_eu_driver's_license_number

- свидетелство за управление на мпс
- свидетелство за управление на моторно превозно средство
- сумпс
- шофьорска книжка
- шофьорски книжки

## Bulgaria uniform civil number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

10 digits without spaces and delimiters
  
### Pattern

10 digits without spaces and delimiters
  
- six digits that correspond to the birth date (YYMMDD) 
- two digits that correspond to the birth order
- one digit that corresponds to gender: An even digit for male and an odd digit for female
- one check digit

### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_bulgaria_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_bulgaria_eu_national_id_card` is found. 

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_bulgaria_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Bulgaria Uniform Civil Number -->
      <Entity id="100d58b1-0a35-4fb1-aa89-e4a86fb53fcc" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_bulgaria_eu_national_id_card" />
          <Match idRef="Keywords_bulgaria_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_bulgaria_eu_national_id_card" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_bulgaria_eu_telephone_number" />
            <Match idRef="Keywords_bulgaria_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_bulgaria_eu_national_id_card

- bnn#
- bnn
- bucn#
- bucn
- edinen grazhdanski nomer
- egn#
- egn
- identification number
- national id
- national number
- nationalnumber#
- nationalnumber
- personal id
- personal no
- personal number
- personalidnumber#
- social security number
- ssn#
- ssn
- uniform civil id
- uniform civil no
- uniform civil number
- uniformcivilno#
- uniformcivilno
- uniformcivilnumber#
- uniformcivilnumber
- unique citizenship number
- егн#
- егн
- единен граждански номер
- идентификационен номер
- личен номер
- лична идентификация
- лично не
- национален номер
- номер на гражданството
- униформ id
- униформ граждански id
- униформ граждански не
- униформ граждански номер
- униформгражданскиid#
- униформгражданскине.#


## Bulgaria passport number

### Format

nine digits without spaces and delimiters
  
### Pattern

nine digits 
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_bulgaria_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_bulgaria_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_bulgaria_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_bulgaria_eu_passport_number` is found. 

```xml
      <!-- Bulgaria Passport Number -->
      <Entity id="f7172b82-c588-4216-845e-4e54e397f29a" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_bulgaria_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_bulgaria_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_bulgaria_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_bulgaria_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```
### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_bulgaria_eu_passport_number

- номер на паспорта
- номер на паспорт
- паспорт №

#### Keywords_eu_passport_date

- date of issue
- date of expiry

## Canada bank account number

### Format

7 or 12 digits

### Pattern

A Canada Bank Account Number is 7 or 12 digits.

A Canada bank account transit number is:
- five digits 
- a hyphen 
- three digits
OR
- a zero "0" 
- eight digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_canada_bank_account_number finds content that matches the pattern.
- A keyword from Keyword_canada_bank_account_number is found.
- The regular expression Regex_canada_bank_account_transit_number finds content that matches the pattern.

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_canada_bank_account_number finds content that matches the pattern.
- A keyword from Keyword_canada_bank_account_number is found.

```xml
<!-- Canada Bank Account Number -->
<Entity id="552e814c-cb50-4d94-bbaa-bb1d1ffb34de" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Regex_canada_bank_account_number" />
        <Match idRef="Keyword_canada_bank_account_number" />
        <Match idRef="Regex_canada_bank_account_transit_number" />
   </Pattern>
   <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_canada_bank_account_number" />
        <Match idRef="Keyword_canada_bank_account_number" />
   </Pattern>
</Entity>
```

### Keywords

#### Keyword_canada_bank_account_number

- canada savings bonds
- canada revenue agency
- canadian financial institution
- direct deposit form
- canadian citizen
- legal representative
- notary public
- commissioner for oaths
- child care benefit
- universal child care
- canada child tax benefit
- income tax benefit
- harmonized sales tax
- social insurance number
- income tax refund
- child tax benefit
- territorial payments
- institution number
- deposit request
- banking information
- direct deposit

   
## Canada driver's license number

### Format

Varies by province

### Pattern

Various patterns covering Alberta, British Columbia, Manitoba, New Brunswick, Newfoundland/Labrador, Nova Scotia, Ontario, Prince Edward Island, Quebec, and Saskatchewan

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_[province_name]_drivers_license_number finds content that matches the pattern.
- A keyword from Keyword_[province_name]_drivers_license_name is found.
- A keyword from Keyword_canada_drivers_license is found.

```xml
<!-- Canada Driver's License Number -->
    <Entity id="37186abb-8e48-4800-ad3c-e3d1610b3db0" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_alberta_drivers_license_number" />
        <Match idRef="Keyword_alberta_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_british_columbia_drivers_license_number" />
        <Match idRef="Keyword_british_columbia_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_manitoba_drivers_license_number" />
        <Match idRef="Keyword_manitoba_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_new_brunswick_drivers_license_number" />
        <Match idRef="Keyword_new_brunswick_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_newfoundland_labrador_drivers_license_number" />
        <Match idRef="Keyword_newfoundland_labrador_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_nova_scotia_drivers_license_number" />
        <Match idRef="Keyword_nova_scotia_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_ontario_drivers_license_number" />
        <Match idRef="Keyword_ontario_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_prince_edward_island_drivers_license_number" />
        <Match idRef="Keyword_prince_edward_island_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_quebec_drivers_license_number" />
        <Match idRef="Keyword_quebec_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_saskatchewan_drivers_license_number" />
        <Match idRef="Keyword_saskatchewan_drivers_license_name" />
        <Match idRef="Keyword_canada_drivers_license" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_[province_name]_drivers_license_name

- The province abbreviation, for example AB
- The province name, for example Alberta

#### Keyword_canada_drivers_license

- DL
- DLS
- CDL
- CDLS
- DriverLic
- DriverLics
- DriverLicense
- DriverLicenses
- DriverLicence
- DriverLicences
- Driver Lic
- Driver Lics
- Driver License
- Driver Licenses
- Driver Licence
- Driver Licences
- DriversLic
- DriversLics
- DriversLicence
- DriversLicences
- DriversLicense
- DriversLicenses
- Drivers Lic
- Drivers Lics
- Drivers License
- Drivers Licenses
- Drivers Licence
- Drivers Licences
- Driver'Lic
- Driver'Lics
- Driver'License
- Driver'Licenses
- Driver'Licence
- Driver'Licences
- Driver' Lic
- Driver' Lics
- Driver' License
- Driver' Licenses
- Driver' Licence
- Driver' Licences
- Driver'sLic
- Driver'sLics
- Driver'sLicense
- Driver'sLicenses
- Driver'sLicence
- Driver'sLicences
- Driver's Lic
- Driver's Lics
- Driver's License
- Driver's Licenses
- Driver's Licence
- Driver's Licences
- Permis de Conduire
- id
- ids
- idcard number
- idcard numbers
- idcard #
- idcard #s
- idcard card
- idcard cards
- idcard
- identification number
- identification numbers
- identification #
- identification #s
- identification card
- identification cards
- identification 
- DL#
- DLS# 
- CDL# 
- CDLS# 
- DriverLic# 
- DriverLics# 
- DriverLicense# 
- DriverLicenses# 
- DriverLicence# 
- DriverLicences# 
- Driver Lic#
- Driver Lics# 
- Driver License# 
- Driver Licenses# 
- Driver License# 
- Driver Licences# 
- DriversLic# 
- DriversLics# 
- DriversLicense# 
- DriversLicenses# 
- DriversLicence# 
- DriversLicences# 
- Drivers Lic# 
- Drivers Lics# 
- Drivers License# 
- Drivers Licenses# 
- Drivers Licence# 
- Drivers Licences# 
- Driver'Lic# 
- Driver'Lics# 
- Driver'License# 
- Driver'Licenses# 
- Driver'Licence# 
- Driver'Licences# 
- Driver' Lic# 
- Driver' Lics# 
- Driver' License# 
- Driver' Licenses# 
- Driver' Licence# 
- Driver' Licences# 
- Driver'sLic# 
- Driver'sLics# 
- Driver'sLicense# 
- Driver'sLicenses# 
- Driver'sLicence# 
- Driver'sLicences# 
- Driver's Lic# 
- Driver's Lics# 
- Driver's License# 
- Driver's Licenses# 
- Driver's Licence# 
- Driver's Licences# 
- Permis de Conduire# 
- id# 
- ids# 
- idcard card# 
- idcard cards# 
- idcard# 
- identification card# 
- identification cards# 
- identification# 

   
## Canada health service number

### Format

 10 digits

### Pattern

10 digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_canada_health_service_number finds content that matches the pattern.
- A keyword from Keyword_canada_health_service_number is found.

```xml
<!-- Canada Health Service Number -->
<Entity id="59c0bf39-7fab-482c-af25-00faa4384c94" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_canada_health_service_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_canada_health_service_number" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_canada_health_service_number

- personal health number
- patient information
- health services
- speciality services
- automobile accident
- patient hospital
- psychiatrist
- workers compensation
- disability

      
## Canada passport number

### Format

two uppercase letters followed by six digits

### Pattern

two uppercase letters followed by six digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_canada_passport_number finds content that matches the pattern.
- A keyword from Keyword_canada_passport_number or Keyword_passport is found.

```xml 
<!-- Canada Passport Number -->
<Entity id="14d0db8b-498a-43ed-9fca-f6097ae687eb" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_canada_passport_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_canada_passport_number" />
          <Match idRef="Keyword_passport" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_canada_passport_number

- canadian citizenship
- canadian passport
- passport application
- passport photos
- certified translator
- canadian citizens
- processing times
- renewal application

#### Keyword_passport

- Passport Number
- Passport No
- Passport #
- Passport#
- PassportID
- Passportno
- passportnumber
- パスポート
- パスポート番号
- パスポートのNum
- パスポート＃
- Numéro de passeport
- Passeport n °
- Passeport Non
- Passeport #
- Passeport#
- PasseportNon
- Passeportn °

   
## Canada personal health identification number (PHIN)

### Format

nine digits

### Pattern

nine digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_canada_phin finds content that matches the pattern.
- At least two keywords from Keyword_canada_phin or Keyword_canada_provinces are found.

```xml
<!-- Canada PHIN -->
<Entity id="722e12ac-c89a-4ec8-a1b7-fea3469f89db" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_canada_phin" />
        <Any minMatches="2">
          <Match idRef="Keyword_canada_phin" />
          <Match idRef="Keyword_canada_provinces" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_canada_phin

- social insurance number
- health information act
- income tax information
- manitoba health
- health registration
- prescription purchases
- benefit eligibility
- personal health
- power of attorney
- registration number
- personal health number
- practitioner referral
- wellness professional
- patient referral
- health and wellness

#### Keyword_canada_provinces

- Nunavut
- Quebec
- Northwest Territories
- Ontario
- British Columbia
- Alberta
- Saskatchewan
- Manitoba
- Yukon
- Newfoundland and Labrador
- New Brunswick
- Nova Scotia
- Prince Edward Island
- Canada

   
## Canada social insurance number

### Format

nine digits with optional hyphens or spaces

### Pattern

Formatted:
- three digits 
- a hyphen or space 
- three digits 
- a hyphen or space 
- three digits

Unformatted: nine digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_canadian_sin finds content that matches the pattern.
- At least two of any combination of the following:
    - A keyword from Keyword_sin is found.
    - A keyword from Keyword_sin_collaborative is found.
    - The function Func_eu_date finds a date in the right date format.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_unformatted_canadian_sin finds content that matches the pattern.
- A keyword from Keyword_sin is found.
- The checksum passes.

```xml
<!-- Canada Social Insurance Number -->
<Entity id="a2f29c85-ecb8-4514-a610-364790c0773e" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_canadian_sin" />
        <Any minMatches="2">
          <Match idRef="Keyword_sin" />
          <Match idRef="Keyword_sin_collaborative" />
          <Match idRef="Func_eu_date" />
        </Any>
  </Pattern>
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_unformatted_canadian_sin" />
        <Match idRef="Keyword_sin" />
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_sin

- sin 
- social insurance 
- numero d'assurance sociale 
- sins 
- ssn 
- ssns 
- social security 
- numero d'assurance social 
- national identification number 
- national id 
- sin# 
- soc ins 
- social ins 

#### Keyword_sin_collaborative

- driver's license 
- drivers license 
- driver's licence 
- drivers licence 
- DOB 
- Birthdate 
- Birthday 
- Date of Birth 

   
## Chile identity card number

### Format

seven to eight digits plus delimiters a check digit or letter

### Pattern

seven to eight digits plus delimiters:
- one to two digits 
- an optional period 
- three digits 
- an optional period 
- three digits 
- a dash 
- one digit or letter (not case-sensitive) which is a check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_chile_id_card finds content that matches the pattern.
- A keyword from Keyword_chile_id_card is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_chile_id_card finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Chile Identity Card Number -->
<Entity id="4e979794-49a0-407e-a0b9-2c536937b925" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_chile_id_card"/>
     <Match idRef="Keyword_chile_id_card"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_chile_id_card"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_chile_id_card

- cédula de identidad
- identificación
- national identification
- national identification number
- national id
- número de identificación nacional
- rol único nacional
- rol único tributario
- RUN
- RUT
- tarjeta de identificación
- Rol Unico Nacional
- Rol Unico Tributario
- RUN#
- RUT#
- nationaluniqueroleID#
- nacional identidad
- número identificación
- identidad número
- numero identificacion
- identidad numero
- Chilean identity no.
- Chilean identity number
- Chilean identity #
- Unique Tax Registry
- Unique Tributary Role
- Unique Tax Role
- Unique Tributary Number
- Unique National Number
- Unique National Role
- National unique role
- Chile identity no.
- Chile identity number
- Chile identity #

   
## China resident identity card (PRC) number

### Format

18 digits

### Pattern

18 digits:
- six digits that are an address code 
- eight digits in the form YYYYMMDD, which are the date of birth 
- three digits that are an order code 
- one digit that is a check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_china_resident_id finds content that matches the pattern.
- A keyword from Keyword_china_resident_id is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_china_resident_id finds content that matches the pattern.
- The checksum passes.

```xml
<!-- China Resident Identity Card (PRC) Number -->
<Entity id="c92daa86-2d16-4871-901f-816b3f554fc1" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_china_resident_id"/>
     <Match idRef="Keyword_china_resident_id"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_china_resident_id"/>
  </Pattern>
</Entity>
```

### Keywords

### Keyword_china_resident_id

- Resident Identity Card 
- PRC 
- National Identification Card 
- 身份证 
- 居民 身份证 
- 居民身份证 
- 鉴定 
- 身分證 
- 居民 身份證
- 鑑定 

   
## Credit card number

### Format

14 to 16 digits that can be formatted or unformatted (dddddddddddddddd) and that must pass the Luhn test.

### Pattern

Complex and robust pattern that detects cards from all major brands worldwide, including Visa, MasterCard, Discover Card, JCB, American Express, gift cards, and diner cards.

### Checksum

Yes, the Luhn checksum

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_credit_card finds content that matches the pattern.
- One of the following is true:
    - A keyword from Keyword_cc_verification is found.
    - A keyword from Keyword_cc_name is found.
    - The function Func_expiration_date finds a date in the right date format.
- The checksum passes.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_credit_card finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Credit Card Number -->
<Entity id="50842eb7-edc8-4019-85dd-5a5c1f2bb085" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_credit_card" />
        <Any minMatches="1">
          <Match idRef="Keyword_cc_verification" />
          <Match idRef="Keyword_cc_name" />
          <Match idRef="Func_expiration_date" />
        </Any>
  </Pattern>
  <Pattern confidenceLevel="65">
        <IdMatch idRef="Func_credit_card" />
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_cc_verification

- card verification
- card identification number
- cvn
- cid
- cvc2
- cvv2
- pin block
- security code
- security number
- security no
- issue number
- issue no
- cryptogramme
- numéro de sécurité
- numero de securite
- kreditkartenprüfnummer
- kreditkartenprufnummer
- prüfziffer
- prufziffer
- sicherheits Kode
- sicherheitscode
- sicherheitsnummer
- verfalldatum
- codice di verifica
- cod. sicurezza
- cod sicurezza
- n autorizzazione
- código
- codigo
- cod. seg
- cod seg
- código de segurança
- codigo de seguranca
- codigo de segurança
- código de seguranca
- cód. segurança
- cod. seguranca
- cod. segurança
- cód. seguranca
- cód segurança
- cod seguranca
- cod segurança
- cód seguranca
- número de verificação
- numero de verificacao
- ablauf
- gültig bis
- gültigkeitsdatum
- gultig bis
- gultigkeitsdatum
- scadenza
- data scad
- fecha de expiracion
- fecha de venc
- vencimiento
- válido hasta
- valido hasta
- vto
- data de expiração
- data de expiracao
- data em que expira
- validade
- valor
- vencimento
- transaction
- transaction number
- reference number
- セキュリティコード
- セキュリティ コード
- セキュリティナンバー
- セキュリティ ナンバー
- セキュリティ番号

#### Keyword_cc_name

- amex
- american express
- americanexpress
- americano espresso
- Visa
- mastercard
- master card
- mc
- mastercards
- master cards
- diner's Club
- diners club
- dinersclub
- discover
- discover card
- discovercard
- discover cards
- JCB
- BrandSmart
- japanese card bureau
- carte blanche
- carteblanche
- credit card
- cc#
- cc#:
- expiration date
- exp date
- expiry date
- date d’expiration
- date d'exp
- date expiration
- bank card
- bankcard
- card number
- card num
- cardnumber
- cardnumbers
- card numbers
- creditcard
- credit cards
- creditcards
- ccn
- card holder
- cardholder
- card holders
- cardholders
- check card
- checkcard
- check cards
- checkcards
- debit card
- debitcard
- debit cards
- debitcards
- atm card
- atmcard
- atm cards
- atmcards
- enroute
- en route
- card type
- Cardmember Acct
- cardmember account
- Cardno
- Corporate Card
- Corporate cards
- Type of card
- card account number
- card member account
- Cardmember Acct.
- card no.
- card no
- card number
- carte bancaire
- carte de crédit
- carte de credit
- numéro de carte
- numero de carte
- nº de la carte
- nº de carte
- kreditkarte
- karte
- karteninhaber
- karteninhabers
- kreditkarteninhaber
- kreditkarteninstitut
- kreditkartentyp
- eigentümername
- kartennr
- kartennummer
- kreditkartennummer
- kreditkarten-nummer
- carta di credito
- carta credito
- n. carta
- n carta
- nr. carta
- nr carta
- numero carta
- numero della carta
- numero di carta
- tarjeta credito
- tarjeta de credito
- tarjeta crédito
- tarjeta de crédito
- tarjeta de atm
- tarjeta atm
- tarjeta debito
- tarjeta de debito
- tarjeta débito
- tarjeta de débito
- nº de tarjeta
- no. de tarjeta
- no de tarjeta
- numero de tarjeta
- número de tarjeta
- tarjeta no
- tarjetahabiente
- cartão de crédito
- cartão de credito
- cartao de crédito
- cartao de credito
- cartão de débito
- cartao de débito
- cartão de debito
- cartao de debito
- débito automático
- debito automatico
- número do cartão
- numero do cartão
- número do cartao
- numero do cartao
- número de cartão
- numero de cartão
- número de cartao
- numero de cartao
- nº do cartão
- nº do cartao
- nº. do cartão
- no do cartão
- no do cartao
- no. do cartão
- no. do cartao
- クレジットカード番号
- クレジットカードナンバー
- クレジットカード＃
- クレジットカード
- クレジット
- クレカ
- カード番号
- カードナンバー
- カード＃
- アメックス
- アメリカンエクスプレス
- アメリカン エクスプレス
- Visaカード
- Visa カード
- マスターカード
- マスター カード
- マスター
- ダイナースクラブ
- ダイナース クラブ
- ダイナース
- 有効期限
- 期限
- キャッシュカード
- キャッシュ カード
- カード名義人
- カードの名義人
- カードの名義
- デビット カード
- デビットカード


## Croatia driver's license number

### Format

eight digits without spaces and delimiters
  
### Pattern

eight digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_croatia_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from `Keywords_eu_driver's_license_number` or `Keywords_croatia_eu_driver's_license_number` is found. 

```xml
      <!-- Croatia Driver's License Number -->
      <Entity id="005b3ef1-47dd-4e68-bb02-c6db484d00f2" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_croatia_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_croatia_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_croatia_eu_driver's_license_number

- vozačka dozvola
- vozačke dozvole


## Croatia identity card number
This sensitive information type entity is included in the EU National Identification Number sensitive information type. It's available as a stand-alone sensitive information type entity.

### Format

nine digits

### Pattern

nine consecutive digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_croatia_id_card finds content that matches the pattern.
- A keyword from Keyword_croatia_id_card is found.

```xml
<!--Croatia Identity Card Number-->
<Entity id="ff12f884-c20a-4189-b185-34c8e7258d47" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_croatia_id_card"/>
     <Match idRef="Keyword_croatia_id_card"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_croatia_id_card

- majstorski broj građana
- master citizen number
- nacionalni identifikacijski broj
- national identification number
- oib#
- oib
- osobna iskaznica
- osobni id
- osobni identifikacijski broj
- personal identification number
- porezni broj
- porezni identifikacijski broj
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## Croatia passport number

### Format

nine digits without spaces and delimiters
  
### Pattern

nine digits 
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_croatia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_croatia_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_croatia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_croatia_eu_passport_number` is found. 
    
```xml
      <!-- Croatia Passport Number -->
      <Entity id="7d7a729d-32d8-4204-8d01-d5e6a6c25581" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_croatia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_croatia_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_croatia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_croatia_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```
### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_croatia_eu_passport_number

- broj putovnice
- br. Putovnice
- br putovnice
   
## Croatia personal identification (OIB) number

### Format

11 digits

### Pattern

11 digits:
- 10 digits 
- final digit is a check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_croatia_oib_number finds content that matches the pattern.
- A keyword from Keywords_croatia_eu_tax_file_number is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_croatia_oib_number finds content that matches the pattern.
- The checksum passes.

```xml
      <!-- Croatia Personal Identification (OIB) Number -->
      <Entity id="31983b6d-db95-4eb2-a630-b44bd091968d" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_croatia_oib_number" />
          <Match idRef="Keywords_croatia_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_croatia_oib_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_croatia_oib_number

- majstorski broj građana
- master citizen number
- nacionalni identifikacijski broj
- national identification number
- oib#
- oib
- osobna iskaznica
- osobni id
- osobni identifikacijski broj
- personal identification number
- porezni broj
- porezni identifikacijski broj
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#

## Cyprus drivers license number

### Format

12 digits without spaces and delimiters
  
### Pattern

12 digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_cyprus_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_cyprus_eu_driver's_license_number` is found.

```xml
      <!-- Cyprus Driver's License Number -->
      <Entity id="356fa104-f9ac-4aff-a0e4-2e6e65ea06c4" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_cyprus_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number

#### Keywords_cyprus_eu_driver's_license_number

- άδεια οδήγησης
- αριθμό άδειας οδήγησης
- άδειες οδήγησης


## Cyprus identity card
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

10 digits without spaces and delimiters
  
### Pattern

10 digits 
  
### Checksum

not applicable
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_cyprus_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_cyprus_eu_national_id_card` is found. 
    
```xml 
      <!-- Cyprus Identity Card -->
      <Entity id="3ba8afe5-7a6c-4929-8247-0001b6878438" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_national_id_card" />
          <Match idRef="Keywords_cyprus_eu_national_id_card" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_cyprus_eu_national_id_card

- id card number
- identity card number
- kimlik karti
- national identification number
- personal id number
- ταυτοτητασ


## Cyprus passport number

### Format

one letter followed by 6-8 digits with no spaces or delimiters
  
### Pattern

one letter followed by six to eight digits
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_cyprus_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_cyprus_eu_passport_number` is found. 
- The regular expression `Regex_cyprus_eu_passport_date` finds date in the format DD/MM/YYYY or a keyword from `Keywords_cyprus_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_cyprus_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_cyprus_eu_passport_number` is found.  
    
```xml
      <!-- Cyprus Passport Number -->
      <Entity id="9193e2e8-7f8c-43c1-a274-ac40d651936f" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_cyprus_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_cyprus_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_cyprus_eu_passport_date" />
            <Match idRef="Keywords_cyprus_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_cyprus_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_cyprus_eu_passport_number

- αριθμό διαβατηρίου
- pasaportu
- Αριθμός Διαβατηρίου
- κυπριακό διαβατήριο
- διαβατήριο#
- διαβατήριο
- αριθμός διαβατηρίου
- Pasaport Kimliği
- pasaport numarası
- Pasaport no.
- Αρ. Διαβατηρίου

#### Keywords_cyprus_eu_passport_date

- expires on
- issued on


## Cyprus tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

eight digits and one letter in the specified pattern
  
### Pattern

eight digits and one letter:
  
- a "0" or "9"
- seven digits
- one letter (not case-sensitive)
    
### Checksum

not applicable
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_cyprus_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_cyprus_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_cyprus_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Cyprus Tax Identification Number -->
      <Entity id="40e64bd9-55f3-4a09-9bd6-1db18dced9dd" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_cyprus_eu_tax_file_number" />
          <Match idRef="Keywords_cyprus_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_cyprus_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_cyprus_eu_tax_file_number

- tax id
- tax identification code
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tic#
- tic
- tin id
- tin no
- tin#
- vergi kimlik kodu
- vergi kimlik numarası
- αριθμός φορολογικού μητρώου
- κωδικός φορολογικού μητρώου
- φορολογική ταυτότητα
- φορολογικού κωδικού


## Czech driver's license number

### Format

two letters followed by six digits
  
### Pattern

eight letters and digits:
  
- letter 'E' (not case-sensitive)
- a letter
- a space (optional)
- six digits

### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_czech_republic_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_czech_republic_eu_driver's_license_number` is found. 

```xml
      <Entity id="86b40d3b-d8ea-4c36-aab0-ef9416a6769c" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_czech_republic_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>

```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number

#### Keywords_czech_republic_eu_driver's_license_number

- řidičský prúkaz
- řidičské průkazy
- číslo řidičského průkazu
- čísla řidičských průkazů


## Czech passport number

### Format

eight digits without spaces or delimiters
  
### Pattern

eight digits without spaces or delimiters
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_czech_republic_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_czech_republic_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_czech_republic_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_czech_republic_eu_passport_number` is found. 
    
```xml
      <!-- Czech Republic Passport Number -->
      <Entity id="7bcd8ce8-5e92-4bbe-bc92-fa669f0369fa" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_czech_republic_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_czech_republic_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_czech_republic_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_czech_republic_eu_passport_number

- cestovní pas
- číslo pasu
- cestovní pasu
- passeport no
- čísla pasu

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Czech personal identity number

### Format

nine digits with optional forward slash (old format)
10 digits with optional forward slash (new format)

### Pattern

nine digits (old format):
- six digits that represent date of birth
- an optional forward slash
- three digits

10 digits (new format):
- six digits that represent date of birth
- an optional forward slash 
- four digits where last digit is a check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_czech_id_card finds content that matches the pattern.
- A keyword from Keyword_czech_id_card is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_czech_id_card_new_format finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Czech Personal Identity Number -->
      <!-- Czech Personal Identity Number -->
      <Entity id="60c0725a-4eb6-455b-9dda-05d8a7396497" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_czech_id_card" />
          <Match idRef="Keyword_czech_id_card" />
        </Pattern>
        <Version minEngineVersion="15.20.3000.000">
          <Pattern confidenceLevel="75">
            <IdMatch idRef="Func_czech_id_card_new_format" />
          </Pattern>
        </Version>
      </Entity>
```
### Keywords

#### Keyword_czech_id_card

- birth number
- czech republic id
- czechidno#
- daňové číslo
- identifikační číslo
- identity no
- identity number
- identityno#
- identityno
- insurance number
- national identification number
- nationalnumber#
- national number
- osobní číslo
- personalidnumber#
- personal id number
- personal identification number
- personal number
- pid#
- pid
- pojištění číslo
- rč
- rodne cislo
- rodné číslo
- ssn
- ssn#
- social security number
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- unique identification number


## Denmark driver's license number

### Format

eight digits without spaces and delimiters
  
### Pattern

eight digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_denmark_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_denmark_eu_driver's_license_number` is found. 
    
```xml
      <!-- Denmark Driver's License Number -->
      <Entity id="98a95812-6203-451a-a220-d39870ebef0e" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_denmark_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_denmark_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number

#### Keywords_denmark_eu_driver's_license_number

- kørekort
- kørekortnummer


## Denmark passport number

### Format

nine digits without spaces and delimiters
  
### Pattern

nine digits 
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_denmark_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_denmark_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date2` finds date in the format DD MM YY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_denmark_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_denmark_eu_passport_number` is found. 
    
```xml
      <!-- Denmark Passport Number -->
      <Entity id="25e8c47e-e6fe-4884-a211-74898f8c0196" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_denmark_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_denmark_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date2" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_denmark_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_denmark_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>

```

### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_denmark_eu_passport_number

- pasnummer
- Passeport n°
- pasnumre

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Denmark personal identification number

### Format

10 digits containing a hyphen

### Pattern

10 digits:
- six digits in the format DDMMYY, which are the date of birth 
- a hyphen 
- four digits where the final digit is a check digit

### Checksum

Yes

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Func_denmark_eu_tax_file_number finds content that matches the pattern.
- A keyword from Keyword_denmark_id is found.
- The checksum passes.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Func_denmark_eu_tax_file_number finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Denmark Personal Identification Number -->
	  <!-- Denmark Personal Identification Number -->
      <Entity id="6c4f2fef-56e1-4c00-8093-88d7a01cf460" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_denmark_eu_tax_file_number" />
          <Match idRef="Keyword_denmark_id" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_denmark_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_denmark_id

- centrale personregister
- civilt registreringssystem
- cpr
- cpr#
- gesundheitskarte nummer
- gesundheitsversicherungkarte nummer
- health card
- health insurance card number
- health insurance number
- identification number
- identifikationsnummer
- identifikationsnummer#
- identity number
- krankenkassennummer
- nationalid#
- nationalnumber#
- national number
- personalidnumber#
- personalidentityno#
- personal id number
- personnummer
- personnummer#
- reisekrankenversicherungskartenummer
- rejsesygesikringskort
- ssn
- ssn#
- skat id
- skat kode
- skat nummer
- skattenummer
- social security number
- sundhedsforsikringskort
- sundhedsforsikringsnummer
- sundhedskort
- sundhedskortnummer
- sygesikring
- sygesikringkortnummer
- tax code
- travel health insurance card
- uniqueidentityno#
- tax number
- tax registration number
- tax id
- tax identification number
- taxid#
- taxnumber#
- tax no
- taxno#
- taxnumber
- tax identification no
- tin#
- taxidno#
- taxidnumber#
- tax no#
- tin id
- tin no
- cpr.nr
- cprnr
- cprnummer
- personnr
- personregister
- sygesikringsbevis
- sygesikringsbevisnr
- sygesikringsbevisnummer
- sygesikringskort
- sygesikringskortnr
- sygesikringskortnummer
- sygesikringsnr
- sygesikringsnummer


## Drug Enforcement Agency (DEA) number

### Format

two letters followed by seven digits

### Pattern

Pattern must include all of the following:
- one letter (not case-sensitive) from this set of possible letters: abcdefghjklmnprstux, which is a registrant code 
- one letter (not case-sensitive), which is the first letter of the registrant's last name or digit '9'
- seven digits, the last of which is the check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_dea_number finds content that matches the pattern.
- A keyword from `Keyword_dea_number` is found
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_dea_number finds content that matches the pattern.
- The checksum passes.

```xml
    <!-- DEA Number -->
    <Entity id="9a5445ad-406e-43eb-8bd7-cac17ab6d0e4" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_dea_number" />
      </Pattern>
      <Version minEngineVersion="15.20.1207.000" maxEngineVersion="15.20.3134.000">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_dea_number" />
        </Pattern>
      </Version>
      <Version minEngineVersion="15.20.3135.000">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_dea_number" />
          <Match idRef="Keyword_dea_number" />
        </Pattern>
      </Version>
    </Entity>
```

### Keywords

#### Keyword_dea_number

- dea
- dea#
- drug enforcement administration
- drug enforcement agency


## Estonia driver's license number

### Format

two letters followed by six digits
  
### Pattern

two letters and six digits:
  
- the letters "ET" (not case-sensitive) 
- six digits
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_estonia_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_estonia_eu_driver's_license_number` is found. 
    
```xml
      <!-- Estonia Driver's License Number -->
      <Entity id="51da8171-da70-4cc1-9d65-055a59ca4f83" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_estonia_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_estonia_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number

#### Keywords_estonia_eu_driver's_license_number

-- permis de conduire
- juhilubade numbrid
- juhiloa number
- juhiluba


## Estonia Personal Identification Code
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits:
  
- one digit that corresponds to sex and century of birth (odd number male, even number female; 1-2: 19th century; 3-4: 20th century; 5-6: 21st century)
- six digits that correspond to date of birth (YYMMDD)
- three digits that correspond to a serial number separating persons born on the same date
- one check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_estonia_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_estonia_eu_national_id_card` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_estonia_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Estonia Personal Identification Code -->
      <Entity id="bfb26de6-dad5-4d48-ab72-4789cdd0654c" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_estonia_eu_national_id_card" />
          <Match idRef="Keywords_estonia_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_estonia_eu_national_id_card" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_estonia_eu_telephone_number" />
            <Match idRef="Keywords_estonia_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_estonia_eu_national_id_card

- id-kaart
- ik
- isikukood#
- isikukood
- maksu id
- maksukohustuslase identifitseerimisnumber
- maksunumber
- national identification number
- national number
- personal code
- personal id number
- personal identification code
- personal identification number
- personalidnumber#
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## Estonia passport number

### Format

one letter followed by seven digits with no spaces or delimiters
  
### Pattern

one letter followed by seven digits
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_estonia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_estonia_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_estonia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_estonia_eu_passport_number` is found. 
    
```xml
      <!-- Estonia Passport Number -->
      <Entity id="61f7073a-509e-425b-a754-bc01bb5d5b8c" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_estonia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_estonia_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_estonia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_estonia_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_estonia_eu_passport_number

eesti kodaniku pass
passi number
passinumbrid
document number
document no
dokumendi nr

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## EU debit card number

### Format

16 digits

### Pattern

Complex and robust pattern

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_eu_debit_card finds content that matches the pattern.
- At least one of the following is true:
    - A keyword from Keyword_eu_debit_card is found.
    - A keyword from Keyword_card_terms_dict is found.
    - A keyword from Keyword_card_security_terms_dict is found.
    - A keyword from Keyword_card_expiration_terms_dict is found.
    - The function Func_expiration_date finds a date in the right date format.
- The checksum passes.

```xml
    <!-- EU Debit Card Number -->
    <Entity id="0e9b3178-9678-47dd-a509-37222ca96b42" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_eu_debit_card" />
        <Any minMatches="1">
          <Match idRef="Keyword_eu_debit_card" />
          <Match idRef="Keyword_card_terms_dict" />
          <Match idRef="Keyword_card_security_terms_dict" />
          <Match idRef="Keyword_card_expiration_terms_dict" />
          <Match idRef="Func_expiration_date" />
        </Any>
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_eu_debit_card

- account number 
- card number 
- card no. 
- security number 
- cc# 

#### Keyword_card_terms_dict

- acct nbr 
- acct num 
- acct no 
- american express 
- americanexpress 
- americano espresso 
- amex 
- atm card 
- atm cards 
- atm kaart 
- atmcard 
- atmcards 
- atmkaart 
- atmkaarten 
- bancontact 
- bank card 
- bankkaart 
- card holder 
- card holders 
- card num 
- card number 
- card numbers 
- card type 
- cardano numerico 
- cardholder 
- cardholders 
- cardnumber 
- cardnumbers 
- carta bianca 
- carta credito 
- carta di credito 
- cartao de credito 
- cartao de crédito 
- cartao de debito 
- cartao de débito 
- carte bancaire 
- carte blanche 
- carte bleue 
- carte de credit 
- carte de crédit 
- carte di credito 
- carteblanche 
- cartão de credito 
- cartão de crédito 
- cartão de debito 
- cartão de débito 
- cb 
- ccn 
- check card 
- check cards 
- checkcard
- checkcards 
- chequekaart 
- cirrus 
- cirrus-edc-maestro 
- controlekaart 
- controlekaarten 
- credit card 
- credit cards 
- creditcard 
- creditcards 
- debetkaart 
- debetkaarten 
- debit card 
- debit cards 
- debitcard 
- debitcards 
- debito automatico 
- diners club 
- dinersclub 
- discover 
- discover card 
- discover cards 
- discovercard 
- discovercards 
- débito automático
- edc 
- eigentümername 
- european debit card 
- hoofdkaart 
- hoofdkaarten 
- in viaggio 
- japanese card bureau 
- japanse kaartdienst 
- jcb 
- kaart 
- kaart num 
- kaartaantal 
- kaartaantallen 
- kaarthouder 
- kaarthouders 
- karte  
- karteninhaber 
- karteninhabers
- kartennr 
- kartennummer 
- kreditkarte 
- kreditkarten-nummer 
- kreditkarteninhaber 
- kreditkarteninstitut 
- kreditkartennummer 
- kreditkartentyp 
- maestro 
- master card 
- master cards 
- mastercard 
- mastercards 
- mc 
- mister cash 
- n carta 
- carta 
- no de tarjeta 
- no do cartao 
- no do cartão 
- no. de tarjeta 
- no. do cartao 
- no. do cartão 
- nr carta 
- nr. carta 
- numeri di scheda 
- numero carta 
- numero de cartao 
- numero de carte 
- numero de cartão 
- numero de tarjeta
- numero della carta 
- numero di carta 
- numero di scheda 
- numero do cartao 
- numero do cartão 
- numéro de carte 
- nº carta 
- nº de carte 
- nº de la carte 
- nº de tarjeta 
- nº do cartao 
- nº do cartão 
- nº. do cartão 
- número de cartao 
- número de cartão 
- número de tarjeta 
- número do cartao 
- scheda dell'assegno 
- scheda dell'atmosfera 
- scheda dell'atmosfera 
- scheda della banca 
- scheda di controllo 
- scheda di debito 
- scheda matrice 
- schede dell'atmosfera 
- schede di controllo 
- schede di debito 
- schede matrici 
- scoprono la scheda 
- scoprono le schede 
- solo 
- supporti di scheda 
- supporto di scheda 
- switch 
- tarjeta atm 
- tarjeta credito 
- tarjeta de atm 
- tarjeta de credito 
- tarjeta de debito 
- tarjeta debito 
- tarjeta no
- tarjetahabiente 
- tipo della scheda 
- ufficio giapponese della 
- scheda 
- v pay 
- v-pay 
- visa 
- visa plus 
- visa electron 
- visto 
- visum 
- vpay   

#### Keyword_card_security_terms_dict

- card identification number
- card verification 
- cardi la verifica 
- cid 
- cod seg 
- cod seguranca 
- cod segurança 
- cod sicurezza 
- cod. seg 
- cod. seguranca 
- cod. segurança 
- cod. sicurezza 
- codice di sicurezza 
- codice di verifica 
- codigo 
- codigo de seguranca 
- codigo de segurança 
- crittogramma 
- cryptogram 
- cryptogramme 
- cv2 
- cvc 
- cvc2 
- cvn 
- cvv 
- cvv2 
- cód seguranca 
- cód segurança 
- cód. seguranca 
- cód. segurança 
- código 
- código de seguranca 
- código de segurança 
- de kaart controle 
- geeft nr uit 
- issue no 
- issue number 
- kaartidentificatienummer 
- kreditkartenprufnummer 
- kreditkartenprüfnummer 
- kwestieaantal 
- no. dell'edizione 
- no. di sicurezza 
- numero de securite 
- numero de verificacao 
- numero dell'edizione 
- numero di identificazione della 
- scheda 
- numero di sicurezza 
- numero van veiligheid 
- numéro de sécurité 
- nº autorizzazione 
- número de verificação 
- perno il blocco 
- pin block 
- prufziffer 
- prüfziffer 
- security code 
- security no 
- security number 
- sicherheits kode 
- sicherheitscode 
- sicherheitsnummer 
- speldblok 
- veiligheid nr 
- veiligheidsaantal 
- veiligheidscode 
- veiligheidsnummer 
- verfalldatum 

#### Keyword_card_expiration_terms_dict

- ablauf 
- data de expiracao 
- data de expiração 
- data del exp 
- data di exp 
- data di scadenza 
- data em que expira 
- data scad 
- data scadenza 
- date de validité 
- datum afloop 
- datum van exp 
- de afloop 
- espira 
- espira 
- exp date 
- exp datum 
- expiration 
- expire 
- expires 
- expiry 
- fecha de expiracion 
- fecha de venc 
- gultig bis 
- gultigkeitsdatum 
- gültig bis 
- gültigkeitsdatum 
- la scadenza 
- scadenza 
- valable 
- validade 
- valido hasta 
- valor 
- venc 
- vencimento 
- vencimiento 
- verloopt 
- vervaldag 
- vervaldatum 
- vto 
- válido hasta 


## EU driver's license number

These entities are in the EU Driver's License Number and are sensitive information types.

- [Austria](#austria-drivers-license-number) 
- [Belgium](#belgium-drivers-license-number)
- [Bulgaria](#bulgaria-drivers-license-number)
- [Croatia](#croatia-drivers-license-number)
- [Cyprus](#cyprus-drivers-license-number)
- [Czech](#czech-drivers-license-number)
- [Denmark](#denmark-drivers-license-number)
- [Estonia](#estonia-drivers-license-number)
- [Finland](#finland-drivers-license-number)
- [France](#france-drivers-license-number) 
- [Germany](#germany-drivers-license-number)
- [Greece](#greece-drivers-license-number)
- [Hungary](#hungary-drivers-license-number)
- [Ireland](#ireland-drivers-license-number)
- [Italy](#italy-drivers-license-number)
- [Latvia](#latvia-drivers-license-number)
- [Lithuania](#lithuania-drivers-license-number)
- [Luxemburg](#luxemburg-drivers-license-number)
- [Malta](#malta-drivers-license-number)
- [Netherlands](#netherlands-drivers-license-number)
- [Poland](#poland-drivers-license-number) 
- [Portugal](#portugal-drivers-license-number)
- [Romania](#romania-drivers-license-number)
- [Slovakia](#slovakia-drivers-license-number)
- [Slovenia](#slovenia-drivers-license-number)
- [Spain](#spain-drivers-license-number)
- [Sweden](#sweden-drivers-license-number)
- [U.K.](#uk-drivers-license-number)


## EU national identification number

These entities are in the EU National Identification Number and are sensitive information types.

- [Austria](#austria-identity-card)
- [Belgium](#belgium-national-number)
- [Bulgaria](#bulgaria-uniform-civil-number)
- [Croatia](#croatia-identity-card-number)
- [Cyprus](#cyprus-identity-card)
- [Czech](#czech-personal-identity-number)
- [Denmark](#denmark-personal-identification-number)
- [Estonia](#estonia-personal-identification-code)
- [Finland](#finland-national-id)
- [France](#france-national-id-card-cni)
- [Germany](#germany-identity-card-number)
- [Greece](#greece-national-id-card)
- [Hungary](#hungary-personal-identification-number)
- [Ireland](#ireland-personal-public-service-pps-number)
- [Italy](#italy-fiscal-code)
- [Latvia](#latvia-personal-code)
- [Lithuania](#lithuania-personal-code)
- [Luxemburg](#luxemburg-national-identification-number-natural-persons)
- [Malta](#malta-identity-card-number)
- [Netherlands](#netherlands-citizens-service-bsn-number)
- [Poland](#poland-national-id-pesel)
- [Portugal](#portugal-citizen-card-number)
- [Romania](#romania-personal-numeric-code-cnp)
- [Slovakia](#slovakia-personal-number)
- [Slovenia](#slovenia-unique-master-citizen-number)
- [Spain](#spain-dni)
- [U.K.](#uk-national-insurance-number-nino)										


## EU passport number 

These entities are in the EU passport number and are sensitive information types. These entities are in the EU passport number bundle.

- [Austria](#austria-passport-number)
- [Belgium](#belgium-passport-number)
- [Bulgaria](#bulgaria-passport-number)
- [Croatia](#croatia-passport-number)
- [Cyprus](#cyprus-passport-number)
- [Czech](#czech-passport-number)
- [Denmark](#denmark-passport-number)
- [Estonia](#estonia-passport-number)
- [Finland](#finland-passport-number)
- [France](#france-passport-number)
- [Germany](#germany-passport-number)
- [Greece](#greece-passport-number)
- [Hungary](#hungary-passport-number)
- [Ireland](#ireland-passport-number)
- [Italy](#italy-passport-number)
- [Latvia](#latvia-passport-number)
- [Lithuania](#lithuania-passport-number)
- [Luxemburg](#luxemburg-passport-number)
- [Malta](#malta-passport-number)
- [Netherlands](#netherlands-passport-number)
- [Poland](#poland-passport-number)
- [Portugal](#portugal-passport-number)
- [Romania](#romania-passport-number)
- [Slovakia](#slovakia-passport-number)
- [Slovenia](#slovenia-passport-number)
- [Spain](#spain-passport-number)
- [Sweden](#sweden-passport-number)
- [U.K.](#us--uk-passport-number)


## EU social security number or equivalent identification

These entities that are in the EU Social Security Number or equivalent identification and are sensitive information types.

- [Austria](#austria-social-security-number)
- [Belgium](#belgium-national-number)
- [Croatia](#croatia-personal-identification-oib-number)
- [Czech](#czech-personal-identity-number)
- [Denmark](#denmark-personal-identification-number)
- [Finland](#finland-national-id)
- [France](#france-social-security-number-insee)
- [Germany](#germany-identity-card-number)
- [Greece](#greece-national-id-card)
- [Hungary](#hungary-social-security-number-taj)
- [Portugal](#portugal-citizen-card-number)
- [Spain](#spain-social-security-number-ssn)
- [Sweden](#sweden-national-id)


## EU Tax identification number

These entities are in the EU Tax identification number sensitive information type.

- [Austria](#austria-tax-identification-number)
- [Belgium](#belgium-national-number)
- [Bulgaria](#bulgaria-uniform-civil-number)
- [Croatia](#croatia-identity-card-number)
- [Cyprus](#cyprus-tax-identification-number)
- [Czech](#czech-personal-identity-number)
- [Denmark](#denmark-personal-identification-number)
- [Estonia](#estonia-personal-identification-code)
- [Finland](#finland-national-id)
- [France](#france-tax-identification-number)
- [Germany](#germany-tax-identification-number)
- [Greece](#greece-tax-identification-number)
- [Hungary](#hungary-tax-identification-number)
- [Ireland](#ireland-personal-public-service-pps-number)
- [Italy](#italy-fiscal-code)
- [Latvia](#latvia-personal-code)
- [Lithuania](#lithuania-personal-code)
- [Luxemburg](#luxemburg-national-identification-number-non-natural-persons)
- [Malta](#malta-tax-identification-number)
- [Netherlands](#netherlands-tax-identification-number)
- [Poland](#poland-tax-identification-number)
- [Portugal](#portugal-tax-identification-number)
- [Romania](#romania-personal-numeric-code-cnp)
- [Slovakia](#slovakia-personal-number)
- [Slovenia](#slovenia-tax-identification-number)
- [Spain](#spain-tax-identification-number)
- [Sweden](#sweden-tax-identification-number)
- [U.K.](#uk-unique-taxpayer-reference-number)


## Finland driver's license number

### Format

10 digits containing a hyphen
  
### Pattern

10 digits containing a hyphen:
  
- six digits 
- a hyphen
- three digits 
- a digit or letter
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_finland_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_finland_eu_driver's_license_number` is found. 
    
```xml
      <!-- Finland Driver's License Number -->
      <Entity id="bb3b27a3-79bd-4ac4-81a7-f9fca3c7d1a7" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_finland_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_finland_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_finland_eu_driver's_license_number

- ajokortti
- permis de conduire
- ajokortin numero
- kuljettaja lic.
- körkort
- körkortnummer
- förare lic.
- ajokortit
- ajokortin numerot


## Finland european health insurance number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

20-digit number

### Pattern

20-digit number:

- 10 digits - 8024680246
- an optional space or hyphen
- 10 digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regex Regex_Finland_European_Health_Insurance_Number finds content that matches the pattern.
- A keyword from Keyword_Finland_European_Health_Insurance_Number is found.

```xml
      <!-- Finland European Health Insurance Number -->
      <Entity id="60f75aed-81bf-4625-89b0-0846b9248ee7" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_Finland_European_Health_Insurance_Number"/>
          <Match idRef="Keyword_Finland_European_Health_Insurance_Number"/>
        </Pattern>
      </Entity>
```
### Keywords

#### Keyword_finland_european_health_insurance_number

- ehic#
- ehic
- finlandehicnumber#
- finska sjukförsäkringskort
- health card
- health insurance card
- health insurance number
- hälsokort
- sairaanhoitokortin
- sairausvakuutuskortti
- sairausvakuutusnumero
- sjukförsäkring nummer
- sjukförsäkringskort
- suomen sairausvakuutuskortti
- terveyskortti


## Finland national ID

### Format

six digits plus a character indicating a century plus three digits plus a check digit

### Pattern

Pattern must include all of the following:
- six digits in the format DDMMYY, which are a date of birth 
- century marker (either '-', '+' or 'a') 
- three-digit personal identification number 
- a digit or letter (case insensitive) which is a check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- the function Func_finnish_national_id finds content that matches the pattern
- a keyword from Keyword_finnish_national_id is found
- the checksum passes

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- the function Func_finnish_national_id finds content that matches the pattern
- the checksum passes

```xml
      <!-- Finnish National ID-->
      <Entity id="338FD995-4CB5-4F87-AD35-79BD1DD926C1" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_finnish_national_id" />
          <Match idRef="Keyword_finnish_national_id" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_finnish_national_id" />
        </Pattern>
      </Entity>
```

### Keywords

- ainutlaatuinen henkilökohtainen tunnus
- henkilökohtainen tunnus
- henkilötunnus
- henkilötunnusnumero#
- henkilötunnusnumero
- hetu
- id no
- id number
- identification number
- identiteetti numero
- identity number
- idnumber
- kansallinen henkilötunnus
- kansallisen henkilökortin
- national id card
- national id no.
- personal id
- personal identity code
- personalidnumber#
- personbeteckning
- personnummer
- social security number
- sosiaaliturvatunnus
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- tunnistenumero
- tunnus numero
- tunnusluku
- tunnusnumero
- verokortti
- veronumero
- verotunniste
- verotunnus


## Finland passport number

This sensitive information type entity is available in the EU Passport Number sensitive information type and is available as a stand-alone sensitive information type entity.

### Format
combination of nine letters and digits

### Pattern
combination of nine letters and digits:
- two letters (not case-sensitive) 
- seven digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression `Regex_finland_passport_number` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keyword_finland_passport_number` is found.
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression `Regex_finland_passport_number` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keyword_finland_passport_number` is found.

```xml
      <!-- Finland Passport Number -->
      <Entity id="d1685ac3-1d3a-40f8-8198-32ef5669c7a5" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_finland_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_finland_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_finland_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_finland_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```
### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keyword_finland_passport_number

- suomalainen passi
- passin numero
- passin numero.#
- passin numero#
- passin numero.
- passi#
- passi number

#### Keywords_eu_passport_date

- date of issue
- date of expiry

## France driver's license number

This sensitive information type entity is available in the EU Driver's License Number sensitive information type and is available as a stand-alone sensitive information type entity.

### Format

12 digits

### Pattern

12 digits with validation to discount similar patterns such as French telephone numbers

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- the function Func_french_drivers_license finds content that matches the pattern.
- a keyword from Keyword_french_drivers_license is found.

```xml
    <!-- France Driver's License Number -->
    <Entity id="18e55a36-a01b-4b0f-943d-dc10282a1824" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_french_drivers_license" />
        <Match idRef="Keyword_french_drivers_license" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_french_drivers_license

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number
- permis de conduire
- licence number
- license number
- licence numbers
- license numbers
- numéros de licence


## France health insurance number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

21-digit number

### Pattern

21-digit number:

- 10 digits
- an optional space
- 10 digits
- an optional space
- a digit


### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- the regex Regex_France_Health_Insurance_Number finds content that matches the pattern.
- a keyword from Keyword_France_Health_Insurance_Number is found.

```xml
      <!-- France Health Insurance Number -->
      <Entity id="9bc2069e-76df-4ff9-ac02-2f519469e236" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_France_Health_Insurance_Number"/>
          <Match idRef="Keyword_France_Health_Insurance_Number"/>
        </Pattern>
      </Entity>
```
### Keywords

#### Keyword_France_health_insurance_number

- insurance card
- carte vitale
- carte d'assuré social


## France national id card (CNI)

### Format

12 digits

### Pattern

12 digits

### Checksum

No

### Definition

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_france_cni finds content that matches the pattern.
- A keyword from Keywords_france_eu_national_id_card is found.

```xml
    <!-- France CNI -->
    <Entity id="f741ac74-1bc0-4665-b69b-f0c7f927c0c4" patternsProximity="300" recommendedConfidence="65">
      <Pattern confidenceLevel="65">
        <IdMatch idRef="Regex_france_cni" />
        <Match idRef="Keywords_france_eu_national_id_card" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keywords_france_eu_national_id_card

- card number
- carte nationale d’identité
- carte nationale d'idenite no
- cni#
- cni
- compte bancaire
- national identification number
- national identity
- nationalidno#
- numéro d'assurance maladie
- numéro de carte vitale

   
## France passport number
This sensitive information type entity is available in the EU Passport Number sensitive information type. It's available as a stand-alone sensitive information type entity.

### Format

nine digits and letters

### Pattern

nine digits and letters:
- two digits 
- two letters (not case-sensitive) 
- five digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_fr_passport` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_france_eu_passport_number` is found.
- The regular expression `Regex_eu_passport_date3` finds date in the format DD MM YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_fr_passport` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_france_eu_passport_number` is found.


```xml
    <!-- France Passport Number -->
    <Entity id="3008b884-8c8c-4cd8-a289-99f34fc7ff5d" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_fr_passport" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_france_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date3" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_fr_passport" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_france_eu_passport_number" />
          </Any>
        </Pattern>
    </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_france_eu_passport_number

- numéro de passeport
- passeport n °
- passeport non
- passeport #
- passeport#
- passeportnon
- passeportn °
- passeport français
- passeport livre
- passeport carte
- numéro passeport
- passeport n°
- n° du passeport
- n° passeport

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## France social security number (INSEE)

### Format

15 digits

### Pattern

Must match one of two patterns:
- 13 digits followed by a space followed by two digits<br/>
or
- 15 consecutive digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_french_insee` finds content that matches the pattern.
- A keyword from Keyword_fr_insee is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_french_insee or Func_fr_insee finds content that matches the pattern.
- The checksum passes.

```xml
    <!-- France INSEE -->
    <Entity id="71f62b97-efe0-4aa1-aa49-e14de253619d" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_french_insee" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_fr_insee" />
        </Any>
      </Pattern>
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_french_insee" />
        <Match idRef="Keyword_fr_insee" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_fr_insee

- code sécu
- d'identité nationale
- insee
- fssn#
- le numéro d'identification nationale
- le code de la sécurité sociale
- national id
- national identification
- no d'identité
- no. d'identité
- numéro d'assurance
- numéro d'identité
- numero d'identite
- numéro de sécu
- numéro de sécurité sociale
- no d'identite
- no. d'identite
- ssn
- ssn#
- sécurité sociale
- securité sociale
- securite sociale
- socialsecuritynumber
- social security number
- social security code
- social insurance number


## France tax identification number

### Format

13 digits
  
### Pattern

13 digits
  
- One digit that must be 0, 1, 2, or 3
- One digit
- A space (optional)
- Two digits 
- A space (optional)
- Three digits 
- A space (optional)
- Three digits 
- A space (optional)
- Three check digits 

  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_france_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_france_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_france_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- France Tax Identification Number (numéro SPI.) -->
      <Entity id="ed59e77e-171d-442c-9ec1-88e2ebcb5b0a" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_france_eu_tax_file_number" />
          <Match idRef="Keywords_france_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_france_eu_tax_file_number" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_france_eu_telephone_number" />
            <Match idRef="Keywords_france_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>

```

### Keywords

#### Keywords_france_eu_tax_file_number

- numéro d'identification fiscale
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## France value added tax number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

13 character alphanumeric pattern

### Pattern

13 character alphanumeric pattern:

- two letters  - FR (case insensitive)
- an optional space or hyphen
- two letters or digits
- an optional space, dot, hyphen, or comma
- three digits
- an optional space, dot, hyphen, or comma
- three digits
- an optional space, dot, hyphen, or comma
- three digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_france_value_added_tax_number finds content that matches the pattern.
- A keyword from Keywords_france_value_added_tax_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_france_value_added_tax_number finds content that matches the pattern.

```xml
      <!-- France Value Added Tax Number -->
      <Entity id="949121e6-ad9f-4379-8731-710342baea78" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_france_value_added_tax_number" />
          <Match idRef="Keywords_france_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_france_value_added_tax_number" />
        </Pattern>
      </Entity>
```
### Keywords

#### Keyword_France_value_added_tax_number

- vat number
- vat no
- vat#
- value added tax
- siren identification no numéro d'identification taxe sur valeur ajoutée
- taxe valeur ajoutée
- taxe sur la valeur ajoutée
- n° tva
- numéro de tva
- numéro d'identification siren


## Germany driver's license number

This sensitive information type entity is included in the EU Driver's License Number sensitive information type. It's available as a stand-alone sensitive information type entity.

### Format

combination of 11 digits and letters

### Pattern

11 digits and letters (not case-sensitive):
- a digit or letter 
- two digits 
- six digits or letters 
- a digit 
- a digit or letter

### Checksum

Yes

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_german_drivers_license finds content that matches the pattern.
- A keyword from Keyword_german_drivers_license_number is found.
- The checksum passes.

```xml
    <!-- German Driver's License Number -->
    <Entity id="91da9335-1edb-45b7-a95f-5fe41a16c63c" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_german_drivers_license" />
        <Match idRef="Keyword_german_drivers_license" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_german_drivers_license_number

- ausstellungsdatum
- ausstellungsort
- ausstellende behöde
- ausstellende behorde
- ausstellende behoerde
- führerschein
- fuhrerschein
- fuehrerschein
- führerscheinnummer
- fuhrerscheinnummer
- fuehrerscheinnummer
- führerschein- 
- fuhrerschein- 
- fuehrerschein- 
- führerscheinnummernr
- fuhrerscheinnummernr
- fuehrerscheinnummernr
- führerscheinnummerklasse
- fuhrerscheinnummerklasse
- fuehrerscheinnummerklasse
- nr-führerschein
- nr-fuhrerschein
- nr-fuehrerschein
- no-führerschein
- no-fuhrerschein
- no-fuehrerschein
- n-führerschein
- n-fuhrerschein
- n-fuehrerschein
- permis de conduire
- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dlno


## Germany identity card number

### Format

since 1 November 2010: Nine letters and digits

from 1 April 1987 until 31 October 2010: 10 digits

### Pattern

since 1 November 2010:
- one letter (not case-sensitive) 
- eight digits

from 1 April 1987 until 31 October 2010:
- 10 digits

### Checksum

No

### Definition

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_germany_id_card finds content that matches the pattern.
- A keyword from Keyword_germany_id_card is found.

```xml
<!-- Germany Identity Card Number -->
<Entity id="e577372f-c42e-47a0-9d85-bebed1c237d4" recommendedConfidence="65" patternsProximity="300">
  <Pattern confidenceLevel="65">
     <IdMatch idRef="Regex_germany_id_card"/>
     <Match idRef="Keyword_germany_id_card"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_germany_id_card

- ausweis
- gpid
- identification
- identifikation
- identifizierungsnummer
- identity card
- identity number
- id-nummer
- personal id
- personalausweis
- persönliche id nummer
- persönliche identifikationsnummer
- persönliche-id-nummer


## Germany passport number

This sensitive information type entity is included in the EU Passport Number sensitive information type and is available as a stand-alone sensitive information type entity.

### Format

10 digits or letters

### Pattern

Pattern must include all of the following:
- first character is a digit or a letter from this set (C, F, G, H, J, K) 
- three digits 
- five digits or letters from this set (C, -H, J-N, P, R, T, V-Z) 
- a digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_german_passport finds content that matches the pattern.
- A keyword from `Keyword_german_passport` or `Keywords_eu_passport_number_common` is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_german_passport_data finds content that matches the pattern.
- A keyword from `Keyword_german_passport` or `Keywords_eu_passport_number_common` is found.
- The checksum passes.

```xml
    <!-- German Passport Number -->
    <Entity id="2e3da144-d42b-47ed-b123-fbf78604e52c" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_german_passport" />
        <Any minMatches="1">
          <Match idRef="Keyword_german_passport" />
          <Match idRef="Keywords_eu_passport_number_common" />
        </Any>
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_german_passport_data" />
        <Any minMatches="1">
          <Match idRef="Keyword_german_passport" />
          <Match idRef="Keywords_eu_passport_number_common" />
        </Any>
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_german_passport

- reisepasse
- reisepassnummer
- No-Reisepass 
- Nr-Reisepass
- Reisepass-Nr
- Passnummer
- reisepässe
- passeport no.
- passeport no

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers


## Germany tax identification number

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits
  
- Two digits 
- An optional space
- Three digits 
- An optional space
- Three digits 
- An optional space
- Two digits
- one check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_germany_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_germany_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_germany_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Germany Tax Identification Number -->
      <Entity id="43316a89-9880-40cf-b980-04bc7eefcec5" patternsProximity="300" recommendedConfidence="85">
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

- identifikationsnummer
- steuer id
- steueridentifikationsnummer
- steuernummer
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- zinn#
- zinn
- zinnnummer


## Germany value added tax number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

11 character alphanumeric pattern

### Pattern

11-character alphanumeric pattern:

- a letter D or d
- a letter E or e
- an optional space
- three digits
- an optional space or comma
- three digits
- an optional space or comma
- three digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_germany_value_added_tax_number finds content that matches the pattern.
- A keyword from Keywords_germany_value_added_tax_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_germany_value_added_tax_number finds content that matches the pattern.

```xml
      <!-- Germany Value Added Tax Number -->
      <Entity id="db177eb2-8811-4842-bffc-128c14aa219f" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_germany_value_added_tax_number" />
          <Match idRef="Keywords_germany_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_germany_value_added_tax_number" />
        </Pattern>
      </Entity>
```
### Keywords

#### Keyword_germany_value_added_tax_number

- vat number
- vat no
- vat#
- vat#  mehrwertsteuer
- mwst
- mehrwertsteuer identifikationsnummer
- mehrwertsteuer nummer


## Greece driver's license number

This sensitive information type entity is included in the EU Driver's License Number sensitive information type and is available as a stand-alone sensitive information type entity.

### Format

nine digits without spaces and delimiters
  
### Pattern

nine digits 
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_greece_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_greece_eu_driver's_license_number` is found. 
    
```xml
      <!-- Greece Driver's License Number -->
      <Entity id="7a2200b5-aacf-4e3c-ab36-136d3e68b7da" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_greece_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_greece_eu_driver's_license_number

- δεια οδήγησης
- Adeia odigisis
- Άδεια οδήγησης
- Δίπλωμα οδήγησης


## Greece national ID card

### Format

Combination of 7-8 letters and numbers plus a dash

### Pattern

Seven letters and numbers (old format):
- One letter (any letter of the Greek alphabet) 
- A dash 
- Six digits

Eight letters and numbers (new format):
- Two letters whose uppercase character occurs in both the Greek and Latin alphabets (ABEZHIKMNOPTYX) 
- A dash 
- Six digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_greece_id_card finds content that matches the pattern.
- A keyword from Keyword_greece_id_card is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_greece_id_card finds content that matches the pattern.

```xml
      <!-- Greece National ID Card -->
      <Entity id="82568215-1da1-46d3-874a-d2294d81b5ac" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_greece_id_card" />
          <Match idRef="Keyword_greece_id_card" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_greece_id_card" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_greece_id_card

- greek id
- greek national id
- greek personal id card
- greek police id
- identity card
- tautotita
- ταυτότητα
- ταυτότητας


## Greece passport number

### Format

Two letters followed by seven digits with no spaces or delimiters
  
### Pattern

Two letters followed by seven digits
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_greece_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_greece_eu_passport_number` is found. 
- The regular expression `Regex_greece_eu_passport_date` finds date in the format DD MMM YY (Example - 28 Aug 19) or a keyword from `Keywords_greece_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_greece_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_greece_eu_passport_number` is found. 
    
```xml
      <!-- Greece Passport Number -->
      <Entity id="7e65eb47-cdf9-4f52-8f90-2a27d5ee67e3" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_greece_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_greece_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_greece_eu_passport_date" />
            <Match idRef="Keywords_greece_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_greece_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_greece_eu_passport_number

- αριθμός διαβατηρίου
- αριθμούς διαβατηρίου
- αριθμός διαβατηριο


## Greece Social Security Number (AMKA)
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

Eleven digits without spaces and delimiters
  
### Pattern

- 6 digits as date of birth YYMMDD
- 4 digits
- a check digit
  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_greece_eu_ssn` finds content that matches the pattern. 
- A keyword from  `Keywords_greece_eu_ssn_or_equivalent` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_greece_eu_ssn` finds content that matches the pattern. 

```xml
      <!-- Greece Social Security Number (AMKA) -->
      <Entity id="e39b03f4-50ea-41ae-af7a-a4b9539596ad" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_greece_eu_ssn" />
          <Match idRef="Keywords_greece_eu_ssn_or_equivalent" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_greece_eu_ssn" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_greece_eu_ssn_or_equivalent

- ssn
- ssn#
- social security no
- socialsecurityno#
- social security number
- amka
- a.m.k.a.
- Αριθμού Μητρώου Κοινωνικής Ασφάλισης


## Greece tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

Nine digits without spaces and delimiters
  
### Pattern

Nine digits
  
### Checksum

Not applicable
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_greece_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_greece_eu_tax_file_number` is found. 
    
```xml
      <!-- Greek Tax Identification Number -->
      <Entity id="15a54a5a-53d4-4080-ad43-a2a4fe1d3bf7" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_tax_file_number" />
          <Match idRef="Keywords_greece_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_greece_eu_tax_file_number

- afm#
- afm
- aφμ|aφμ αριθμός
- aφμ
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- tax registry no
- tax registry number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- taxregistryno#
- tin id
- tin no
- tin#
- αριθμός φορολογικού μητρώου
- τον αριθμό φορολογικού μητρώου
- φορολογικού μητρώου νο


## Hong Kong identity card (HKID) number

### Format

Combination of 8-9 letters and numbers plus optional parentheses around the final character

### Pattern

Combination of 8-9 letters:
- 1-2 letters (not case-sensitive) 
- Six digits 
- The final character (any digit or the letter A), which is the check digit and is optionally enclosed in parentheses.

### Checksum

Yes

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_hong_kong_id_card finds content that matches the pattern.
- A keyword from Keyword_hong_kong_id_card is found.
- The checksum passes.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_hong_kong_id_card finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Hong Kong Identity Card (HKID) number -->
<Entity id="e63c28a7-ad29-4c17-a41a-3d2a0b70fd9c" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_hong_kong_id_card"/>
     <Match idRef="Keyword_hong_kong_id_card"/>
  </Pattern>
  <Pattern confidenceLevel="65">
     <IdMatch idRef="Func_hong_kong_id_card"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_hong_kong_id_card

- hkid
- hong kong identity card
- HKIDC
- id card
- identity card
- hk identity card
- hong kong id
- 香港身份證
- 香港永久性居民身份證
- 身份證
- 身份証
- 身分證
- 身分証
- 香港身份証
- 香港身分證
- 香港身分証
- 香港身份證
- 香港居民身份證
- 香港居民身份証
- 香港居民身分證
- 香港居民身分証
- 香港永久性居民身份証
- 香港永久性居民身分證
- 香港永久性居民身分証
- 香港永久性居民身份證
- 香港非永久性居民身份證
- 香港非永久性居民身份証
- 香港非永久性居民身分證
- 香港非永久性居民身分証
- 香港特別行政區永久性居民身份證
- 香港特別行政區永久性居民身份証
- 香港特別行政區永久性居民身分證
- 香港特別行政區永久性居民身分証
- 香港特別行政區非永久性居民身份證
- 香港特別行政區非永久性居民身份証
- 香港特別行政區非永久性居民身分證
- 香港特別行政區非永久性居民身分証

   
## Hungary driver's license number

### Format

Two letters followed by six digits
  
### Pattern

Two letters and six digits:
  
- Two letters (not case-sensitive) 
- Six digits
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_hungary_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_hungary_eu_driver's_license_number` is found. 
    
```xml
      <Entity id="9d31c46b-6e6b-444c-aeb1-6dd7e604bb24" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_hungary_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_hungary_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_hungary_eu_driver's_license_number

- vezetoi engedely
- vezetői engedély
- vezetői engedélyek


## Hungary personal identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

11 digits
  
### Pattern

11 digits:
  
- One digit that corresponds to gender (1-male, 2-female, other numbers are also possible for citizens born before 1900 or citizens with double citizenship) 
- Six digits that correspond to birth date (YYMMDD)
- Three digits that correspond to a serial number
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_hungary_eu_national_id_card` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Hungary Personal Identification Number -->
      <Entity id="7b5cc218-7046-47d9-80c9-f325b50896ca" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_hungary_eu_national_id_card" />
          <Match idRef="Keywords_hungary_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_hungary_eu_national_id_card" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_hungary_eu_telephone_number" />
            <Match idRef="Keywords_hungary_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_hungary_eu_national_id_card

- id number
- identification number
- sz ig
- sz. ig.
- sz.ig.
- személyazonosító igazolvány
- személyi igazolvány


## Hungary passport number

### Format

Two letters followed by six or seven digits with no spaces or delimiters
  
### Pattern

Two letters followed by six or seven digits
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_hungary_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_hungary_eu_passport_number` is found. 
- The regular expression `Regex_hungary_eu_passport_date` finds date in the format  DD MMM/MMM YY (Example - 01 MÁR/MAR 12) or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_hungary_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_hungary_eu_passport_number` is found. 
    
```xml
      <!-- Hungary Passport Number -->
      <Entity id="5b483910-9aa7-4c99-9917-f4001464bda7" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_hungary_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_hungary_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_hungary_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_hungary_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_hungary_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```
### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_hungary_eu_passport_number

- útlevél száma
- Útlevelek száma
- útlevél szám

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Hungary social security number (TAJ)

### Format

Nine digits without spaces and delimiters
  
### Pattern

Nine digits
  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_ssn_or_equivalent` finds content that matches the pattern. 
- A keyword from  `Keywords_hungary_eu_ssn_or_equivalent` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```xml
      <!-- Hungarian Social Security Number (TAJ) -->
      <Entity id="0de78315-9537-47f5-95ab-b3e77eba3993" patternsProximity="300" recommendedConfidence="85">
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

- hungarian social security number
- social security number
- socialsecuritynumber#
- hssn#
- socialsecuritynno
- hssn
- taj
- taj#
- ssn
- ssn#
- social security no
- áfa
- közösségi adószám
- általános forgalmi adó szám
- hozzáadottérték adó
- áfa szám
- magyar áfa szám


## Hungary tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

10 digits with no spaces or delimiters
  
### Pattern

10 digits:
  
- One digit that must be "8" 
- Eight digits
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_hungary_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_hungary_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Hungary Tax Identification Number -->
      <Entity id="ede42eb4-59d9-49eb-9603-d7853fbda91d" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_hungary_eu_tax_file_number" />
          <Match idRef="Keywords_hungary_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_hungary_eu_tax_file_number" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_hungary_eu_telephone_number" />
            <Match idRef="Keywords_hungary_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_hungary_eu_tax_file_number

- adóazonosító szám
- adóhatóság szám
- adószám
- hungarian tin
- hungatiantin#
- tax authority no
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- vat number


## Hungary value added tax number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

10 character alphanumeric pattern

### Pattern

10 character alphanumeric pattern:

- two letters - HU or hu
- optional space
- eight digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_hungarian_value_added_tax_number finds content that matches the pattern.
- A keyword from Keywords_hungarian_value_added_tax_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_hungarian_value_added_tax_number finds content that matches the pattern.

```xml
      <!-- Hungarian Value Added Tax Number -->
      <Entity id="976349a0-683b-477a-90f8-ff0a220d5592" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_hungarian_value_added_tax_number" />
          <Match idRef="Keywords_hungarian_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_hungarian_value_added_tax_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_Hungary_value_added_tax_number

- vat
- value added tax number
- vat#
- vatno#
- hungarianvatno#
- tax no.
- value added tax áfa
- közösségi adószám
- általános forgalmi adó szám
- hozzáadottérték adó
- áfa szám


## India permanent account number (PAN)

### Format

10 letters or digits

### Pattern

10 letters or digits:
- Three letters (not case-sensitive) 
- A letter in C, P, H, F, A, T, B, L, J, G (not case-sensitive)
- A letter
- Four digits 
- A letter that is an alphabetic check digit

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_india_permanent_account_number finds content that matches the pattern.
- A keyword from Keyword_india_permanent_account_number is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_india_permanent_account_number finds content that matches the pattern.


```xml
      <!-- India Permanent Account Number -->
      <Entity id="2602bfee-9bb0-47a5-a7a6-2bf3053e2804" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_india_permanent_account_number" />
          <Match idRef="Keyword_india_permanent_account_number" />
        </Pattern>
        <Version minEngineVersion="15.20.3520.000">
          <Pattern confidenceLevel="65">
            <IdMatch idRef="Regex_india_permanent_account_number" />
          </Pattern>
        </Version>
      </Entity>
```

### Keywords

#### Keyword_india_permanent_account_number

- Permanent Account Number 
- PAN 
   
## India unique identification (Aadhaar) number

### Format

12 digits containing optional spaces or dashes

### Pattern

12 digits:
- A digit which is not 0 or 1
- Three digits 
- An optional space or dash 
- Four digits 
- An optional space or dash 
- The final digit, which is the check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_india_aadhaar finds content that matches the pattern.
- A keyword from Keyword_india_aadhar is found.
- The checksum passes.
- 
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_india_aadhaar finds content that matches the pattern.
- The checksum passes.

```xml
<!-- India Unique Identification (Aadhaar) number -->
<Entity id="1ca46b29-76f5-4f46-9383-cfa15e91048f" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_india_aadhaar"/>
     <Match idRef="Keyword_india_aadhar"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_india_aadhaar"/>
  </Pattern>
</Entity>
```
### Keywords
   
#### Keyword_india_aadhar
- aadhaar
- aadhar
- aadhar#
- uid
- आधार
- uidai
   
## Indonesia identity card (KTP) number

### Format

16 digits containing optional periods

### Pattern

16 digits:
- Two-digit province code 
- A period (optional) 
- Two-digit regency or city code 
- Two-digit subdistrict code 
- A period (optional) 
- Six digits in the format DDMMYY, which are the date of birth 
- A period (optional) 
- Four digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression Regex_indonesia_id_card finds content that matches the pattern.
- A keyword from Keyword_indonesia_id_card is found.

```xml
<!-- Indonesia Identity Card (KTP) Number -->
<Entity id="da68fdb0-f383-4981-8c86-82689d3b7d55" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Regex_indonesia_id_card"/>
     <Match idRef="Keyword_indonesia_id_card"/>
</Entity>
```

### Keywords
   
#### Keyword_indonesia_id_card

- KTP
- Kartu Tanda Penduduk 
- Nomor Induk Kependudukan 
   
## International banking account number (IBAN)

### Format

Country code (two letters) plus check digits (two digits) plus bban number (up to 30 characters)

### Pattern

Pattern must include all of the following:

- Two-letter country code
- Two check digits (followed by an optional space) 
- 1-7 groups of four letters or digits (can be separated by spaces)
- 1-3 letters or digits

The format for each country is slightly different. The IBAN sensitive information type covers these 60 countries:

ad, ae, al, at, az, ba, be, bg, bh, ch, cr, cy, cz, de, dk, do, ee, es, fi, fo, fr, gb, ge, gi, gl, gr, hr, hu, ie, il, is, it, kw, kz, lb, li, lt, lu, lv, mc, md, me, mk, mr, mt, mu, nl, no, pl, pt, ro, rs, sa, se, si, sk, sm, tn, tr, vg

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_iban finds content that matches the pattern.
- The checksum passes.

```xml
<Entity id="e7dc4711-11b7-4cb0-b88b-2c394a771f0e" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_iban" />
  </Pattern>
</Entity>
```

### Keywords

None

   
## International classification of diseases (ICD-10-CM)

### Format

Dictionary

### Pattern

Keyword

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- A keyword from Dictionary_icd_10_updated is found.
- A keyword from Dictionary_icd_10_codes is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- A keyword from Dictionary_icd_10_ updated is found.

```xml
      <!-- ICD-10 CM -->
      <Entity id="3356946c-6bb7-449b-b253-6ffa419c0ce7" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Dictionary_icd_10_updated" />
          <Match idRef="Dictionary_icd_10_codes" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Dictionary_icd_10_updated" />
        </Pattern>

```

### Keywords

Any term from the Dictionary_icd_10_updated keyword dictionary, which is based on the [International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM)](https://go.microsoft.com/fwlink/?linkid=852604). This type looks only for the term, not the insurance codes.

Any term from the Dictionary_icd_10_codes keyword dictionary, which is based on the [International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM)](https://go.microsoft.com/fwlink/?linkid=852604). This type looks only for insurance codes, not the description.

## International classification of diseases (ICD-9-CM)

### Format

Dictionary

### Pattern

Keyword

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- A keyword from Dictionary_icd_9_updated is found.
- A keyword from Dictionary_icd_9_codes is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- A keyword from Dictionary_icd_9_updated is found.

```xml
    <Entity id="fa3f9c74-ee07-4c52-b5f2-085d6b2c0ec4" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Dictionary_icd_9_updated" />
          <Match idRef="Dictionary_icd_9_codes" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Dictionary_icd_9_updated" />
        </Pattern>
      </Entity>
```

### Keywords

Any term from the Dictionary_icd_9_updated keyword dictionary, which is based on the [International Classification of Diseases,Ninth Revision, Clinical Modification (ICD-9-CM)](https://go.microsoft.com/fwlink/?linkid=852605). This type looks only for the term, not the insurance codes.

Any term from the Dictionary_icd_9_codes keyword dictionary, which is based on the [International Classification of Diseases,Ninth Revision, Clinical Modification (ICD-9-CM)](https://go.microsoft.com/fwlink/?linkid=852605). This type looks only for insurance codes, not the description.

## IP address

### Format

#### IPv4:
Complex pattern that accounts for formatted (periods) and unformatted (no periods) versions of the IPv4 addresses

#### IPv6:
Complex pattern that accounts for formatted IPv6 numbers (which include colons)

### Pattern

### Checksum

No

### Definition

For IPv6, a DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_ipv6_address finds content that matches the pattern.
- No keyword from Keyword_ipaddress is found.

For IPv4, a DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_ipv4_address finds content that matches the pattern.
- A keyword from Keyword_ipaddress is found.

For IPv6, a DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_ipv6_address finds content that matches the pattern.
- No keyword from Keyword_ipaddress is found.

```xml
    <!-- IP Address -->
    <Entity id="1daa4ad5-e2dd-4ca4-a788-54722c09efb2" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Regex_ipv6_address" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_ipaddress" />
        </Any>
      </Pattern>
      <Pattern confidenceLevel="95">
        <IdMatch idRef="Regex_ipv4_address" />
        <Any minMatches="1">
          <Match idRef="Keyword_ipaddress" />
        </Any>
      </Pattern>
      <Pattern confidenceLevel="95">
        <IdMatch idRef="Regex_ipv6_address" />
        <Any minMatches="1">
          <Match idRef="Keyword_ipaddress" />
        </Any>
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_ipaddress

- IP (this keyword is case-sensitive)
- ip address 
- ip addresses
- internet protocol
- IP-כתובת ה 

## Ireland driver's license number

### Format

Six digits followed by four letters
  
### Pattern

Six digits and four letters:
  
- Six digits
- Four letters (not case-sensitive)
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_ireland_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_ireland_eu_driver's_license_number` is found. 
    
```xml
      <!-- Ireland Driver's License Number -->
      <Entity id="e01bccd9-eb4d-414f-ace1-e9b6a4c4a2ca" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_ireland_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_ireland_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_ireland_eu_driver's_license_number

- ceadúnas tiomána
- ceadúnais tiomána

## Ireland passport number

### Format

Two letters or digits followed by seven digits with no spaces or delimiters
  
### Pattern

Two letters or digits followed by seven digits:
  
- Two digits or letters (not case-sensitive)
- Seven digits
    
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_ireland_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_ireland_eu_passport_number` is found. 
- The regular expression `Regex_ireland_eu_passport_date` finds date in the format DD MMM/MMM YYYY (Example - 01 BEA/MAY 1988) or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_ireland_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_ireland_eu_passport_number` is found.
    
```xml
      <!-- Ireland Passport Number -->
      <Entity id="a2130f27-9ee2-4103-84f9-a6b1ee7d0cbf" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_ireland_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_ireland_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_ireland_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_ireland_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_ireland_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_ireland_eu_passport_number

- passeport numero
- uimhreacha pasanna
- uimhir pas
- uimhir phas
- uimhreacha pas
- uimhir cárta
- uimhir chárta

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Ireland personal public service (PPS) number

### Format

Old format (until 31 December 2012):
- seven digits followed by 1-2 letters 

New format (1 January 2013 and after):
- seven digits followed by two letters

### Pattern

Old format (until 31 December 2012):
- seven digits 
- one to two letters (not case-sensitive) 

New format (1 January 2013 and after):
- seven digits 
- a letter (not case-sensitive) which is an alphabetic check digit 
- An optional letter in the range A-I, or “W”

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_ireland_pps finds content that matches the pattern.
- A keyword from Keywords_ireland_eu_national_id_card is found.
- The checksum passes.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_ireland_pps finds content that matches the pattern.
- The checksum passes.

```xml
      <!-- Ireland Personal Public Service (PPS) Number -->
      <Entity id="1cdb674d-c19a-4fcf-9f4b-7f56cc87345a" patternsProximity="300" recommendedConfidence="85" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_ireland_pps" />
          <Match idRef="Keywords_ireland_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_ireland_pps" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_ireland_eu_national_id_card

- client identity service
- identification number
- personal id number
- personal public service number
- personal service no
- phearsanta seirbhíse poiblí
- pps no
- pps number
- pps num
- pps service no
- ppsn
- ppsno#
- ppsno
- psp
- public service no
- publicserviceno#
- publicserviceno
- revenue and social insurance number
- rsi no
- rsi number
- rsin
- seirbhís aitheantais cliant
- uimh
- uimhir aitheantais chánach
- uimhir aitheantais phearsanta
- uimhir phearsanta seirbhíse poiblí
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## Israel bank account number

### Format

13 digits

### Pattern

Formatted:
- two digits 
- a dash 
- three digits 
- a dash 
- eight digits

Unformatted:
- 13 consecutive digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_israel_bank_account_number finds content that matches the pattern.
- A keyword from Keyword_israel_bank_account_number is found.

```xml
<!-- Israel Bank Account Number -->
<Entity id="7d08b2ff-a0b9-437f-957c-aeddbf9b2b25" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_israel_bank_account_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_israel_bank_account_number" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_israel_bank_account_number

- Bank Account Number 
- Bank Account 
- Account Number 
- מספר חשבון בנק 
   
## Israel national identification number

### Format

nine digits

### Pattern

nine consecutive digits

### Checksum

Yes

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_israeli_national_id_number finds content that matches the pattern.
- A keyword from Keyword_Israel_National_ID is found.
- The checksum passes.

```xml
<!-- Israel National ID Number -->
<Entity id="e05881f5-1db1-418c-89aa-a3ac5c5277ee" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_israeli_national_id_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_Israel_National_ID" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_Israel_National_ID

-   מספר זהות
-   מספר זיה וי
-   מספר זיהוי ישר אלי      
-   זהותישר אלית
-   هو ية اسرائيل ية عدد
-   هوية إسرائ يلية
-   رقم الهوية
-   عدد هوية فريدة من نوعها
-   idnumber#
-   id number
-   identity no        
-   identitynumber#
-   identity number
-   israeliidentitynumber       
-   personal id
-   unique id  

   
## Italy driver's license number

This sensitive information type entity is included in the EU Driver's License Number sensitive information type and is available as a stand-alone sensitive information type entity.

### Format

a combination of 10 letters and digits

### Pattern

a combination of 10 letters and digits:
- one letter (not case-sensitive) 
- the letter "A" or "V" (not case-sensitive) 
- seven digits
- one letter (not case-sensitive)

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression `Regex_italy_drivers_license_number` finds content that matches the pattern.
- A keyword from `Keywords_eu_driver's_license_number` or `Keyword_italy_drivers_license_number` is found.

```xml
    <!-- Italy Driver's license Number -->
    <Entity id="97d6244f-9157-41bd-8e0c-9d669a5c4d71" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_italy_drivers_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keyword_italy_drivers_license_number" />
          </Any>
        </Pattern>
    </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number

#### Keyword_italy_drivers_license_number

- numero di patente
- patente di guida 
- patente guida
- patenti di guida
- patenti guida


## Italy fiscal code
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

a 16-character combination of letters and digits in the specified pattern
  
### Pattern

A 16-character combination of letters and digits:
- three letters that correspond to the first three consonants in the family name
- three letters that correspond to the first, third, and fourth consonants in the first name
- two digits that correspond to the last digits of the birth year
- one letter that corresponds to the letter for the month of birth—letters are used in alphabetical order, but only the letters A to E, H, L, M, P, R to T are used (so, January is A and October is R)
- two digits that correspond to the day of the month of birth—in order to differentiate between genders, 40 is added to the day of birth for women
- four digits that correspond to the area code specific to the municipality where the person was born (country-wide codes are used for foreign countries)
- one parity digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_italy_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_italy_eu_national_id_card` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_italy_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Italy Fiscal Code -->
      <Entity id="4cd79172-8da9-4ff5-9188-98b1e7e2eca6" patternsProximity="300" recommendedConfidence="85">
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

- codice fiscal
- codice fiscale
- codice id personale
- codice personale
- fiscal code
- numero certificato personale
- numero di identificazione fiscale
- numero id personale
- numero personale
- personal certificate number
- personal code
- personal id code
- personal id number
- personalcodeno#
- tax code
- tax id
- tax identification no
- tax identification number
- tax identity number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## Italy passport number

### Format

two letters or digits followed by seven digits with no spaces or delimiters
  
### Pattern

two letters or digits followed by seven digits:
  
- two digits or letters (not case-sensitive)
- seven digits
    
### Checksum

not applicable
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_italy_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_italy_eu_passport_number` is found. 
- The regular expression `Regex_italy_eu_passport_date` finds date in the format DD MMM/MMM YYYY (Example - 01 GEN/JAN 1988) or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_italy_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_italy_eu_passport_number` is found. 
    
```xml
      <!-- Italy Passport Number -->
      <Entity id="39811019-4750-445f-b26d-4c0e6c431544" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_italy_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_italy_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_italy_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_italy_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_italy_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_italy_eu_passport_number

- italiana passaporto
- passaporto italiana
- passaporto numero
- numéro passeport
- numero di passaporto
- numeri del passaporto
- passeport italien

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Italy value added tax number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

13 character alphanumeric pattern with optional delimiters

### Pattern

13 character alphanumeric pattern with optional delimiters:

- I or i
- T or t
- optional space, dot, hyphen, or comma
- 11 digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_italy_value_added_tax_number finds content that matches the pattern.
- A keyword from Keywords_italy_value_added_tax_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_italy_value_added_tax_number finds content that matches the pattern.

```xml
      <!-- Italy Value Added Tax -->
      <Entity id="26a8cc07-2283-4a2a-ab1d-4ab643c4c67f" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_italy_value_added_tax_number" />
          <Match idRef="Keywords_italy_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_italy_value_added_tax_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_italy_value_added_tax_number

- vat number
- vat no
- vat#
- iva
- iva#


## Japan bank account number

### Format

seven or eight digits

### Pattern

bank account number:
- seven or eight digits
- bank account branch code:
- four digits 
- a space or dash (optional) 
- three digits

Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_bank_account finds content that matches the pattern.
- A keyword from Keyword_jp_bank_account is found.
- One of the following is true:
- The function Func_jp_bank_account_branch_code finds content that matches the pattern.
- A keyword from Keyword_jp_bank_branch_code is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_bank_account finds content that matches the pattern.
- A keyword from Keyword_jp_bank_account is found.

```xml
<!-- Japan Bank Account Number -->
<Entity id="d354f95b-96ee-4b80-80bc-4377312b55bc" patternsProximity="300" recommendedConfidence="75">
  <Version minEngineVersion="15.01.0131.000">
    <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_jp_bank_account" />
          <Match idRef="Keyword_jp_bank_account" />
          <Any minMatches="1">
            <Match idRef="Func_jp_bank_account_branch_code" />
            <Match idRef="Keyword_jp_bank_branch_code" />
          </Any>
      </Pattern>
  </Version>    
     <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_jp_bank_account" />
        <Match idRef="Keyword_jp_bank_account" />
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_jp_bank_account

- Checking Account Number 
- Checking Account 
- Checking Account # 
- Checking Acct Number 
- Checking Acct # 
- Checking Acct No. 
- Checking Account No. 
- Bank Account Number 
- Bank Account 
- Bank Account # 
- Bank Acct Number 
- Bank Acct # 
- Bank Acct No. 
- Bank Account No. 
- Savings Account Number 
- Savings Account 
- Savings Account # 
- Savings Acct Number 
- Savings Acct # 
- Savings Acct No. 
- Savings Account No. 
- Debit Account Number 
- Debit Account 
- Debit Account # 
- Debit Acct Number 
- Debit Acct # 
- Debit Acct No. 
- Debit Account No. 
- 口座番号
- 銀行口座
- 銀行口座番号
- 総合口座
- 普通預金口座
- 普通口座
- 当座預金口座
- 当座口座
- 預金口座
- 振替口座
- 銀行
- バンク

#### Keyword_jp_bank_branch_code

- 支店番号
- 支店コード
- 店番号

## Japan driver's license number

### Format

12 digits

### Pattern

12 consecutive digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_drivers_license_number finds content that matches the pattern.
- A keyword from Keyword_jp_drivers_license_number is found.

```xml
<!-- Japan Driver's License Number -->
<Entity id="c6011143-d087-451c-8313-7f6d4aed2270" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_jp_drivers_license_number" />
        <Match idRef ="Keyword_jp_drivers_license_number" />
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_jp_drivers_license_number

- driverlicense
- driverslicense
- driver'slicense
- driverslicenses
- driver'slicenses
- driverlicenses
- dl#
- dls#
- lic#
- lics#
- 運転免許証
- 運転免許
- 免許証
- 免許
- 運転免許証番号
- 運転免許番号
- 免許証番号
- 免許番号
- 運転免許証ナンバー
- 運転免許ナンバー
- 免許証ナンバー
- 運転免許証no
- 運転免許no
- 免許証no
- 免許no
- 運転経歴証明書番号
- 運転経歴証明書
- 運転免許証No.
- 運転免許No.
- 免許証No.
- 免許No.
- 運転免許証#
- 運転免許#
- 免許証#
- 免許#


## Japan My Number - Corporate
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

13-digit number

### Pattern

13-digit number:

- one digit from one to nine
- 12 digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_japanese_my_number_corporate finds content that matches the pattern.
- A keyword from Keywords_japanese_my_number_corporate is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_japanese_my_number_corporate finds content that matches the pattern.

```xml
      <!-- Japanese My Number – Corporate -->
      <Entity id="9e0eaf79-ff20-4ffb-b3e4-e7368d5db6ff" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_japanese_my_number_corporate" />
          <Match idRef="Keywords_japanese_my_number_corporate" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_japanese_my_number_corporate" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_japan_my_number_corporate

- corporate number
- マイナンバー
- 共通番号
- マイナンバーカード
- マイナンバーカード番号
- 個人番号カード
- 個人識別番号
- 個人識別ナンバー
- 法人番号
- 指定通知書


## Japan My Number - Personal
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

12-digit number

### Pattern

12-digit number:

- four digits
- an optional space, dot, or hyphen
- four digits
- an optional space, dot, or hyphen
- four digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_japanese_my_number_personal finds content that matches the pattern.
- A keyword from Keywords_japanese_my_number_personal is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_japanese_my_number_personal finds content that matches the pattern.

```xml
      <!-- Japanese My Number – Personal -->
      <Entity id="98da8e66-7299-4ebd-9f82-c871ab37d3ef" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_japanese_my_number_personal" />
          <Match idRef="Keywords_japanese_my_number_personal" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_japanese_my_number_personal" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_japan_my_number_personal

- my number
- マイナンバー
- 個人番号
- 共通番号
- マイナンバーカード
- マイナンバーカード番号
- 個人番号カード
- 個人識別番号
- 個人識別ナンバー
- 通知カード

   
## Japan passport number

### Format

two letters followed by seven digits

### Pattern

two letters (not case-sensitive) followed by seven digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_passport finds content that matches the pattern.
- A keyword from Keyword_jp_passport is found.

```xml
<!-- Japan Passport Number -->
<Entity id="75177310-1a09-4613-bf6d-833aae3743f8" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_jp_passport" />
        <Match idRef="Keyword_jp_passport" />
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_jp_passport

- Passport
- Passport Number
- Passport No.
- Passport #
- パスポート
- パスポート番号
- パスポートナンバー
- パスポート＃
- パスポート#
- パスポートNo.
- 旅券番号
- 旅券番号＃
- 旅券番号♯
- 旅券ナンバー


## Japan residence card number

### Format

12 letters and digits

### Pattern

12 letters and digits:
- two letters (not case-sensitive)
- eight digits 
- two letters (not case-sensitive)

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_jp_residence_card_number finds content that matches the pattern.
- A keyword from Keyword_jp_residence_card_number is found.

```xml
<!--Japan Residence Card Number-->
-<Entity id="ac36fef2-a289-4e2c-bb48-b02366e89fc0" recommendedConfidence="75" patternsProximity="300">
   -<Pattern confidenceLevel="75">
      <IdMatch idRef="Regex_jp_residence_card_number"/>
      <Match idRef="Keyword_jp_residence_card_number"/>
   </Pattern>
</Entity>
```

### Keywords

#### Keyword_jp_residence_card_number

- Residence card number
- Residence card no
- Residence card #
- 在留カード番号
- 在留カード
- 在留番号

## Japan resident registration number

### Format

11 digits

### Pattern

11 consecutive digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_resident_registration_number finds content that matches the pattern.
- A keyword from Keyword_jp_resident_registration_number is found.

```xml
<!-- Japan Resident Registration Number -->
<Entity id="01c1209b-6389-4faf-a5f8-3f7e13899652" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_jp_resident_registration_number" />
        <Match idRef ="Keyword_jp_resident_registration_number" />
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_jp_resident_registration_number

- Resident Registration Number
- Residents Basic Registry Number 
- Resident Registration No. 
- Resident Register No. 
- Residents Basic Registry No. 
- Basic Resident Register No. 
- 外国人登録証明書番号
- 証明書番号
- 登録番号
- 外国人登録証

   
## Japan social insurance number (SIN)

### Format

7-12 digits

### Pattern

7-12 digits:
- four digits 
- a hyphen (optional) 
- six digits
OR
- 7-12 consecutive digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_sin finds content that matches the pattern.
- A keyword from Keyword_jp_sin is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_sin_pre_1997 finds content that matches the pattern.
- A keyword from Keyword_jp_sin is found.

```xml
<!-- Japan Social Insurance Number -->
<Entity id="c840e719-0896-45bb-84fd-1ed5c95e45ff" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_jp_sin" />
        <Match idRef="Keyword_jp_sin" />
    </Pattern>
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_jp_sin_pre_1997" />
        <Match idRef="Keyword_jp_sin" />
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_jp_sin

- Social Insurance No. 
- Social Insurance Num 
- Social Insurance Number 
- 健康保険被保険者番号
- 健保番号
- 基礎年金番号
- 雇用保険被保険者番号
- 雇用保険番号
- 保険証番号
- 社会保険番号
- 社会保険No.
- 社会保険
- 介護保険
- 介護保険被保険者番号
- 健康保険被保険者整理番号
- 雇用保険被保険者整理番号
- 厚生年金
- 厚生年金被保険者整理番号


## Latvia driver's license number

### Format

three letters followed by six digits
  
### Pattern

three letters and six digits:
  
- three letters (not case-sensitive) 
- six digits
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_latvia_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_latvia_eu_driver's_license_number` is found. 
    
```xml
      <!-- Latvia Driver's License Number -->
      <Entity id="ec996de0-30f2-46b1-b192-4d2ff8805fa7" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_latvia_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_latvia_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_latvia_eu_driver's_license_number

- autovadītāja apliecība
- autovadītāja apliecības
- vadītāja apliecība

## Latvia personal code

### Format

11 digits and an optional hyphen
  
### Pattern

Old format

11 digits and a hyphen:
  
- six digits that correspond to the birth date (DDMMYY) 
- a hyphen
- one digit that corresponds to the century of birth ("0" for 19th century, "1" for 20th century, and "2" for 21st century)
- four digits, randomly generated

New format

11 digits

- Two digits "32"
- Nine digits
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_latvia_eu_national_id_card` or the regex `Regex_latvia_eu_national_id_card_new_format` finds content that matches the pattern. 
- A keyword from  `Keywords_latvia_eu_national_id_card` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_latvia_eu_national_id_card` or the regex `Regex_latvia_eu_national_id_card_new_format` finds content that matches the pattern. 
    
```xml
      <!-- Latvia Personal Code -->
      <Entity id="03fcf763-27c2-49ed-9422-2641c6c895c9" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_latvia_eu_national_id_card" />
          <Match idRef="Keywords_latvia_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_latvia_eu_national_id_card" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_latvia_eu_telephone_number" />
            <Match idRef="Keywords_latvia_eu_mobile_number" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_latvia_eu_national_id_card_new_format" />
          <Match idRef="Keywords_latvia_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_latvia_eu_national_id_card_new_format" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_latvia_eu_telephone_number" />
            <Match idRef="Keywords_latvia_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>

```

### Keywords

#### Keywords_latvia_eu_national_id_card

- administrative number
- alvas nē
- birth number
- citizen number
- civil number
- electronic census number
- electronic number
- fiscal code
- healthcare user number
- id#
- id-code
- identification number
- identifikācijas numurs
- id-number
- individual number
- latvija alva
- nacionālais id
- national id
- national identifying number
- national identity number
- national insurance number
- national register number
- nodokļa numurs
- nodokļu id
- nodokļu identifikācija numurs
- personal certificate number
- personal code
- personal id code
- personal id number
- personal identification code
- personal identifier
- personal identity number
- personal number
- personal numeric code
- personalcodeno#
- personas kods
- population identification code
- public service number
- registration number
- revenue number
- social insurance number
- social security number
- state tax code
- tax file number
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- voter’s number

## Latvia passport number

### Format

two letters or digits followed by seven digits with no spaces or delimiters
  
### Pattern

two letters or digits followed by seven digits:
  
- two digits or letters (not case-sensitive)
- seven digits
    
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_latvia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_latvia_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_latvia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_latvia_eu_passport_number` is found. 
    
```xml
      <!-- Latvia Passport Number -->
      <Entity id="23ae25ec-cc28-421b-b77a-3054eadf1ede" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_latvia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_latvia_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_latvia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_latvia_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number_common

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_latvia_eu_passport_number

- pase numurs
- pase numur
- pases numuri
- pases nr
- passeport no
- n° du Passeport

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Lithuania driver's license number

### Format

eight digits without spaces and delimiters
  
### Pattern

eight digits 
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_lithuania_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_lithuania_eu_driver's_license_number` is found. 
    
```xml
      <!-- Lithuania Driver's License Number -->
      <Entity id="86f7628b-e0f4-4dc3-9fbc-e4300e4c7d78" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_lithuania_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_lithuania_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_lithuania_eu_driver's_license_number

- vairuotojo pažymėjimas
- vairuotojo pažymėjimo numeris
- vairuotojo pažymėjimo numeriai

## Lithuania personal code
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits without spaces and delimiters:
  
- one digit (1-6) that corresponds to the person's gender and century of birth
- six digits that correspond to birth date (YYMMDD) 
- three digits that correspond to the serial number of the date of birth
- one check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_lithuania_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_lithuania_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_lithuania_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Lithuania Personal Code -->
      <Entity id="cd6d3786-8ec3-4524-a2cf-1e0095379171" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_lithuania_eu_tax_file_number" />
          <Match idRef="Keywords_lithuania_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_lithuania_eu_tax_file_number" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_lithuania_eu_telephone_number" />
            <Match idRef="Keywords_lithuania_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_lithuania_eu_national_id_card

- asmeninis skaitmeninis kodas
- asmens kodas
- citizen service number
- mokesčių id
- mokesčių identifikavimas numeris
- mokesčių identifikavimo numeris
- mokesčių numeris
- national identification number
- personal code
- personal numeric code
- piliečio paslaugos numeris
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- unikalus identifikavimo kodas
- unikalus identifikavimo numeris
- unique identification number
- unique identity number
- uniqueidentityno#

## Lithuania passport number

### Format

eight digits or letters with no spaces or delimiters
  
### Pattern

eight digits or letters (not case-sensitive)
  
### Checksum

not applicable
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_lithuania_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_lithuania_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date3` finds date in the format DD MM YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_lithuania_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_lithuania_eu_passport_number` is found. 
    
```xml
      <!-- Lithuania Passport Number -->
      <Entity id="1b79900f-047b-4c3f-846f-7d73b5534bce" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_lithuania_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_lithuania_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date3" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_lithuania_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_lithuania_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_lithuania_eu_passport_number

- paso numeris
- paso numeriai
- paso nr

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Luxemburg driver's license number

### Format

six digits without spaces and delimiters
  
### Pattern

six digits 
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_luxemburg_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_luxemburg_eu_driver's_license_number` is found. 
    
```xml
      <!-- Luxemburg Driver's License Number -->
      <Entity id="89daf717-1544-4860-9a2e-fc9166dd8852" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_luxemburg_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_luxemburg_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_luxemburg_eu_driver's_license_number

- fahrerlaubnis
- Führerschäin

## Luxemburg national identification number (natural persons)
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

13 digits with no spaces or delimiters
  
### Pattern

13 digits:
  
- 11 digits 
- two check digits
    
### Checksum

yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_luxemburg_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_luxemburg_eu_national_id_card` is found. 

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_luxemburg_eu_tax_file_number` finds content that matches the pattern. 


```xml
      <!-- Luxemburg National Identification Number (Natural persons) -->
      <Entity id="aaf661ed-29ec-426d-8bf9-880cad298ebb" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_luxemburg_eu_tax_file_number" />
          <Match idRef="Keywords_luxemburg_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_luxemburg_eu_tax_file_number" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_luxemburg_eu_telephone_number" />
            <Match idRef="Keywords_luxemburg_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_luxemburg_eu_national_id_card

- eindeutige id
- eindeutige id-nummer
- eindeutigeid#
- id personnelle
- idpersonnelle#
- idpersonnelle
- individual code
- individual id
- individual identification
- individual identity
- numéro d'identification personnel
- personal id
- personal identification
- personal identity
- personalidno#
- personalidnumber#
- persönliche identifikationsnummer
- unique id
- unique identity
- uniqueidkey#

## Luxemburg passport number

### Format

eight digits or letters with no spaces or delimiters
  
### Pattern

eight digits or letters (not case-sensitive)
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_luxemburg_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_luxemburg_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date3` finds date in the format DD MM YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_luxemburg_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_luxemburg_eu_passport_number` is found. 
    
```xml
      <!-- Luxemburg Passport Number -->
      <Entity id="81d5c027-bed9-4421-91a0-3b2e55b3eb85" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_luxemburg_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_luxemburg_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date3" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_luxemburg_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_luxemburg_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_luxemburg_eu_passport_number
- ausweisnummer
- luxembourg pass
- luxembourg passeport
- luxembourg passport
- no de passeport
- no-reisepass
- nr-reisepass
- numéro de passeport
- pass net
- pass nr
- passnummer
- passeport nombre
- reisepässe
- reisepass-nr
- reisepassnummer

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Luxemburg national identification number (non-natural persons)

### Format

11 digits
  
### Pattern

11 digits
  
- two digits
- an optional space 
- three digits 
- an optional space
- three digits 
- an optional space
- two digits
- one check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_luxemburg_eu_tax_file_number_non_natural` finds content that matches the pattern. 
- A keyword from  `Keywords_luxemburg_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_luxemburg_eu_tax_file_number_non_natural` finds content that matches the pattern. 
    
```xml
      <!-- Luxemburg National Identification Number (Non-natural persons) -->
      <Entity id="84bffa3a-d805-4788-a613-b1e4df3804cf" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_luxemburg_eu_tax_file_number_non_natural" />
          <Match idRef="Keywords_luxemburg_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_luxemburg_eu_tax_file_number_non_natural" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_luxemburg_eu_telephone_number" />
            <Match idRef="Keywords_luxemburg_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_luxemburg_eu_tax_file_number

- carte de sécurité sociale
- étain non
- étain#
- identifiant d'impôt
- luxembourg tax identifikatiounsnummer
- numéro d'étain
- numéro d'identification fiscal luxembourgeois
- numéro d'identification fiscale
- social security
- sozialunterstützung
- sozialversécherung
- sozialversicherungsausweis
- steier id
- steier identifikatiounsnummer
- steier nummer
- steuer id
- steueridentifikationsnummer
- steuernummer
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- zinn#
- zinn
- zinnzahl


## Malaysia identification card number

### Format

12 digits containing optional hyphens

### Pattern

12 digits:
- six digits in the format YYMMDD, which are the date of birth 
- a dash (optional) 
- two-letter place-of-birth code 
- a dash (optional) 
- three random digits 
- one-digit gender code

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_malaysia_id_card_number finds content that matches the pattern.
- A keyword from Keyword_malaysia_id_card_number is found.

```xml
<!-- Malaysia ID Card Number -->
</Entity>
      <Entity id="7f0e921c-9677-435b-aba2-bb8f1013c749" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
            <IdMatch idRef="Regex_malaysia_id_card_number" />
            <Match idRef="Keyword_malaysia_id_card_number" />
        </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_malaysia_id_card_number

- digital application card
- i/c
- i/c no
- ic
- ic no
- id card
- identification Card
- identity card
- k/p
- k/p no
- kad akuan diri
- kad aplikasi digital
- kad pengenalan malaysia
- kp
- kp no
- mykad
- mykas
- mykid
- mypr
- mytentera
- malaysia identity card
- malaysian identity card
- nric
- personal identification card

## Malta driver's license number

### Format

Combination of two characters and six digits in the specified pattern
  
### Pattern

combination of two characters and six digits:
  
- two characters (digits or letters, not case-sensitive)
- a space (optional)
- three digits
- a space (optional)
- three digits
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_malta_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_malta_eu_driver's_license_number` is found. 
    
```xml
      <!-- Malta Driver's License Number -->
      <Entity id="a3bdaa4a-8371-4735-8fa5-56ee0fb4afc4" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_malta_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_malta_eu_driver's_license_number

- liċenzja tas-sewqan
- liċenzji tas-sewwieq


## Malta identity card number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

seven digits followed by one letter
  
### Pattern

seven digits followed by one letter:
  
- seven digits 
- one letter in "M, G, A, P, L, H, B, Z" (case insensitive)
    
### Checksum

Not applicable
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_malta_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_malta_eu_national_id_card` is found. 
    
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_malta_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Malta Identity Card Number -->
      <Entity id="854b36b3-a388-4ac8-a4ec-677c2b5e4356" patternsProximity="300" recommendedConfidence="75">
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

- citizen service number
- id tat-taxxa
- identifika numru tal-biljett
- kodiċi numerali personali
- numru ta 'identifikazzjoni personali
- numru ta 'identifikazzjoni tat-taxxa
- numru ta 'identifikazzjoni uniku
- numru ta' identità uniku
- numru tas-servizz taċ-ċittadin
- numru tat-taxxa
- personal numeric code
- unique identification number
- unique identity number
- uniqueidentityno#


## Malta passport number

### Format

seven digits without spaces or delimiters
  
### Pattern

seven digits 
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_malta_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_malta_eu_passport_number` is found. 
- A keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_malta_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_malta_eu_passport_number` is found. 
    
```xml
      <!-- Malta Passport Number -->
      <Entity id="b2b21198-48f9-4d13-b2a5-03969bff0fb8" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_malta_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_malta_eu_passport_number" />
          </Any>
          <Match idRef="Keywords_eu_passport_date" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_malta_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_malta_eu_passport_number

- numru tal-passaport
- numri tal-passaport
- Nru tal-passaport

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Malta tax identification number

### Format

For Maltese nationals:
- seven digits and one letter in the specified pattern
  
Non-Maltese nationals and Maltese entities:
- nine digits
  
### Pattern

Maltese nationals: seven digits and one letter
  
- seven digits 
- one letter (not case-sensitive)
    
Non-Maltese nationals and Maltese entities: nine digits
  
- nine digits 
    
### Checksum

Not applicable
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regex  `Regex_malta_eu_tax_file_number`  or `Regex_malta_eu_tax_file_number_non_maltese_national` finds content that matches the pattern. 
- A keyword from  `Keywords_malta_eu_tax_file_number` is found. 
    
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regex  `Regex_malta_eu_tax_file_number` or `Regex_malta_eu_tax_file_number_non_maltese_national` finds content that matches the pattern. 
    
```xml
      <!-- Malta Tax ID Number -->
      <Entity id="ec830c63-65f4-45d0-9d8c-910dc8334b20" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_tax_file_number" />
          <Match idRef="Keywords_malta_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_malta_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_tax_file_number_non_maltese_national" />
          <Match idRef="Keywords_malta_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_malta_eu_tax_file_number_non_maltese_national" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_malta_eu_tax_file_number

- citizen service number
- id tat-taxxa
- identifika numru tal-biljett
- kodiċi numerali personali
- numru ta 'identifikazzjoni personali
- numru ta 'identifikazzjoni tat-taxxa
- numru ta 'identifikazzjoni uniku
- numru ta' identità uniku
- numru tas-servizz taċ-ċittadin
- numru tat-taxxa
- personal numeric code
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- unique identification number
- unique identity number
- uniqueidentityno#


## Medicare Beneficiary Identifier (MBI) card

### Format

eleven character alphanumeric pattern
  
### Pattern

- one digit between 1 to 9
- one letter excluding  S, L, O, I, B, Z
- one digit or letter excluding S, L, O, I, B, Z
- one digit
- an optional Hyphen
- one letter excluding  S, L, O, I, B, Z
- one digit or letter excluding S, L, O, I, B, Z
- one digit
- an optional Hyphen
- two letters excluding  S, L, O, I, B, Z
- two digits
    
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_mbi_card` finds content that matches the pattern. 
- A keyword from  `Keyword_mbi_card` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_mbi_card` finds content that matches the pattern. 
    
```xml
    <!-- Medicare Beneficiary Identifier (MBI) card -->
      <Entity id="f753a286-f5cc-47e6-a592-4be25fd02591" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_mbi_card" />
          <Match idRef="Keyword_mbi_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_mbi_card" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_mbi_card

- mbi
- mbi#
- medicare beneficiary #
- medicare beneficiary identifier
- medicare beneficiary no
- medicare beneficiary number
- medicare beneficiary#


## Mexico Unique Population Registry Code (CURP)

### Format

18 character alphanumeric pattern
  
### Pattern

- four letters (case insensitive)
- six digits indicating a valid date
- a letter - H/h or M/m
- two letters indicating a valid Mexican state code
- three letters
- one letter or digit
- one digit
    
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_mexico_population_registry_code` finds content that matches the pattern. 
- A keyword from  `Keyword_mexico_population_registry_code` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_mexico_population_registry_code` finds content that matches the pattern. 
    
```xml
    <!-- Mexico Unique Population Registry Code (CURP) -->
      <Entity id="e905ad4d-5a74-406d-bf36-b1efca798af4" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_mexico_population_registry_code" />
          <Match idRef="Keyword_mexico_population_registry_code" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_mexico_population_registry_code" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_mexico_population_registry_code

- Clave Única de Registro de Población
- Clave Unica de Registro de Poblacion
- Unique Population Registry Code 
- unique population code
- CURP
- Personal ID
- Unique ID
- personalid
- personalidnumber
- uniqueidkey
- uniqueidnumber
- clave única
- clave unica
- clave personal Identidad
- personal Identidad Clave
- ClaveÚnica
- claveunica
- clavepersonalIdentidad


## Netherlands citizen's service (BSN) number

### Format

eight or nine digits containing optional spaces

### Pattern

eight-nine digits:
- three digits 
- a space (optional) 
- three digits 
- a space (optional) 
- two-three digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_netherlands_bsn finds content that matches the pattern.
- A keyword from Keyword_netherlands_bsn is found.
- The checksum passes.

```xml
      <!-- Netherlands Citizen's Service (BSN) Number -->
      <Entity id="c5f54253-ef7e-44f6-a578-440ed67e946d" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_netherlands_bsn" />
          <Match idRef="Keywords_netherlands_eu_national_id_card" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_netherlands_eu_national_id_card
  
- bsn#
- bsn
- burgerservicenummer
- citizen service number
- person number
- personal number
- personal numeric code
- person-related number
- persoonlijk nummer
- persoonlijke numerieke code
- persoonsgebonden
- persoonsnummer
- sociaal-fiscaal nummer
- social-fiscal number
- sofi
- sofinummer
- uniek identificatienummer
- uniek identiteitsnummer
- unique identification number
- unique identity number
- uniqueidentityno#

## Netherlands driver's license number

### Format

ten digits without spaces and delimiters
  
### Pattern

ten digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_netherlands_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_netherlands_eu_driver's_license_number` is found. 
    
```xml
      <!-- Netherlands Driver's License Number -->
      <Entity id="6247fbea-ab80-4be5-8233-308b7c031401" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_netherlands_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_netherlands_eu_driver's_license_number" />
            </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_netherlands_eu_driver's_license_number

- permis de conduire
- rijbewijs
- rijbewijsnummer
- rijbewijzen
- rijbewijs nummer
- rijbewijsnummers


## Netherlands passport number

### Format

nine letters or digits with no spaces or delimiters
  
### Pattern

nine letters or digits
  
### Checksum

not applicable
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_netherlands_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_netherlands_eu_passport_number` is found. 
- The regular expression `Regex_netherlands_eu_passport_date` finds date in the format  DD MMM/MMM YYYY (Example - 26 MAA/MAR 2012)

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_netherlands_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_netherlands_eu_passport_number` is found. 
    
```xml
      <!-- Netherlands Passport Number -->
      <Entity id="61786727-bafd-45f6-94d9-888d815e228e" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_netherlands_eu_passport_number" />
          <Match idRef="Regex_netherlands_eu_passport_date" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_netherlands_eu_passport_number" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_netherlands_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_netherlands_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_netherlands_eu_passport_number

- paspoort nummer
- paspoortnummers
- paspoortnummer
- paspoort nr

## Netherlands tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

nine digits without spaces or delimiters
  
### Pattern

nine digits 
  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_netherlands_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_netherlands_eu_tax_file_number` is found. 
    
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_netherlands_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Netherlands Tax Identification Number -->
      <Entity id="01f42a64-eba7-4892-a67b-398237e4ade2" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_netherlands_eu_tax_file_number" />
          <Match idRef="Keywords_netherlands_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_netherlands_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_netherlands_eu_tax_file_number

- btw nummer
- hollânske tax identification
- hulandes impuesto id number
- hulandes impuesto identification
- identificatienummer belasting
- identificatienummer van belasting
- impuesto identification number
- impuesto number
- nederlands belasting id nummer
- nederlands belasting identificatie
- nederlands belasting identificatienummer
- nederlands belastingnummer
- nederlandse belasting identificatie
- netherlands tax identification
- netherland's tax identification
- netherlands tin
- netherland's tin
- tax id
- tax identification no
- tax identification number
- tax identification tal
- tax no#
- tax no
- tax number
- tax registration number
- tax tal
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## Netherlands value added tax number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

14 character alphanumeric pattern

### Pattern

14-character alphanumeric pattern:

- N or n
- L or l
- optional space, dot, or hyphen
- nine digits
- optional space, dot, or hyphen
- B or b
- two digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_netherlands_value_added_tax_number finds content that matches the pattern.
- A keyword from Keywords_netherlands_value_added_tax_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_netherlands_value_added_tax_number finds content that matches the pattern.

```xml
      <!-- Netherlands Value Added Tax Number -->
      <Entity id="4f320d9b-4972-41ae-b337-88d499bb1ade" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_netherlands_value_added_tax_number" />
          <Match idRef="Keywords_netherlands_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_netherlands_value_added_tax_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_netherlands_value_added_tax_number

- vat number
- vat no
- vat#
- wearde tafoege tax getal
- btw nûmer
- btw-nummer


## New Zealand bank account number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

14-digit to 16-digit pattern with optional delimiter

### Pattern

14-digit to 16-digit pattern with optional delimiter:

- two digits
- an optional hyphen or space
- three to four digits
- an optional hyphen or space
- seven digits
- an optional hyphen or space
- two to three digits
- an options hyphen or space

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_zealand_bank_account_number finds content that matches the pattern.
- A keyword from Keywords_new_zealand_bank_account_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_zealand_bank_account_number finds content that matches the pattern.

```xml
      <!-- New Zealand Bank Account Number -->
      <Entity id="1a97fc2b-dd2f-48f1-bc4e-2ddf25813956" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_new_zealand_bank_account_number" />
          <Match idRef="Keywords_new_zFealand_bank_account_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_new_zealand_bank_account_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_new_zealand_bank_account_number

- account number
- bank account
- bank_acct_id
- bank_acct_branch
- bank_acct_nbr


## New Zealand driver's license number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

eight character alphanumeric pattern

### Pattern

eight character alphanumeric pattern

- two letters 
- six digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_newzealand_driver_license_number finds content that matches the pattern.
- A keyword from Keywords_newzealand_driver_license_number is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_newzealand_driver_license_number finds content that matches the pattern.

```xml
      <!-- New Zealand Driver License Number -->
      <Entity id="1924b377-d287-49c9-a737-cfe7a8a2615a" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_newzealand_driver_license_number" />
          <Match idRef="Keywords_newzealand_driver_license_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_newzealand_driver_license_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_new_zealand_drivers_license_number

- driverlicence
- driverlicences
- driver lic
- driver licence
- driver licences
- driverslic
- driverslicence
- driverslicences
- drivers lic
- drivers lics
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's licence
- driver's licences
- driverlic#
- driverlics#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver licence#
- driver licences#
- driverslic#
- driverslics#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's licence#
- driver's licences#
- international driving permit
- international driving permits
- nz automobile association
- new zealand automobile association


## New Zealand inland revenue number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

eight or nine digits with optional delimiters

### Pattern

eight or nine digits with optional delimiters

- two or three digits
- an optional space or hyphen
- three digits
- an optional space or hyphen
- three digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_zealand_inland_revenue_number finds content that matches the pattern.
- A keyword from Keywords_new_zealand_inland_revenue_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_zealand_inland_revenue_number finds content that matches the pattern.

```xml
      <!-- New Zealand Inland Revenue Number -->
      <Entity id="dd0fe2bc-7bcf-455f-bac1-83b1e3eb25fd" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_new_zealand_inland_revenue_number" />
          <Match idRef="Keywords_new_zealand_inland_revenue_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_new_zealand_inland_revenue_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_new_zealand_inland_revenue_number

- ird no.
- ird no#
- nz ird
- new zealand ird
- ird number
- inland revenue number


## New Zealand ministry of health number

### Format

three letters, a space (optional), and four digits

### Pattern

- three letters (not case-sensitive) except 'I' and 'O'
- a space (optional) 
- four digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_zealand_ministry_of_health_number finds content that matches the pattern.
- A keyword from Keyword_nz_terms is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_zealand_ministry_of_health_number finds content that matches the pattern.
- The checksum passes.

```xml
    <!-- New Zealand Health Number -->
    <Entity id="2b71c1c8-d14e-4430-82dc-fd1ed6bf05c7" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_new_zealand_ministry_of_health_number" />
          <Match idRef="Keyword_nz_terms" />
      </Pattern>
      <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_new_zealand_ministry_of_health_number" />
       </Pattern>
    </Entity>
```

### Keywords

#### Keyword_nz_terms

- NHI
- New Zealand
- Health
- treatment
- National Health Index Number
- nhi number
- nhi no.
- NHI#
- National Health Index No.
- National Health Index Id
- National Health Index #

## New Zealand social welfare number

This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

nine digits

### Pattern

nine digits

- three digits
- an optional hyphen
- three digits
- an optional hyphen
- three digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_newzealand_social_welfare_number finds content that matches the pattern.
- A keyword from Keywords_newzealand_social_welfare_number is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_newzealand_social_welfare_number finds content that matches the pattern.

```xml
      <!-- Newzealand Social Welfare Number -->
      <Entity id="20f3c48d-4ac1-4cd2-86bd-34ecc1826e9d" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_newzealand_social_welfare_number" />
          <Match idRef="Keywords_newzealand_social_welfare_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_newzealand_social_welfare_number" />
        </Pattern>
      </Entity>
    </Version>
```

### Keywords

#### Keyword_new_zealand_social_welfare_number

- social welfare #
- social welfare#
- social welfare No.
- social welfare number
- swn#

   
## Norway identification number

### Format

11 digits

### Pattern

11 digits:
- six digits in the format DDMMYY which are the date of birth 
- three-digit individual number 
- two check digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_norway_id_number finds content that matches the pattern.
- A keyword from Keyword_norway_id_number is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_norway_id_numbe finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Norway Identification Number -->
<Entity id="d4c8a798-e9f2-4bd3-9652-500d24080fc3" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_norway_id_number"/>
     <Match idRef="Keyword_norway_id_number"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_norway_id_number"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_norway_id_number

- Personal identification number
- Norwegian ID Number
- ID Number
- Identification
- Personnummer
- Fødselsnummer

   
## Philippines unified multi-purpose identification number

### Format

12 digits separated by hyphens

### Pattern

12 digits:
- four digits 
- a hyphen 
- seven digits 
- a hyphen 
- one digit

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_philippines_unified_id finds content that matches the pattern.
- A keyword from Keyword_philippines_id is found.

```xml
<!-- Philippines Unified Multi-Purpose ID number -->
<Entity id="019b39dd-8c25-4765-91a3-d9c6baf3c3b3" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_philippines_unified_id"/>
     <Match idRef="Keyword_philippines_id"/>
  </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_philippines_id

- Unified Multi-Purpose ID 
- UMID 
- Identity Card 
- Pinag-isang Multi-Layunin ID

## Poland driver's license number

### Format

14 digits containing two forward slashes
  
### Pattern

14 digits and two forward slashes:
  
- five digits 
- a forward slash
- two digits
- a forward slash
- seven digits
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_poland_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_poland_eu_driver's_license_number` is found. 
    
```xml
      <!-- Poland Driver's License Number -->
      <Entity id="24d51f99-ee9e-4060-a077-cae58cab1ee4" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_poland_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_poland_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_poland_eu_driver's_license_number

- prawo jazdy
- prawa jazdy

## Poland identity card

### Format

three letters and six digits

### Pattern

three letters (not case-sensitive) followed by six digits

### Checksum

Yes

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_polish_national_id finds content that matches the pattern.
- A keyword from Keyword_polish_national_id_passport_number is found.
- The checksum passes.

```xml
<!-- Poland Identity Card-->
<Entity id="25E64989-ED5D-40CA-A939-6C14183BB7BF" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_polish_national_id" />
          <Match idRef="Keyword_polish_national_id_passport_number" />
      </Pattern>
</Entity>
```

### Keywords

#### Keyword_poland_national_id_passport_number

- Dowód osobisty
- Numer dowodu osobistego
- Nazwa i numer dowodu osobistego
- Nazwa i nr dowodu osobistego
- Nazwa i nr dowodu tożsamości
- Dowód Tożsamości
- dow. os.

   
## Poland national ID (PESEL)

### Format

11 digits

### Pattern

- six digits representing date of birth in the format YYMMDD
- four digits
- one check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_pesel_identification_number finds content that matches the pattern.
- A keyword from Keyword_pesel_identification_number is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_pesel_identification_number finds content that matches the pattern.
- The checksum passes.

```xml
      <!-- Poland National ID (PESEL) -->
      <Entity id="E3AAF206-4297-412F-9E06-BA8487E22456" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_pesel_identification_number" />
          <Match idRef="Keyword_pesel_identification_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_pesel_identification_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_pesel_identification_number

- dowód osobisty
- dowódosobisty
- niepowtarzalny numer
- niepowtarzalnynumer
- nr.-pesel
- nr-pesel
- numer identyfikacyjny
- pesel
- tożsamości narodowej

   
## Poland passport number
This sensitive information type entity is included in the EU Passport Number sensitive information type. It's available as a stand-alone sensitive information type entity.

### Format

two letters and seven digits

### Pattern

Two letters (not case-sensitive) followed by seven digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_polish_passport_number_v2` finds content that matches the pattern.
- The checksum passes.
- A keyword from `Keywords_eu_passport_number` or `Keyword_polish_national_passport_number` is found.
- A keyword from `Keywords_eu_passport_date` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_polish_passport_number_v2` finds content that matches the pattern.
- The checksum passes.
- A keyword from `Keywords_eu_passport_number` or `Keyword_polish_national_passport_number` is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_polish_passport_number_v2` finds content that matches the pattern.
- The checksum passes.

```xml
      <!-- Poland Passport Number -->
      <Entity id="03937FB5-D2B6-4487-B61F-0F8BFF7C3517" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_polish_passport_number_v2" />
          <Match idRef="Keywords_eu_passport_date" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_polish_national_passport_number" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_polish_passport_number_v2" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_polish_national_passport_number" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_polish_passport_number_v2" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keyword_polish_national_passport_number

- numer paszportu
- numery paszportów
- numery paszportowe
- nr paszportu
- nr. paszportu
- nr paszportów
- n° passeport
- passeport n°

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Poland REGON number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

9-digit or 14-digit number

### Pattern

nine digit or 14-digit number:

- nine digits
or 
- nine digits
- hyphen
- five digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_polish_regon_number finds content that matches the pattern.
- A keyword from Keywords_polish_regon_number is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_polish_regon_number finds content that matches the pattern.

```xml
      <!-- Polish REGON Number  -->
      <Entity id="fc87b421-f437-4f8b-b739-29a735ead0d9" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_polish_regon_number" />
          <Match idRef="Keywords_polish_regon_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_polish_regon_number" />
        </Pattern>
      </Entity>
```
### Keywords

#### Keywords_poland_regon_number

- regon id
- statistical number
- statistical id
- statistical no
- regon number
- regonid#
- regonno#
- company id
- companyid#
- companyidno#
- numer statystyczny
- numeru regon
- numerstatystyczny#
- numeruregon#


## Poland tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

11 digits with no spaces or delimiters
  
### Pattern

11 digits
  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_poland_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_poland_eu_tax_file_number` is found. 
    
  
```xml
      <!-- Poland Tax Identification Number -->
      <Entity id="1ff28b4d-40f2-49e9-b677-9606a88e2bca" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_poland_eu_tax_file_number" />
          <Match idRef="Keywords_poland_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_poland_eu_tax_file_number

- nip#
- nip
- numer identyfikacji podatkowej
- numeridentyfikacjipodatkowej#
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- vat id#
- vat id
- vat no
- vat number
- vatid#
- vatid
- vatno#
   

## Portugal citizen card number

### Format

eight digits

### Pattern

eight digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_portugal_citizen_card finds content that matches the pattern.
- A keyword from Keyword_portugal_citizen_card is found.

```xml
<!-- Portugal Citizen Card Number -->
<Entity id="91a7ece2-add4-4986-9a15-c84544d81ecd" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Regex_portugal_citizen_card"/>
     <Match idRef="Keyword_portugal_citizen_card"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_portugal_citizen_card

- bilhete de identidade
- cartão de cidadão
- citizen card
- document number
- documento de identificação
- id number
- identification no
- identification number
- identity card no
- identity card number
- national id card
- nic
- número bi de portugal
- número de identificação civil
- número de identificação fiscal
- número do documento
- portugal bi number


## Portugal driver's license number

### Format

two patterns - two letters followed by 5-8 digits with special characters
  
### Pattern

Pattern 1:
Two letters followed by 5/6 with special characters:
- Two letters (not case-sensitive)
- A hyphen
- Five or Six digits
- A space
- One digit

Pattern 2: 
One letter followed by 6/8 digits with special characters:
- One letter (not case-sensitive)
- A hyphen
- Six or eight digits
- A space
- One digit

    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_portugal_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_portugal_eu_driver's_license_number` is found. 
    
```xml
      <!-- Portugal Driver's License Number -->
      <Entity id="977f1e5a-2c33-4bcc-b516-95bb275cff23" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_portugal_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_portugal_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_portugal_eu_driver's_license_number

- carteira de motorista
- carteira motorista
- carteira de habilitação
- carteira habilitação
- número de licença
- número licença
- permissão de condução
- permissão condução
- Licença condução Portugal
- carta de condução

## Portugal passport number

### Format

one letter followed by six digits with no spaces or delimiters
  
### Pattern

one letter followed by six digits:
  
- one letter (not case-sensitive)
- six digits
    
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_portugal_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_portugal_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_portugal_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_portugal_eu_passport_number` is found.
    
```xml
      <!-- Portugal Passport Number -->
      <Entity id="080a52fd-a7bc-431e-b54d-51f08f59db11" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_portugal_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_portugal_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_portugal_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_portugal_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_portugal_eu_passport_number

- número do passaporte
- portuguese passport
- portuguese passeport
- portuguese passaporte
- passaporte nº
- passeport nº
- números de passaporte
- portuguese passports
- número passaporte
- números passaporte

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Portugal tax identification number

### Format

nine digits with optional spaces
  
### Pattern

- three digits
- an optional space
- three digits
- an optional space
- three digits
  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_portugal_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_portugal_eu_tax_file_number` is found. 
    
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_portugal_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Portugal Tax Identification Number -->
      <Entity id="65372402-3131-4f1e-9983-4439841d1f15" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_portugal_eu_tax_file_number" />
          <Match idRef="Keywords_portugal_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_portugal_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_portugal_eu_tax_file_number

- cpf#
- cpf
- nif#
- nif
- número de identificação fisca
- numero fiscal
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## Romania driver's license number

### Format

one character followed by eight digits
  
### Pattern

one character followed by eight digits:
- one letter (not case-sensitive) or digit 
- eight digits
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_romania_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_romania_eu_driver's_license_number` is found. 
    
```xml
      <!-- Romania Driver's License Number -->
      <Entity id="b5511ace-2fd8-4ae4-b6fc-c7c6e4689e3c" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_romania_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_romania_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_romania_eu_driver's_license_number

- permis de conducere
- permisului de conducere
- permisului conducere
- permisele de conducere
- permisele conducere
- permis conducere

## Romania personal numeric code (CNP)
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

13 digits without spaces and delimiters
  
### Pattern

- one digit from 1-9
- six digits representing date of birth (YYMMDD)
- two digits, which can be 01-52 or 99
- four digits

### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_romania_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_romania_eu_national_id_card` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_romania_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Romania Personal Numerical Code (CNP) -->
      <Entity id="eb5fa399-fe28-4c67-8188-d63a616ed89c" patternsProximity="300" recommendedConfidence="85">
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

- cnp#
- cnp
- cod identificare personal
- cod numeric personal
- cod unic identificare
- codnumericpersonal#
- codul fiscal nr.
- identificarea fiscală nr#
- id-ul taxei
- insurance number
- insurancenumber#
- national id#
- national id
- national identification number
- număr identificare personal
- număr identitate
- număr personal unic
- număridentitate#
- număridentitate
- numărpersonalunic#
- numărpersonalunic
- număru de identificare fiscală
- numărul de identificare fiscală
- personal numeric code
- pin#
- pin
- tax file no
- tax file number
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#
- unique identification number
- unique identity number
- uniqueidentityno#
- uniqueidentityno

## Romania passport number

### Format

eight or nine digits without spaces and delimiters
  
### Pattern

eight or nine digits
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_romania_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_romania_eu_passport_number` is found. 
- The regular expression `Regex_romania_eu_passport_date` finds date in the format DD MMM/MMM YY (Example- 01 FEB/FEB 10) or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_romania_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_romania_eu_passport_number` is found. 
    
```xml
      <!-- Romania Passport Number -->
      <Entity id="5d31b90c-7fe2-4a76-a14b-767b8fd19d6c" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_romania_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_romania_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_romania_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_romania_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_romania_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_romania_eu_passport_number

numărul pașaportului
numarul pasaportului
numerele pașaportului
Pașaport nr

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Russia passport number domestic
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

10-digit number

### Pattern

10-digit number:

- two digits
- an optional space or hyphen
- two digits
- an optional space
- six digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regex Regex_Russian_Passport_Number_Domestic finds content that matches the pattern.
- A keyword from Keyword_Russian_Passport_Number is found.

```xml
      <!-- Russian Passport Number Domestic -->
      <Entity id="76ec2f5d-cedb-48e1-8070-1998794af445" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_Russian_Passport_Number_Domestic" />
          <Match idRef="Keyword_Russian_Passport_Number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_russia_passport_number_domestic

- passport number
- passport no
- passport #
- passport id
- passportno#
- passportnumber#
- паспорт нет
- паспорт id
- pоссийской паспорт
- pусский номер паспорта
- паспорт#
- паспортid#
- номер паспорта
- номерпаспорта#


## Russia passport number international
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

nine-digit number

### Pattern

nine-digit number:

- two digits
- an optional space or hyphen
- seven digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regex Regex_Russian_Passport_Number_International finds content that matches the pattern.
- A keyword from Keyword_Russian_Passport_Number is found.

```xml
      <!-- Russian Passport Number International -->
      <Entity id="ac5f4878-75e4-4b82-af2d-02e13ea9f411" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_Russian_Passport_Number_International" />
          <Match idRef="Keyword_Russian_Passport_Number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_russia_passport_number_international

- passport number
- passport no
- passport #
- passport id
- passportno#
- passportnumber#
- паспорт нет
- паспорт id
- pоссийской паспорт
- pусский номер паспорта
- паспорт#
- паспортid#
- номер паспорта
- номерпаспорта#


## Saudi Arabia National ID

### Format

10 digits

### Pattern

10 consecutive digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_saudi_arabia_national_id finds content that matches the pattern.
- A keyword from Keyword_saudi_arabia_national_id is found.

```xml
<!-- Saudi Arabia National ID -->
<Entity id="8c5a0ba8-404a-41a3-8871-746aa21ee6c0" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_saudi_arabia_national_id" />
        <Any minMatches="1">
          <Match idRef="Keyword_saudi_arabia_national_id" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_saudi_arabia_national_id

- Identification Card 
- I card number 
- ID number 
- الوطنية الهوية بطاقة رقم 

   
## Singapore national registration identity card (NRIC) number

### Format

nine letters and digits

### Pattern

- nine letters and digits:
- the letter "F", "G", "S", or "T" (not case-sensitive) 
- seven digits 
- an alphabetic check digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_singapore_nric finds content that matches the pattern.
- A keyword from Keyword_singapore_nric is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_singapore_nric finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Singapore National Registration Identity Card (NRIC) Number -->
<Entity id="cead390a-dd83-4856-9751-fb6dc98c34da" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Regex_singapore_nric"/>
     <Match idRef="Keyword_singapore_nric"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_singapore_nric"/>
  </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_singapore_nric

- National Registration Identity Card 
- Identity Card Number 
- NRIC 
- IC 
- Foreign Identification Number 
- FIN 
- 身份证 
- 身份證 

## Slovakia driver's license number

### Format

one character followed by seven digits
  
### Pattern

one character followed by seven digits
  
- one letter (not case-sensitive) or digit
- seven digits 
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_slovakia_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_slovakia_eu_driver's_license_number` is found. 
    
```xml
      <!-- Slovakia Driver's License Number -->
      <Entity id="14240c22-b6de-4ce5-a90b-137f74252513" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovakia_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_slovakia_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_slovakia_eu_driver's_license_number

- vodičský preukaz
- vodičské preukazy
- vodičského preukazu
- vodičských preukazov

## Slovakia personal number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

nine or ten digits containing optional backslash
  
### Pattern

- six digits representing date of birth
- optional slash (/)
- three digits
- one optional check digit
  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_slovakia_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_slovakia_eu_national_id_card` is found. 
    
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_slovakia_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Slovakia Personal Number -->
      <Entity id="951c26b7-3b35-4f73-924b-15dd599cb9ab" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_slovakia_eu_national_id_card" />
          <Match idRef="Keywords_slovakia_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_slovakia_eu_national_id_card" />
        </Pattern>
      </Entity>
    </Version>
```

### Keywords

#### Keywords_slovakia_eu_national_id_card

- azonosító szám
- birth number
- číslo národnej identifikačnej karty
- číslo občianského preukazu
- daňové číslo
- id number
- identification no
- identification number
- identifikačná karta č
- identifikačné číslo
- identity card no
- identity card number
- národná identifikačná značka č
- national number
- nationalnumber#
- nemzeti személyazonosító igazolvány
- personalidnumber#
- rč
- rodne cislo
- rodné číslo
- social security number
- ssn#
- ssn
- személyi igazolvány szám
- személyi igazolvány száma
- személyigazolvány szám
- tax file no
- tax file number
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#

## Slovakia passport number

### Format

one digit or letter followed by seven digits with no spaces or delimiters
  
### Pattern

one digit or letter (not case-sensitive) followed by seven digits
  
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_slovakia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_slovakia_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_slovakia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_slovakia_eu_passport_number` is found. 
    
```xml
      <!-- Slovakia Passport Number -->
      <Entity id="238e1f08-d80e-4793-af33-9b57918335b7" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_slovakia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_slovakia_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovakia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_slovakia_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_slovakia_eu_passport_number

- číslo pasu
- čísla pasov
- pas č.
- Passeport n°
- n° Passeport

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Slovenia driver's license number

### Format

nine digits without spaces and delimiters
  
### Pattern

nine digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_slovenia_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_slovenia_eu_driver's_license_number` is found. 
    
```xml
      <!-- Slovenia Driver's License Number -->
      <Entity id="d5bc089a-f2ee-433d-a6b1-5c253051d6f2" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovenia_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_slovenia_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_slovenia_eu_driver's_license_number

- vozniško dovoljenje
- vozniška številka licence
- vozniških dovoljenj
- številka vozniškega dovoljenja
- številke vozniških dovoljenj

## Slovenia Unique Master Citizen Number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

13 digits without spaces or delimiters
  
### Pattern

13 digits in the specified pattern:
  
- seven digits that correspond to the birth date (DDMMLLL) where "LLL" corresponds to the last three digits of the birth year 
- two digits that correspond to the area of birth "50"
- three digits that correspond to a combination of gender and serial number for persons born on the same day (000-499 for male and 500-999 for female)
- one check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_slovenia_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_slovenia_eu_national_id_card` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_slovenia_eu_national_id_card` finds content that matches the pattern. 
    
```xml
      <!-- Slovenia Unique Master Citizen Number -->
      <Entity id="68948b27-803d-41e4-adf1-13e05eb541bb" patternsProximity="300" recommendedConfidence="85">
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

- edinstvena številka glavnega državljana
- emšo
- enotna maticna številka obcana
- id card
- identification number
- identifikacijska številka
- identity card
- nacionalna id
- nacionalni potni list
- national id
- osebna izkaznica
- osebni koda
- osebni ne
- osebni številka
- personal code
- personal number
- personal numeric code
- številka državljana
- unique citizen number
- unique id number
- unique identity number
- unique master citizen number
- unique registration number
- uniqueidentityno #
- uniqueidentityno#

## Slovenia passport number

### Format

two letters followed by seven digits with no spaces or delimiters
  
### Pattern

two letters followed by seven digits:
  
- the letter "P"
- one uppercase letter
- seven digits
    
### Checksum

No
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_slovenia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_slovenia_eu_passport_number` is found. 
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_slovenia_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_slovenia_eu_passport_number` is found. 
    
```xml
      <!-- Slovenia Passport Number -->
      <Entity id="235b7976-7bbe-4df5-bb40-08678e749d1a" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_slovenia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_slovenia_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovenia_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_slovenia_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_slovenia_eu_passport_number

- številka potnega lista
- potek veljavnosti
- potni list#
- datum rojstva
- potni list
- številke potnih listov

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Slovenia tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

eight digits with no spaces or delimiters
  
### Pattern

- one digit from 1-9
- six digits
- one check digit
  
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_slovenia_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_slovenia_eu_tax_file_number` is found. 
    
A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_slovenia_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Slovenia Tax Identification Number -->
      <Entity id="e47b071e-c352-4d70-8241-8c215ad65505" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_slovenia_eu_tax_file_number" />
          <Match idRef="Keywords_slovenia_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_slovenia_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_slovenia_eu_tax_file_number

- davčna številka
- identifikacijska številka davka
- številka davčne datoteke
- tax file no
- tax file number
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## South Africa identification number

### Format

13 digits that may contain spaces

### Pattern

13 digits:
- six digits in the format YYMMDD, which are the date of birth 
- four digits 
- a single-digit citizenship indicator 
- the digit "8" or "9" 
- one digit, which is a checksum digit

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_south_africa_identification_number finds content that matches the pattern.
- A keyword from Keyword_south_africa_identification_number is found.
- The checksum passes.

```xml
<!-- South Africa Identification Number -->
<Entity id="e2adf7cb-8ea6-4048-a2ed-d89eb65f2780" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_south_africa_identification_number"/>
     <Match idRef="Keyword_south_africa_identification_number"/>
  </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_south_africa_identification_number

- Identity card
- ID
- Identification 
   
## South Korea resident registration number

### Format

13 digits containing a hyphen

### Pattern

13 digits:
- six digits in the format YYMMDD, which are the date of birth 
- a hyphen 
- one digit determined by the century and gender 
- four-digit region-of-birth code 
- one digit used to differentiate people for whom the preceding numbers are identical 
- a check digit.

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_south_korea_resident_number finds content that matches the pattern.
- A keyword from Keyword_south_korea_resident_number is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_south_korea_resident_number finds content that matches the pattern.
- The checksum passes.

```xml
<!-- South Korea Resident Registration Number -->
<Entity id="5b802e18-ba80-44c4-bc83-bf2ad36ae36a" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_south_korea_resident_number"/>
     <Match idRef="Keyword_south_korea_resident_number"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_south_korea_resident_number"/>
  </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_south_korea_resident_number

- National ID card 
- Citizen's Registration Number 
- Jumin deungnok beonho 
- RRN 
- 주민등록번호

## Spain driver's license number

### Format

eight digits followed by one character
  
### Pattern

eight digits followed by one character:
  
- eight digits 
- one digit or letter (not case-sensitive)
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_spain_eu_DL_and_NI_number_citizen` or `Func_spain_eu_DL_and_NI_number_foreigner` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_spain_eu_driver's_license_number` is found. 

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_spain_eu_DL_and_NI_number_citizen` or `Func_spain_eu_DL_and_NI_number_foreigner` finds content that matches the pattern. 
    
```xml
      <!-- Spain Driver's License Number -->
      <Entity id="d5a82922-b501-4f40-8868-341321146aa2" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_spain_eu_driver's_license_number" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
        </Pattern>
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_foreigner" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_spain_eu_driver's_license_number" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_foreigner" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_spain_eu_driver's_license_number

- permiso de conducción
- permiso conducción
- licencia de conducir
- licencia conducir
- permiso conducir
- permiso de conducir
- permisos de conducir
- permisos conducir
- carnet conducir
- carnet de conducir
- licencia de manejo
- licencia manejo

## Spain DNI
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

eight digits followed by one character
  
### Pattern

seven digits followed by one character
  
- eight digits
- An optional space or hyphen
- one check letter (not case-sensitive)
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_spain_eu_DL_and_NI_number_citizen` or `Func_spain_eu_DL_and_NI_number_foreigner` finds content that matches the pattern. 
- A keyword from  `Keywords_spain_eu_national_id_card"` is found. 

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_spain_eu_DL_and_NI_number_citizen` or `Func_spain_eu_DL_and_NI_number_foreigner` finds content that matches the pattern. 

    
```xml
      <!-- Spain DNI -->
      <Entity id="8e6251b9-47b4-40e8-a42b-0f80876be192" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
          <Match idRef="Keywords_spain_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
        </Pattern>
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_foreigner" />
          <Match idRef="Keywords_spain_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_foreigner" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_spain_eu_national_id_card

- carné de identidad
- dni#
- dni
- dninúmero#
- documento nacional de identidad
- identidad único
- identidadúnico#
- insurance number
- national identification number
- national identity
- nationalid#
- nationalidno#
- nie#
- nie
- nienúmero#
- número de identificación
- número nacional identidad
- personal identification number
- personal identity no
- unique identity number
- uniqueid#

## Spain passport number

### Format

an eight- or nine-character combination of letters and numbers with no spaces or delimiters
  
### Pattern

an eight- or nine-character combination of letters and numbers:
  
- two digits or letters 
- one digit or letter (optional)
- six digits
    
### Checksum

Not applicable
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_spain_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_spain_eu_passport_number` is found. 
- The regular expression `Regex_spain_eu_passport_date` finds date in the format DD-MM-YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_spain_eu_passport_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_passport_number` or `Keywords_spain_eu_passport_number` is found.
    
```xml
      <!-- Spain Passport Number -->
      <Entity id="d17a57de-9fa5-4e9f-85d3-85c26d89686e" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_spain_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_spain_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_spain_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_spain_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_spain_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_spain_eu_passport_number

- libreta pasaporte
- número pasaporte
- españa pasaporte
- números de pasaporte
- número de pasaporte
- números pasaporte
- pasaporte no
- Passeport n°
- n° Passeport
- pasaporte no.
- pasaporte n°
- spain passport

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Spain social security number (SSN)


### Format

11-12 digits

### Pattern

11-12 digits:
- two digits 
- a forward slash (optional) 
- seven to eight digits 
- a forward slash (optional) 
- two digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_spanish_social_security_number finds content that matches the pattern.
- The checksum passes.
- - A keyword from  `Keywords_spain_eu_ssn_or_equivalent` is found. 

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_spanish_social_security_number finds content that matches the pattern.
- The checksum passes.

```xml
    <!-- Spain SSN -->
    <Entity id="5df987c0-8eae-4bce-ace7-b316347f3070" patternsProximity="300" recommendedConfidence="85" relaxProximity="true" >
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spanish_social_security_number" />
          <Match idRef="Keywords_spain_eu_ssn_or_equivalent" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spanish_social_security_number" />
        </Pattern>
    </Entity>
```

### Keywords

#### Keywords_spain_eu_passport_number

- ssn
- ssn#
- socialsecurityno
- social security no
- social security number
- número de la seguridad social

## Spain tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

seven or eight digits and one or two letters in the specified pattern
  
### Pattern

Spanish Natural Persons with a Spain National Identity Card:
  
- eight digits 
- one uppercase letter (case-sensitive) 
    
Non-resident Spaniards without a Spain National Identity Card
  
- one uppercase letter "L" (case-sensitive)
- seven digits
- one uppercase letter (case-sensitive) 
    
Resident Spaniards under the age of 14 years without a Spain National Identity Card:
  
- one uppercase letter "K" (case-sensitive)
- seven digits 
- one uppercase letter (case-sensitive)
    
Foreigners with a Foreigner's Identification Number
  
- one uppercase letter that is "X", "Y", or "Z" (case-sensitive) 
- seven digits
- one uppercase letter (case-sensitive) 
    
Foreigners without a Foreigner's Identification Number
  
- one uppercase letter that is "M" (case-sensitive) 
- seven digits
- one uppercase letter (case-sensitive) 
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_spain_eu_tax_file_number` or `Func_spain_eu_DL_and_NI_number_citizen` finds content that matches the pattern. 
- A keyword from  `Keywords_spain_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_spain_eu_tax_file_number` or `Func_spain_eu_DL_and_NI_number_citizen` finds content that matches the pattern. 
    
```xml
      <!-- Spain Tax Identification Number -->
      <Entity id="10f0d113-b0e1-47dc-872a-a4f45b9376a3" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_tax_file_number" />
          <Match idRef="Keywords_spain_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
          <Match idRef="Keywords_spain_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_spain_eu_tax_file_number

- cif
- cifid#
- cifnúmero#
- número de contribuyente
- número de identificación fiscal
- número de impuesto corporativo
- spanishcifid#
- spanishcifid
- spanishcifno#
- spanishcifno
- tax file no
- tax file number
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## SQL Server connection string

### Format

The string "User Id", "User ID", "uid", or "UserId" followed by the characters and strings outlined in the pattern below.

### Pattern

- the string "User Id", "User ID", "uid", or "UserId"
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "Password" or "pwd" where "pwd" isn't preceded by a lowercase letter
- an equal sign (=)
- any character that isn't a dollar sign ($), percent symbol (%), greater than symbol (>), at symbol (@), quotation mark ("), semicolon (;), left brace([), or left bracket ({)
- any combination of 7-128 characters that are not a semicolon (;), forward slash (/), or quotation mark (")
- a semicolon (;) or quotation mark (")

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_SQLServerConnectionString finds content that matches the pattern.
- A keyword from CEP_GlobalFilter isn't found.
- The regular expression CEP_PasswordPlaceHolder doesn't find content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords doesn't find content that matches the pattern.

```sql
<!---SQL Server Connection String>
<Entity id="e76b6205-d3cb-46f2-bd63-c90153f2f97d" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_SQLServerConnectionString" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_GlobalFilter" />
            <Match idRef="CEP_PasswordPlaceHolder" />
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### CEP_GlobalFilter

- some-password
- somepassword
- secretPassword
- sample

#### CEP_PasswordPlaceHolder

(Note that technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- Password or pwd followed by 0-2 spaces, an equal sign (=), 0-2 spaces, and an asterisk (*)
-OR-
- Password or pwd followed by:
    - Equal sign (=)
    - Less than symbol (<)
    - Any combination of 1-200 characters that are upper- or lowercase letters, digits, an asterisk (*), hyphen (-), underline (_), or whitespace character
    - Greater than symbol (>)

#### CEP_CommonExampleKeywords

(Note that technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net

## Sweden driver's license number

### Format

ten digits containing a hyphen
  
### Pattern

ten digits containing a hyphen:
  
- six digits 
- a hyphen
- four digits
    
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression  `Regex_sweden_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_eu_driver's_license_number` or `Keywords_sweden_eu_driver's_license_number` is found. 
    
```xml
      <!-- Sweden Driver's License Number -->
      <Entity id="70088720-90dd-47f5-805e-5525f3567391" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_sweden_eu_driver's_license_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_driver's_license_number" />
            <Match idRef="Keywords_sweden_eu_driver's_license_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number


#### Keywords_sweden_eu_driver's_license_number

- ajokortti
- permis de conducere
- ajokortin numero
- kuljettajat lic.
- drivere lic.
- körkort
- numărul permisului de conducere
-  שאָפער דערלויבעניש נומער
- förare lic.
-  דריווערס דערלויבעניש
- körkortsnummer

## Sweden national ID

### Format

10 or 12 digits and an optional delimiter

### Pattern

10 or 12 digits and an optional delimiter:
- two digits (optional) 
- Six digits in date format YYMMDD 
- delimiter of "-" or "+" (optional)
- four digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_swedish_national_identifier` finds content that matches the pattern.
- A keyword from `Keywords_swedish_national_identifier` is found
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_swedish_national_identifier` finds content that matches the pattern.
- The checksum passes.


```xml
    <!-- Sweden National ID -->
    <Entity id="f69aaf40-79be-4fac-8f05-fd1910d272c8" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_swedish_national_identifier" />
        <Match idRef="Keywords_swedish_national_identifier" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_swedish_national_identifier" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keywords_swedish_national_identifier

- id no
- id number
- id#
- identification no
- identification number
- identifikationsnumret#
- identifikationsnumret
- identitetshandling
- identity document
- identity no
- identity number
- id-nummer
- personal id
- personnummer#
- personnummer
- skatteidentifikationsnummer
   
## Sweden passport number

### Format

eight digits

### Pattern

eight consecutive digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- the regular expression Regex_sweden_passport_number finds content that matches the pattern.
- a keyword from `Keywords_eu_passport_number` or `Keyword_sweden_passport` is found.
- the regular expression `Regex_sweden_eu_passport_date` finds a date in the format DD MMM/MMM YY (01 JAN/JAN 12) or a keyword from `Keywords_eu_passport_date` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- the regular expression Regex_sweden_passport_number finds content that matches the pattern.
- a keyword from `Keywords_eu_passport_number` or `Keyword_sweden_passport` is found.


```xml
    <!-- Sweden Passport Number -->
    <Entity id="ba4e7456-55a9-4d89-9140-c33673553526" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_sweden_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_sweden_passport" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_sweden_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_sweden_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_sweden_passport" />
          </Any>
      </Pattern>
    </Entity>
```

### Keywords
   
#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keyword_sweden_passport

- alien registration card
- g3 processing fees
- multiple entry
- Numéro de passeport
- passeport n °
- passeport non
- passeport #
- passeport#
- passeportnon
- passeportn °
- passnummer
- pass nr
- schengen visa
- schengen visas
- single entry
- sverige pass
- visa requirements
- visa processing
- visa type

#### Keywords_eu_passport_date

- date of issue
- date of expiry


## Sweden tax identification number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

10 digits and a symbol in the specified pattern
  
### Pattern

10 digits and a symbol:
  
- six digits that correspond to the birth date (YYMMDD) 
- a plus sign or minus sign
- three digits that make the identification number unique where: 
  - for numbers issued before 1990, the seventh and eighth digit identify the county of birth or foreign-born people
  - the digit in the ninth position indicates gender by either odd for male or even for female
- one check digit
    
### Checksum

Yes
  
### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_sweden_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_sweden_eu_tax_file_number` is found. 
    
A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_sweden_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
      <!-- Sweden Tax Identification Number -->
      <Entity id="139acba0-a5bc-4fbb-876d-f7a493ae8a40" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_sweden_eu_tax_file_number" />
          <Match idRef="Keywords_sweden_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_sweden_eu_tax_file_number" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_sweden_eu_telephone_number" />
            <Match idRef="Keywords_sweden_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_sweden_eu_tax_file_number

- personal id number
- personnummer
- skatt id nummer
- skatt identifikation
- skattebetalarens identifikationsnummer
- sverige tin
- tax file
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#


## SWIFT code

### Format

four letters followed by 5-31 letters or digits

### Pattern

four letters followed by 5-31 letters or digits:
- four-letter bank code (not case-sensitive) 
- an optional space 
- 4-28 letters or digits (the Basic Bank Account Number (BBAN)) 
- an optional space 
- one to three letters or digits (remainder of the BBAN)

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_swift finds content that matches the pattern.
- A keyword from Keyword_swift is found.

```xml
<Entity id="cb2ab58c-9cb8-4c81-baf8-a4e106791df4" patternsProximity="300" recommendedConfidence="75">
<Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_swift" />
        <Match idRef="Keyword_swift" />
    </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_swift

- international organization for standardization 9362
- iso 9362
- iso9362
- swift#
- swiftcode
- swiftnumber
- swiftroutingnumber
- swift code
- swift number #
- swift routing number
- bic number
- bic code
- bic #
- bic#
- bank identifier code
- Organisation internationale de normalisation 9362
- rapide #
- code SWIFT
- le numéro de swift
- swift numéro d'acheminement
- le numéro BIC
- # BIC
- code identificateur de banque
- SWIFTコード
- SWIFT番号
- BIC番号
- BICコード
- SWIFT コード
- SWIFT 番号
- BIC 番号
- BIC コード
- 金融機関識別コード
- 金融機関コード
- 銀行コード

## Switzerland SSN AHV number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

13-digit number

### Pattern

13-digit number:

- three digits - 756
- an optional dot
- four digits
- an optional dot
- four digits
- an optional dot
- two digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_swiss_social_security_number_ahv finds content that matches the pattern.
- A keyword from Keywords_swiss_social_security_number_ahv is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_swiss_social_security_number_ahv finds content that matches the pattern.

```xml
      <!-- Swiss SSN AHV Number -->
      <Entity id="277cfa4b-6eaa-4a1b-9492-099dec849971" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_swiss_social_security_number_ahv" />
          <Match idRef="Keywords_swiss_social_security_number_ahv" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_swiss_social_security_number_ahv" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_swiss_ssn_AHV_number

- ahv
- ssn
- pid
- insurance number
- personalidno#
- social security number
- personal id number
- personal identification no.
- insuranceno#
- uniqueidno#
- unique identification no.
- avs number
- personal identity no versicherungsnummer
- identifikationsnummer
- einzigartige identität nicht
- sozialversicherungsnummer
- identification personnelle id
- numéro de sécurité sociale

   
## Taiwan national identification number

### Format

one letter (in English) followed by nine digits

### Pattern

one letter (in English) followed by nine digits:
- one letter (in English, not case-sensitive) 
- the digit "1" or "2" 
- eight digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_taiwanese_national_id finds content that matches the pattern.
- A keyword from Keyword_taiwanese_national_id is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_taiwanese_national_id finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Taiwanese National ID -->
<Entity id="4C7BFC34-8DD1-421D-8FB7-6C6182C2AF03" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_taiwanese_national_id" />
          <Match idRef="Keyword_taiwanese_national_id" />
      </Pattern>
       <Pattern confidenceLevel="75">
         <IdMatch idRef="Func_taiwanese_national_id" />
       </Pattern>
</Entity>
```

### Keywords

#### Keyword_taiwan_national_id

- 身份證字號 
- 身份證 
- 身份證號碼 
- 身份證號 
- 身分證字號 
- 身分證 
- 身分證號碼 
- 身份證號 
- 身分證統一編號 
- 國民身分證統一編號 
- 簽名 
- 蓋章 
- 簽名或蓋章 
- 簽章   
   
## Taiwan passport number

### Format

- biometric passport number: nine digits
- non-biometric passport number: nine digits

### Pattern
biometric passport number:
- the character "3" 
- eight digits

non-biometric passport number:
- nine digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_taiwan_passport finds content that matches the pattern.
- A keyword from Keyword_taiwan_passport is found.

```xml
<!-- Taiwan Passport Number -->
<Entity id="e7251cb4-4c2c-41df-963e-924eb3dae04a" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_taiwan_passport"/>
     <Match idRef="Keyword_taiwan_passport"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_taiwan_passport

- ROC passport number 
- Passport number 
- Passport no 
- Passport Num 
- Passport # 
- 护照 
- 中華民國護照 
- Zhōnghuá Mínguó hùzhào
   
## Taiwan-resident certificate (ARC/TARC) number

### Format

10 letters and digits

### Pattern

10 letters and digits:
- two letters (not case-sensitive) 
- eight digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_taiwan_resident_certificate finds content that matches the pattern.
- A keyword from Keyword_taiwan_resident_certificate is found.

```xml
<!-- Taiwan Resident Certificate (ARC/TARC) -->
<Entity id="48269fec-05ea-46ea-b326-f5623a58c6e9" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_taiwan_resident_certificate"/>
     <Match idRef="Keyword_taiwan_resident_certificate"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_taiwan_resident_certificate

- Resident Certificate 
- Resident Cert 
- Resident Cert. 
- Identification card 
- Alien Resident Certificate 
- ARC 
- Taiwan Area Resident Certificate 
- TARC 
- 居留證 
- 外僑居留證 
- 台灣地區居留證 

## Thai population identification code

### Format

13 digits

### Pattern

13 digits:
- first digit isn't zero or nine 
- 12 digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Thai_Citizen_Id finds content that matches the pattern.
- A keyword from Keyword_Thai_Citizen_Id is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Thai_Citizen_Id finds content that matches the pattern.

```xml
<!-- Thai Citizen ID -->
-<Entity id="44ca9e86-ead7-4c5d-884a-e2eaa401515e" recommendedConfidence="75" patternsProximity="300">
   -<Pattern confidenceLevel="85">
      <IdMatch idRef="Func_Thai_Citizen_Id"/>
      <Match idRef="Keyword_Thai_Citizen_Id"/>
   </Pattern>
   -<Pattern confidenceLevel="75">
      <IdMatch idRef="Func_Thai_Citizen_Id"/>
   </Pattern>
</Entity>
```

### Keywords

#### Keyword_thai_citizen_Id

- ID Number
- Identification Number
- บัตรประชาชน
- รหัสบัตรประชาชน
- บัตรประชาชน
- รหัสบัตรประชาชน
  
## Turkish national identification number

### Format

11 digits

### Pattern

11 digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Turkish_National_Id finds content that matches the pattern.
- A keyword from Keyword_Turkish_National_Id is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Turkish_National_Id finds content that matches the pattern.

```xml
<!-- Turkish National Identity -->
-<Entity id="fb621f20-3876-4cfc-acec-8c8e73ca32c7" recommendedConfidence="75" patternsProximity="300">
   -<Pattern confidenceLevel="85">
      <IdMatch idRef="Func_Turkish_National_Id"/>
      <Match idRef="Keyword_Turkish_National_Id"/>
   </Pattern>
   -<Pattern confidenceLevel="75">
      <IdMatch idRef="Func_Turkish_National_Id"/>
   </Pattern>
</Entity>
```

### Keywords

#### Keyword_turkish_national_id

- TC Kimlik No
- TC Kimlik numarası
- Vatandaşlık numarası
- Vatandaşlık no

## U.K. driver's license number

### Format

Combination of 18 letters and digits in the specified format

### Pattern

18 letters and digits:
- Five letters (not case-sensitive) or the digit "9" in place of a letter. 
- One digit.
- Five digits in the date format MMDDY for date of birth. The seventh character is incremented by 50 if driver is female; for exampe, 51 to 62 instead of 01 to 12.
- Two letters (not case-sensitive) or the digit "9" in place of a letter. 
- Five digits.

### Checksum

Yes

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_uk_drivers_license` finds content that matches the pattern.
- A keyword from `Keywords_eu_driver's_license_number` is found.
- The checksum passes.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function `Func_uk_drivers_license` finds content that matches the pattern.
- The checksum passes.

```xml
    <!-- U.K. Driver's License Number -->
    <Entity id="f93de4be-d94c-40df-a8be-461738047551" patternsProximity="300" recommendedConfidence="75" relaxProximity="true" >
      <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_uk_drivers_license" />
          <Match idRef="Keywords_eu_driver's_license_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Func_uk_drivers_license" />
        </Pattern>
    </Entity>
```

### Keywords

#### Keywords_eu_driver's_license_number

- driverlic
- driverlics
- driverlicense
- driverlicenses
- driverlicence
- driverlicences
- driver lic
- driver lics
- driver license
- driver licenses
- driver licence
- driver licences
- driverslic
- driverslics
- driverslicence
- driverslicences
- driverslicense
- driverslicenses
- drivers lic
- drivers lics
- drivers license
- drivers licenses
- drivers licence
- drivers licences
- driver'lic
- driver'lics
- driver'license
- driver'licenses
- driver'licence
- driver'licences
- driver' lic
- driver' lics
- driver' license
- driver' licenses
- driver' licence
- driver' licences
- driver'slic
- driver'slics
- driver'slicense
- driver'slicenses
- driver'slicence
- driver'slicences
- driver's lic
- driver's lics
- driver's license
- driver's licenses
- driver's licence
- driver's licences
- dl#
- dls#
- driverlic#
- driverlics#
- driverlicense#
- driverlicenses#
- driverlicence#
- driverlicences#
- driver lic#
- driver lics#
- driver license#
- driver licenses#
- driver licences#
- driverslic#
- driverslics#
- driverslicense#
- driverslicenses#
- driverslicence#
- driverslicences#
- drivers lic#
- drivers lics#
- drivers license#
- drivers licenses#
- drivers licence#
- drivers licences#
- driver'lic#
- driver'lics#
- driver'license#
- driver'licenses#
- driver'licence#
- driver'licences#
- driver' lic#
- driver' lics#
- driver' license#
- driver' licenses#
- driver' licence#
- driver' licences#
- driver'slic#
- driver'slics#
- driver'slicense#
- driver'slicenses#
- driver'slicence#
- driver'slicences#
- driver's lic#
- driver's lics#
- driver's license#
- driver's licenses#
- driver's licence#
- driver's licences#
- driving licence 
- driving license
- dlno#
- driv lic
- driv licen
- driv license
- driv licenses
- driv licence
- driv licences
- driver licen
- drivers licen
- driver's licen
- driving lic
- driving licen
- driving licenses
- driving licence
- driving licences
- driving permit
- dl no
- dlno
- dl number

   
## U.K. electoral roll number

### Format

two letters followed by 1-4 digits

### Pattern

two letters (not case-sensitive) followed by 1-4 numbers

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_uk_electoral finds content that matches the pattern.
- A keyword from Keyword_uk_electoral is found.

```xml
<!-- U.K. Electoral Number -->
<Entity id="a3eea206-dc0c-4f06-9e22-aa1be3059963" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_uk_electoral" />
        <Any minMatches="1">
          <Match idRef="Keyword_uk_electoral" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_uk_electoral

- council nomination 
- nomination form 
- electoral register 
- electoral roll

   
## U.K. national health service number

### Format

10-17 digits separated by spaces

### Pattern

10-17 digits:
- either 3 or 10 digits 
- a space 
- three digits 
- a space 
- four digits

### Checksum

Yes

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_uk_nhs_number finds content that matches the pattern.
- One of the following is true:
    - A keyword from Keyword_uk_nhs_number is found.
    - A keyword from Keyword_uk_nhs_number1 is found.
    - A keyword from Keyword_uk_nhs_number_dob is found.
- The checksum passes.

```xml
<!-- U.K. NHS Number -->
<Entity id="3192014e-2a16-44e9-aa69-4b20375c9a78" patternsProximity="300" recommendedConfidence="85">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_uk_nhs_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_uk_nhs_number" />
          <Match idRef="Keyword_uk_nhs_number1" />
          <Match idRef="Keyword_uk_nhs_number_dob" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_uk_nhs_number

- national health service 
- nhs 
- health services authority 
- health authority

#### Keyword_uk_nhs_number1

- patient id 
- patient identification 
- patient no 
- patient number

#### Keyword_uk_nhs_number_dob

- GP 
- DOB 
- D.O.B 
- Date of Birth 
- Birth Date 
   
## U.K. national insurance number (NINO)
This sensitive information type entity is included in the EU National Identification Number sensitive information type. It's available as a stand-alone sensitive information type entity.

### Format

seven characters or nine characters separated by spaces or dashes

### Pattern

two possible patterns:

- two letters (valid NINOs use only certain characters in this prefix, which this pattern validates; not case-sensitive)
- six digits
- either 'A', 'B', 'C', or 'D' (like the prefix, only certain characters are allowed in the suffix; not case-sensitive)

OR

- two letters
- a space or dash
- two digits
- a space or dash
- two digits
- a space or dash
- two digits
- a space or dash
- either 'A', 'B', 'C', or 'D'

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_uk_nino finds content that matches the pattern.
- A keyword from Keyword_uk_nino is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_uk_nino finds content that matches the pattern.

```xml
    <!-- U.K. NINO -->
    <Entity id="16c07343-c26f-49d2-a987-3daf717e94cc" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_uk_nino" />
        <Match idRef="Keyword_uk_nino" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_uk_nino" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_uk_nino

- national insurance number
- national insurance contributions
- protection act
- insurance
- social security number
- insurance application
- medical application
- social insurance
- medical attention
- social security
- great britain
- NI Number
- NI No.
- NI #
- NI#
- insurance#
- insurancenumber
- nationalinsurance#
- nationalinsurancenumber

    
## U.K. Unique Taxpayer Reference Number
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

10 digits without spaces and delimiters
 
  
### Pattern

10 digits
  
### Checksum

No
  
### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function  `Func_uk_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_uk_eu_tax_file_number` is found. 
    
```xml
      <!-- U.K. Unique Taxpayer Reference Number -->
      <Entity id="ad4a8116-0db8-439a-b545-6d967642f0ec" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_uk_eu_tax_file_number" />
          <Match idRef="Keywords_uk_eu_tax_file_number" />
        </Pattern>
      </Entity>
```

### Keywords

#### Keywords_uk_eu_tax_file_number

- tax number
- tax file
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#

## U.S. bank account number

### Format

6-17 digits

### Pattern

6-17 consecutive digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_usa_bank_account_number finds content that matches the pattern.
- A keyword from Keyword_usa_Bank_Account is found.

```xml
<!-- U.S. Bank Account Number -->
<Entity id="a2ce32a8-f935-4bb6-8e96-2a5157672e2c" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_usa_bank_account_number" />
        <Match idRef="Keyword_usa_Bank_Account" />
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_usa_Bank_Account

- Checking Account Number 
- Checking Account 
- Checking Account # 
- Checking Acct Number 
- Checking Acct # 
- Checking Acct No. 
- Checking Account No. 
- Bank Account Number 
- Bank Account # 
- Bank Acct Number 
- Bank Acct # 
- Bank Acct No. 
- Bank Account No. 
- Savings Account Number 
- Savings Account. 
- Savings Account # 
- Savings Acct Number 
- Savings Acct # 
- Savings Acct No. 
- Savings Account No. 
- Debit Account Number 
- Debit Account 
- Debit Account # 
- Debit Acct Number 
- Debit Acct # 
- Debit Acct No. 
- Debit Account No. 

## U.S. driver's license number

### Format

Depends on the state

### Pattern

depends on the state - for example, New York:
- nine digits formatted like ddd ddd ddd will match.
- nine digits like ddddddddd will not match.

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_york_drivers_license_number finds content that matches the pattern.
- A keyword from Keyword_[state_name]_drivers_license_name is found.
- A keyword from Keyword_us_drivers_license is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_york_drivers_license_number finds content that matches the pattern.
- A keyword from Keyword_[state_name]_drivers_license_name is found.
- A keyword from Keyword_us_drivers_license_abbreviations is found.
- No keyword from Keyword_us_drivers_license is found.

```xml
<Entity id="dfeb356f-61cd-459e-bf0f-7c6d28b458c6 patternsProximity="300">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_new_york_drivers_license_number" />
        <Match idRef="Keyword_new_york_drivers_license_name" />
        <Match idRef="Keyword_us_drivers_license" />
    </Pattern>
    <Pattern confidenceLevel="65">
        <IdMatch idRef="Func_new_york_drivers_license_number" />
        <Match idRef="Keyword_new_york_drivers_license_name" />
        <Match idRef="Keyword_us_drivers_license_abbreviations" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_us_drivers_license" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_us_drivers_license_abbreviations

- DL 
- DLS 
- CDL 
- CDLS 
- ID 
- IDs 
- DL# 
- DLS# 
- CDL# 
- CDLS# 
- ID#
- IDs# 
- ID number 
- ID numbers 
- LIC 
- LIC# 

#### Keyword_us_drivers_license

- DriverLic 
- DriverLics 
- DriverLicense 
- DriverLicenses 
- Driver Lic 
- Driver Lics 
- Driver License 
- Driver Licenses 
- DriversLic 
- DriversLics 
- DriversLicense 
- DriversLicenses 
- Drivers Lic 
- Drivers Lics 
- Drivers License 
- Drivers Licenses 
- Driver'Lic 
- Driver'Lics 
- Driver'License 
- Driver'Licenses 
- Driver' Lic 
- Driver' Lics 
- Driver' License 
- Driver' Licenses
- Driver'sLic 
- Driver'sLics 
- Driver'sLicense 
- Driver'sLicenses 
- Driver's Lic 
- Driver's Lics 
- Driver's License 
- Driver's Licenses 
- identification number 
- identification numbers 
- identification # 
- id card 
- id cards 
- identification card 
- identification cards 
- DriverLic# 
- DriverLics# 
- DriverLicense# 
- DriverLicenses# 
- Driver Lic# 
- Driver Lics# 
- Driver License# 
- Driver Licenses# 
- DriversLic# 
- DriversLics# 
- DriversLicense# 
- DriversLicenses# 
- Drivers Lic# 
- Drivers Lics# 
- Drivers License# 
- Drivers Licenses# 
- Driver'Lic# 
- Driver'Lics# 
- Driver'License# 
- Driver'Licenses# 
- Driver' Lic# 
- Driver' Lics# 
- Driver' License# 
- Driver' Licenses# 
- Driver'sLic# 
- Driver'sLics# 
- Driver'sLicense# 
- Driver'sLicenses# 
- Driver's Lic# 
- Driver's Lics# 
- Driver's License# 
- Driver's Licenses# 
- id card# 
- id cards# 
- identification card# 
- identification cards# 


#### Keyword_[state_name]_drivers_license_name

- state abbreviation (for example, "NY") 
- state name (for example, "New York")

## U.S. individual taxpayer identification number (ITIN)

### Format

nine digits that start with a "9" and contain a "7" or "8" as the fourth digit, optionally formatted with spaces or dashes

### Pattern

formatted:
- the digit "9" 
- two digits 
- a space or dash 
- a "7" or "8" 
- a digit 
- a space, or dash 
- four digits

unformatted:
- the digit "9" 
- two digits 
- a "7" or "8" 
- five digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_formatted_itin finds content that matches the pattern.
- A keyword from Keyword_itin is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_unformatted_itin finds content that matches the pattern.
- A keyword from Keyword_itin is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_formatted_itin or Func_unformatted_itin finds content that matches the pattern.

```xml
    <!-- U.S. Individual Taxpayer Identification Number (ITIN) -->
    <Entity id="e55e2a32-f92d-4985-a35d-a0b269eb687b" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_formatted_itin" />
        <Match idRef="Keyword_itin" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_unformatted_itin" />
        <Match idRef="Keyword_itin" />
      </Pattern>
      <Pattern confidenceLevel="65">
        <IdMatch idRef="Func_formatted_itin" />
      </Pattern>
      <Pattern confidenceLevel="65">
        <IdMatch idRef="Func_unformatted_itin" />
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_itin

- taxpayer 
- tax id 
- tax identification 
- itin 
- i.t.i.n.
- ssn 
- tin 
- social security 
- tax payer 
- itins 
- taxid 
- individual taxpayer 


## U.S. social security number (SSN)

### Format

nine digits, which may be in a formatted or unformatted pattern

> [!NOTE]
> If issued before mid-2011, an SSN has strong formatting where certain parts of the number must fall within certain ranges to be valid (but there's no checksum).

### Pattern

four functions look for SSNs in four different patterns:
- Func_ssn finds SSNs with pre-2011 strong formatting that are formatted with dashes or spaces (ddd-dd-dddd OR ddd dd dddd)
- Func_unformatted_ssn finds SSNs with pre-2011 strong formatting that are unformatted as nine consecutive digits (ddddddddd)
- Func_randomized_formatted_ssn finds post-2011 SSNs that are formatted with dashes or spaces (ddd-dd-dddd OR ddd dd dddd)
- Func_randomized_unformatted_ssn finds post-2011 SSNs that are unformatted as nine consecutive digits (ddddddddd)

### Checksum

No


### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_ssn finds content that matches the pattern.
- A keyword from Keyword_ssn is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_unformatted_ssn finds content that matches the pattern.
- A keyword from Keyword_ssn is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_randomized_formatted_ssn finds content that matches the pattern.
- A keyword from Keyword_ssn is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_randomized_unformatted_ssn finds content that matches the pattern.
- A keyword from Keyword_ssn is found.


```xml
<!-- U.S. Social Security Number (SSN) -->
  <Entity id="a44669fe-0d48-453d-a9b1-2cc83f2cba77" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_ssn" />
        <Match idRef="Keyword_ssn" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_unformatted_ssn" />
        <Match idRef="Keyword_ssn" />
      </Pattern>
      <Pattern confidenceLevel="65">
        <IdMatch idRef="Func_randomized_formatted_ssn" />
        <Match idRef="Keyword_ssn" />
      </Pattern>
      <Pattern confidenceLevel="55">
        <IdMatch idRef="Func_randomized_unformatted_ssn" />
        <Match idRef="Keyword_ssn" />
      </Pattern>
  </Entity>
```

### Keywords

#### Keyword_ssn

- SSA Number
- social security number
- social security #
- social security#
- social security no
- Social Security#
- Soc Sec
- SSN
- SSNS
- SSN#
- SS#
- SSID
   
## U.S. / U.K. passport number

### Format

nine digits

### Pattern

nine consecutive digits

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_usa_uk_passport finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_uk_eu_passport_number` is found.
- A keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_usa_uk_passport finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_uk_eu_passport_number` is found.

```xml
    <!-- U.S. / U.K. Passport Number -->
    <Entity id="178ec42a-18b4-47cc-85c7-d62c92fd67f8" patternsProximity="300" recommendedConfidence="75">
       <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_usa_uk_passport" />
          <Match idRef="Keywords_eu_passport_date" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_uk_eu_passport_number" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_usa_uk_passport" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_uk_eu_passport_number" />
          </Any>
        </Pattern>
    </Entity>
```

### Keywords

#### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

#### Keywords_uk_eu_passport_number

- british passport 
- uk passport 


## Ukraine passport domestic
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

nine digits

### Pattern

nine digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regex Regex_Ukraine_Passport_Domestic finds content that matches the pattern.
- A keyword from Keyword_Ukraine_Passport_Domestic is found.

```xml
      <!-- Ukraine Passport Domestic -->
      <Entity id="1817a540-221f-4459-9202-3bd78b81d803" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_Ukraine_Passport_Domestic"/>
          <Match idRef="Keyword_Ukraine_Passport_Domestic"/>
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_ukraine_passport_domestic

- ukraine passport
- passport number
- passport no
- паспорт України
- номер паспорта
- персональний


## Ukraine passport international
This sensitive information type is only available for use in:
- data loss prevention policies
- communication compliance policies
- information governance
- records management
- Microsoft cloud app security

### Format

eight-character alphanumeric pattern

### Pattern

eight-character alphanumeric pattern:
- two letters or digits
- six digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regex Regex_Ukraine_Passport_International finds content that matches the pattern.
- A keyword from Keyword_Ukraine_Passport_International is found.

```xml
      <!-- Ukraine Passport International -->
      <Entity id="cfbe032d-22e0-4f28-ab68-d66e9641f1e2" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_Ukraine_Passport_International"/>
          <Match idRef="Keyword_Ukraine_Passport_International"/>
        </Pattern>
      </Entity>
```

### Keywords

#### Keyword_ukraine_passport_international

- ukraine passport
- passport number
- passport no
- паспорт України
- номер паспорта
