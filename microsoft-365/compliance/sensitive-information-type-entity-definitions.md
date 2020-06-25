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
description: "Data loss prevention (DLP) in the Security &amp; Compliance Center includes 80 sensitive information types that are ready for you to use in your DLP policies. This topic lists all of these sensitive information types and shows what a DLP policy looks for when it detects each type."
---

# Sensitive information type entity definitions

Data loss prevention (DLP) in the Compliance Center includes many sensitive information types that are ready for you to use in your DLP policies. This topic lists all of these sensitive information types and shows what a DLP policy looks for when it detects each type. A sensitive information type is defined by a pattern that can be identified by a regular expression or a function. In addition, corroborative evidence such as keywords and checksums can be used to identify a sensitive information type. Confidence level and proximity are also used in the evaluation process.
  
## ABA routing number

### Format

9 digits which may be in a formatted or unformatted pattern

### Pattern

Formatted:
- Four digits beginning with 0, 1, 2, 3, 6, 7, or 8
- A hyphen
- Four digits
- A hyphen
- A digit

Unformatted:
9 consecutive digits beginning with 0, 1, 2, 3, 6, 7, or 8 

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_aba_routing finds content that matches the pattern.
- A keyword from Keyword_ABA_Routing is found.

```xml
<!-- ABA Routing Number -->
<Entity id="cb353f78-2b72-4c3c-8827-92ebe4f69fdf" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_aba_routing" />
        <Match idRef="Keyword_ABA_Routing" />
      </Pattern>
 </Entity>
```


### Keywords

#### Keyword_ABA_Routing

- aba
- aba #
- aba routing #
- aba routing number
- aba#
- abarouting#
- aba number
- abaroutingnumber
- american bank association routing #
- american bank association routing number
- americanbankassociationrouting#
- americanbankassociationroutingnumber
- bank routing number
- bankrouting#
- bankroutingnumber
- routing transit number
- RTN 
   
## Argentina national identity (DNI) number

### Format

Eight digits separated by periods

### Pattern

Eight digits:
- Two digits
- A period
- Three digits
- A period
- Three digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Identity 
- Identification National Identity Card 
- DNI 
- NIC National Registry of Persons 
- Documento Nacional de Identidad 
- Registro Nacional de las Personas 
- Identidad 
- Identificación 
   
## Australia bank account number

### Format

6-10 digits with or without a bank state branch number

### Pattern

Account number is 6-10 digits.
Australia bank state branch number:
- Three digits 
- A hyphen 
- Three digits

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_australia_bank_account_number finds content that matches the pattern..
- A keyword from Keyword_australia_bank_account_number is found.
- The regular expression Regex_australia_bank_account_number_bsb finds content that matches the pattern.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_australia_bank_account_number finds content that matches the pattern..
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

   
## Australia driver's license number

### Format

Nine letters and digits

### Pattern

Nine letters and digits: 

- Two digits or letters (not case sensitive) 
- Two digits 
- Five digits or letters (not case sensitive)

OR

- 1-2 optional letters (not case sensitive) 
- 4-9 digits

OR

- Nine digits or letters (not case sensitive)

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Ninth digit is a check digit
- Tenth digit is the issue digit
- Eleventh digit (optional) is the individual number

### Checksum

Yes

### Definition

A DLP policy is 95% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_australian_medical_account_number finds content that matches the pattern.
- A keyword from Keyword_Australia_Medical_Account_Number is found.
- The checksum passes.

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_australian_medical_account_number finds content that matches the pattern.
- The checksum passes.

```xml
  <!-- Australia Medical Account Number -->
<Entity id="104a99a0-3d3b-4542-a40d-ab0b9e1efe63" recommendedConfidence="85" patternsProximity="300">
    <Pattern confidenceLevel="95">
     <IdMatch idRef="Func_australian_medical_account_number"/>
     <Any minMatches="1">
     <Match idRef="Keyword_Australia_Medical_Account_Number"/>
     </Any>
  </Pattern>
<Pattern confidenceLevel="85">
     <IdMatch idRef="Func_australian_medical_account_number"/>
     <Any minMatches="0" maxMatches="0">
  <Match idRef="Keyword_Australia_Medical_Account_Number"/>
     </Any>
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

A letter followed by seven digits

### Pattern

A letter (not case sensitive) followed by seven digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_australia_passport_number finds content that matches the pattern.
- A keyword from Keyword_passport or Keyword_australia_passport_number is found.

```xml
<!-- Australia Passport Number -->
<Entity id="29869db6-602d-4853-ab93-3484f905df50" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_australia_passport_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_passport" />
          <Match idRef="Keyword_australia_passport_number" />
        </Any>
   </Pattern>
</Entity>   
```

### Keywords

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
- パスポート ＃ 
- Numéro de passeport
- Passeport n °
- Passeport Non
- Passeport #
- Passeport#
- PasseportNon
- Passeportn °

#### Keyword_australia_passport_number

- passport
- passport details
- immigration and citizenship
- commonwealth of australia
- department of immigration
- residential address
- department of immigration and citizenship
- visa
- national identity card
- passport number
- travel document
- issuing authority
   
## Australia tax file number

### Format

8-9 digits

### Pattern

8-9 digits typically presented with spaces as follows:
- Three digits 
- An optional space 
- Three digits 
- An optional space 
- 2-3 digits where the last digit is a check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_australian_tax_file_number finds content that matches the pattern.
- No keyword from Keyword_Australia_Tax_File_Number or Keyword_number_exclusions is found.
- The checksum passes.

```xml
   <!-- Australia Tax File Number -->
    <Entity id="e29bc95f-ff70-4a37-aa01-04d17360a4c5" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_australian_tax_file_number" />
        <Match idRef="Keyword_Australia_Tax_File_Number" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_number_exclusions" />
        </Any>
      </Pattern>
    </Entity>
```

### Keywords

#### Keyword_Australia_Tax_File_Number

- australian business number
- marginal tax rate
- medicare levy
- portfolio number
- service veterans
- withholding tax
- individual tax return
- tax file number
- tfn

#### Keyword_number_exclusions

- 00000000
- 11111111
- 22222222
- 33333333
- 44444444
- 55555555
- 66666666
- 77777777
- 88888888
- 99999999
- 000000000
- 111111111
- 222222222
- 333333333
- 444444444
- 555555555
- 666666666
- 777777777
- 888888888
- 999999999
- 0000000000
- 1111111111
- 2222222222
- 3333333333
- 4444444444
- 5555555555
- 6666666666
- 7777777777
- 8888888888
- 9999999999

## Austria driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
<!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_driver's_license_number" />
          <Match idRef="Keywords_austria_eu_driver's_license_number" />
        </Pattern>
    </Entity>
```

### Keywords

**Keywords_austria_eu_driver's_license_number**
- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- driver's licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- fuhrerschein
- fuhrerschein republik osterreich

## Austria national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
   
```xml
<!-- EU austria_eu_national_id -->
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
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
This sensitive information type entity is only available in the EU Passport Number sensitiveinformation type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_passport_number" />
          <Match idRef="Keywords_austria_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_austria_eu_passport_number**
- passport number
- austrian passport number
- passport no
- reisepass
- österreichisch reisepass

## Austria social security number or equivalent identification
This sensitive information type entity is only available in the EU Social Security Number or Equivalent ID sensitive information type.

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
    
```xml
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

- social security no
- social security number
- social security code
- insurance number
- austrian ssn
- ssn#
- ssn
- insurance code
- insurance code#
- socialsecurityno#
- sozialversicherungsnummer
- soziale sicherheit kein
- versicherungsnummer

## Austria tax identification number
This sensitive information type entity is only available the EU Tax ID number sensitive information type.

### Format

Nine digits with optional hyphen and forward slash
  
### Pattern

Nine digits with optional hyphen and forward slash:
  
- Two digits
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
    
```xml
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

## Azure DocumentDB Auth key

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

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureDocumentDBAuthKey finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.

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

## Azure IAAS database connection string and Azure SQL connection string

### Format

The string "Server", "server", or "data source" followed by the characters and strings outlined in the pattern below, including the string "cloudapp.azure.<!--no-hyperlink-->com" or "cloudapp.azure.<!--no-hyperlink-->net" or "database.windows.<!--no-hyperlink-->net", and the string "Password" or "password" or "pwd".

### Pattern

- The string "Server", "server", or "data source"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "cloudapp.azure.<!--no-hyperlink-->com", "cloudapp.azure.<!--no-hyperlink-->net", or "database.windows.<!--no-hyperlink-->net"
- Any combination of between 1-300 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "Password", "password", or "pwd"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- One or more characters that is not a semicolon (;), quotation mark ("), or apostrophe (')
- A semicolon (;), quotation mark ("), or apostrophe (')

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureConnectionString finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.

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

## Azure IoT connection string

### Format

The string "HostName" followed by the characters and strings outlined in the pattern below, including the strings "azure-devices.<!--no-hyperlink-->net" and "SharedAccessKey".

### Pattern

- The string "HostName"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "azure-devices.<!--no-hyperlink-->net"
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "SharedAccessKey"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of 43 lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- An equal sign (=)

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureIoTConnectionString finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.

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

## Azure publish setting password

### Format

The string "userpwd=" followed by an alphanumeric string.

### Pattern

- The string "userpwd="
- Any combination of 60 lowercase letters or digits
- A quotation mark (")

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzurePublishSettingPasswords finds content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.


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

## Azure Redis cache connection string

### Format

The string "redis.cache.windows.<!--no-hyperlink-->net" followed by the characters and strings outlined in the pattern below, including the string "password" or "pwd".

### Pattern

- The string "redis.cache.windows.<!--no-hyperlink-->net"
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "password" or "pwd"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of 43 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- An equal sign (=)

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureRedisCacheConnectionString finds content that matches the pattern..
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.

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

## Azure SAS

### Format

The string "sig" followed by the characters and strings outlined in the pattern below.

### Pattern

- The string "sig"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of between 43-53 characters that are lower- or uppercase letters, digits, or the percent sign (%)
- The string "%3d"
- Any character that is not a lower- or uppercase letter, digit, or percent sign (%)

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureSAS finds content that matches the pattern.

```xml
<!--Azure SAS-->
<Entity id="4d235014-e564-47f4-a6fb-6ebb4a826834" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureSAS" />
  </Pattern>
</Entity>
```

## Azure Service Bus Connection String

### Format

The string "EndPoint" followed by the characters and strings outlined in the pattern below, including the strings "servicebus.windows.<!--no-hyperlink-->net" and "SharedAccesKey".

### Pattern

- The string "EndPoint"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "servicebus.windows.<!--no-hyperlink-->net"
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "SharedAccessKey"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of 43 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- An equal sign (=)

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureServiceBusConnectionString finds content that matches the pattern..
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.

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

## Azure Storage Account Key

### Format

The string "DefaultEndpointsProtocol" followed by the characters and strings outlined in the pattern below, including the string "AccountKey".

### Pattern

- The string "DefaultEndpointsProtocol"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "AccountKey"
- 0-2 whitespace characters
- An equal sign (=)
- 0-2 whitespace characters
- Any combination of 86 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- Two equal signs (=)

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_AzureStorageAccountKey finds content that matches the pattern.
- The regular expression CEP_AzureEmulatorStorageAccountFilter does **not** find content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.

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

#### CEP_AzureEmulatorStorageAccountFilter

(Note that technically, this sensitive information type identifies these keywords by using a regular expression, not a keyword list.)

- Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==

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

## Azure Storage account key (generic)

### Format

Any combination of 86 lower- or uppercase letters, digits, the forward slash (/), or plus sign (+), preceded or followed by the characters outlined in the pattern below.

### Pattern

- 0-1 of the greater than symbol (>), apostrophe ('), equal sign (=), quotation mark ("), or number sign (#)
- Any combination of 86 characters that are lower- or uppercase letters, digits, the forward slash (/), or plus sign (+)
- Two equal signs (=)


### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_belgium_eu_driver's_license_number" />
          <Match idRef="Keywords_belgium_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords__belgium_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- dlno#
- rijbewijs
- rijbewijsnummer
- führerscheinnummer
- fuhrerscheinnummer
- fuehrerscheinnummer
- führerschein- nr
- fuehrerschein- Nr
- fuehrerschein- nr

## Belgium national number
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

11 digits plus delimiters

### Pattern

11 digits plus delimiters:
- Six digits and two periods in the format YY.MM.DD for date of birth 
- A hyphen 
- Three sequential digits (odd for males, even for females) 
- A period 
- Two digits that are a check digit

### Checksum

Yes

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_belgium_national_number finds content that matches the pattern.
- A keyword from Keyword_belgium_national_number is found.
- The checksum passes.

```xml
<!-- Belgium National Number -->
  <Entity id="fb969c9e-0fd1-4b18-8091-a2123c5e6a54" recommendedConfidence="75" patternsProximity="300">
   <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_belgium_national_number"/>
     <Match idRef="Keyword_belgium_national_number"/>
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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

```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_belgium__eu_passport_number" />
          <Match idRef="Keywords_belgium_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_belgium_eu_passport_number**
- passport number
- belgian passport number
- passport no
- paspoort
- paspoortnummer
- reisepass kein
- reisepass

## Belgium social security number or equivalent identification
This sensitive information type entity is only available in the EU Social Security Number or Equivalent ID sensitive information type.

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
    
```xml
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

- belgian national number
- national number
- social security number
- nationalnumber#
- ssn#
- ssn
- nationalnumber
- bnn#
- bnn
- personal id number
- personalidnumber#
- numéro national
- numéro de sécurité
- numéro d'assuré
- identifiant national
- identifiantnational#
- numéronational#

## Belgium tax identification number
This sensitive information type entity is only available the EU Tax Identificaiton Number sensitive information type.

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
    
```xml
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


## Brazil CPF number

### Format

11 digits that include a check digit and can be formatted or unformatted

### Pattern

Formatted:
- Three digits
- A period
- Three digits
- A period
- Three digits
- A hyphen
- Two digits which are check digits

Unformatted:
- 11 digits where the last two digits are check digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_cpf finds content that matches the pattern.
- A keyword from Keyword_brazil_cpf is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Two digits 
- A period 
- Three digits 
- A period 
- Three digits (these first eight digits are the registration number) 
- A forward slash 
- Four-digit branch number 
- A hyphen 
- Two digits which are check digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_cnpj finds content that matches the pattern.
- A keyword from Keyword_brazil_cnpj is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Two digits 
- A period 
- Three digits 
- A period 
- Three digits 
- A hyphen 
- One digit which is a check digit

Registro de Identidade (RIC) (new format):
- 10 digits 
- A hyphen 
- One digit which is a check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_rg finds content that matches the pattern.
- A keyword from Keyword_brazil_rg is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_brazil_rg finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Brazil National ID Card (RG) -->
<Entity id="486de900-db70-41b3-a886-abdf25af119c" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_brazil_rg"/>
     <Match idRef="Keyword_brazil_rg"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_brazil_rg"/>
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
- RG (this keyword is case sensitive) 
- RIC (this keyword is case sensitive) 


## Bulgaria driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
             <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_bulgaria_eu_driver's_license_number" />
          <Match idRef="Keywords_bulgaria_eu_driver's_license_number" />
        </Pattern> 
</Entity>    
```

### Keywords

**Keywords_bulgaria_eu_driver's_license_number**
- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- свидетелство за управление на мпс
- свидетелство за управление на моторно превозно средство
- сумпс
- шофьорска книжка

## Bulgaria national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

### Format

Ten digits without spaces and delimiters
  
### Pattern

Ten digits without spaces and delimiters
  
- Six digits that correspond to the birth date (YYMMDD) 
- Two digits that correspond to the birth order
- One digit that corresponds to gender: An even digit for male and an odd digit for female
- One check digit

### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_bulgaria_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_bulgaria_national_number` is found. 

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_bulgaria_eu_national_id_card` finds content that matches the pattern. 
    
```xml
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_bulgaria_eu_national_id_card" />
          <Match idRef="Keywords_bulgaria_national_number" />
        </Pattern>
<Pattern confidenceLevel="75">
          <IdMatch idRef="Func_bulgaria_eu_national_id_card" />
        </Pattern>
</Entity>
```

### Keywords

#### Keywords_bulgaria_national_number

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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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

```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_bulgaria_eu_passport_number" />
          <Match idRef="Keywords_bulgaria_eu_passport_number" />
        </Pattern>
</Entity>
```
### Keywords

**Keywords_bulgaria_eu_passport_number**
- passport number
- bulgarian passport number
- passport no
- номер на паспорта

## Bulgaria tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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

```xml
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


## Canada bank account number

### Format

Seven or twelve digits

### Pattern

A Canada Bank Account Number is seven or twelve digits.

A Canada bank account transit number is:
- Five digits 
- A hyphen 
- Three digits
OR
- A zero "0" 
- Eight digits

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_canada_bank_account_number finds content that matches the pattern.
- A keyword from Keyword_canada_bank_account_number is found.
- The regular expression Regex_canada_bank_account_transit_number finds content that matches the pattern.

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

Two uppercase letters followed by six digits

### Pattern

Two uppercase letters followed by six digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

Nine digits

### Pattern

Nine digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
The regular expression Regex_canada_phin finds content that matches the pattern.
At least two keywords from Keyword_canada_phin or Keyword_canada_provinces are found..

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

Nine digits with optional hyphens or spaces

### Pattern

Formatted:
- Three digits 
- A hyphen or space 
- Three digits 
- A hyphen or space 
- Three digits

Unformatted: Nine digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_canadian_sin finds content that matches the pattern.
- At least two of any combination of the following:
    - A keyword from Keyword_sin is found.
    - A keyword from Keyword_sin_collaborative is found.
    - The function Func_eu_date finds a date in the right date format.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

7-8 digits plus delimiters a check digit or letter

### Pattern

7-8 digits plus delimiters:
- 1-2 digits 
- A period 
- Three digits 
- A period 
- Three digits 
- A dash 
- One digit or letter (not case sensitive) which is a check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_chile_id_card finds content that matches the pattern.
- A keyword from Keyword_chile_id_card is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- National Identification Number 
- Identity card 
- ID 
- Identification 
- Rol Único Nacional 
- RUN 
- Rol Único Tributario 
- RUT 
- Cédula de Identidad 
- Número De Identificación Nacional 
- Tarjeta de identificación 
- Identificación 
   
## China resident identity card (PRC) number

### Format

18 digits

### Pattern

18 digits:
- Six digits which are an address code 
- Eight digits in the form YYYYMMDD which are the date of birth 
- Three digits which are an order code 
- One digit which is a check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_china_resident_id finds content that matches the pattern.
- A keyword from Keyword_china_resident_id is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

14 to 16 digits which can be formatted or unformatted (dddddddddddddddd) and which must pass the Luhn test.

### Pattern

Very complex and robust pattern that detects cards from all major brands worldwide, including Visa, MasterCard, Discover Card, JCB, American Express, gift cards, and diner cards.

### Checksum

Yes, the Luhn checksum

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_credit_card finds content that matches the pattern.
- One of the following is true:
    - A keyword from Keyword_cc_verification is found.
    - A keyword from Keyword_cc_name is found.
    - The function Func_expiration_date finds a date in the right date format.
- The checksum passes.

A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- card verification
- card identification number
- cvn
- cid
- cvc2
- cvv2
- pin block
- security code
- security number
- security no
- issue number
- issue no
- cryptogramme
- numéro de sécurité
- numero de securite
- kreditkartenprüfnummer
- kreditkartenprufnummer
- prüfziffer
- prufziffer
- sicherheits Kode
- sicherheitscode
- sicherheitsnummer
- verfalldatum
- codice di verifica
- cod. sicurezza
- cod sicurezza
- n autorizzazione
- código
- codigo
- cod. seg
- cod seg
- código de segurança
- codigo de seguranca
- codigo de segurança
- código de seguranca
- cód. segurança
- cod. seguranca cod. segurança
- cód. seguranca
- cód segurança
- cod seguranca cod segurança
- cód seguranca
- número de verificação
- numero de verificacao
- ablauf
- gültig bis
- gültigkeitsdatum
- gultig bis
- gultigkeitsdatum
- scadenza
- data scad
- fecha de expiracion
- fecha de venc
- vencimiento
- válido hasta
- valido hasta
- vto
- data de expiração
- data de expiracao
- data em que expira
- validade
- valor
- vencimento
- Venc 

#### Keyword_cc_name

- amex
- american express
- americanexpress
- Visa
- mastercard
- master card
- mc 
- mastercards
- master cards
- diner's Club
- diners club
- dinersclub
- discover card
- discovercard
- discover cards
- JCB
- japanese card bureau
- carte blanche
- carteblanche
- credit card
- cc#
- cc#:
- expiration date
- exp date
- expiry date
- date d'expiration
- date d'exp
- date expiration
- bank card
- bankcard
- card number
- card num
- cardnumber
- cardnumbers
- card numbers
- creditcard
- credit cards
- creditcards
- ccn
- card holder
- cardholder
- card holders
- cardholders
- check card
- checkcard
- check cards
- checkcards
- debit card
- debitcard
- debit cards
- debitcards
- atm card
- atmcard
- atm cards
- atmcards
- enroute
- en route
- card type
- carte bancaire
- carte de crédit
- carte de credit
- numéro de carte
- numero de carte
- nº de la carte
- nº de carte
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
- carta di credito
- carta credito
- carta
- n carta
- nr. carta
- nr carta
- numero carta
- numero della carta
- numero di carta
- tarjeta credito
- tarjeta de credito
- tarjeta crédito
- tarjeta de crédito
- tarjeta de atm
- tarjeta atm
- tarjeta debito
- tarjeta de debito
- tarjeta débito
- tarjeta de débito
- nº de tarjeta
- no. de tarjeta
- no de tarjeta
- numero de tarjeta
- número de tarjeta
- tarjeta no
- tarjetahabiente
- cartão de crédito
- cartão de credito
- cartao de crédito
- cartao de credito
- cartão de débito
- cartao de débito
- cartão de debito
- cartao de debito
- débito automático
- debito automatico
- número do cartão
- numero do cartão 
- número do cartao
- numero do cartao
- número de cartão
- numero de cartão
- número de cartao
- numero de cartao
- nº do cartão
- nº do cartao
- nº. do cartão
- no do cartão
- no do cartao
- no. do cartão
- no. do cartao 

## Croatia driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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

```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_croatia_eu_driver's_license_number" />
          <Match idRef="Keywords_croatia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_croatia_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- vozačka dozvola

## Croatia identity card number
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.


### Format

Nine digits

### Pattern

Nine consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_croatia_eu_passport_number" />
          <Match idRef="Keywords_croatia_eu_passport_number" />
        </Pattern>
</Entity>
```
### Keywords

**Keywords_croatia_eu_passport_number**

- passport number
- croatian passport number
- passport no
- broj putovnice

   
## Croatia personal identification (OIB) number

### Format

11 digits

### Pattern

11 digits:
- 10 digits 
- Final digit is a check digit
For the purposes of international data exchange, the letters HR are added preceding the eleven digits.

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_croatia_oib_number finds content that matches the pattern.
- A keyword from Keyword_croatia_oib_number is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_croatia_oib_number finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Croatia Personal Identification (OIB) Number -->
<Entity id="31983b6d-db95-4eb2-a630-b44bd091968d" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_croatia_oib_number"/>
     <Match idRef="Keyword_croatia_oib_number"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_croatia_oib_number"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_croatia_oib_number

- Personal Identification Number
- Osobni identifikacijski broj 
- OIB 

## Croatia social security number or equivalent identification
This sensitive information type entity is only available in the EU Social Security Number or Equivalent ID sensitive information type.

### Format

11 digits without spaces and delimiters
  
### Pattern

 11 digits:
  
- Ten digits
- One check digit
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_croatia_eu_ssn_or_equivalent` finds content that matches the pattern. 
- A keyword from  `Keywords_croatia_eu_ssn_or_equivalent` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_croatia_eu_ssn_or_equivalent` finds content that matches the pattern. 
    
```xml
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

- personal identification number
- master citizen number
- national identification number
- social security number
- nationalnumber#
- ssn#
- ssn
- nationalnumber
- bnn#
- bnn
- personal id number
- personalidnumber#
- oib
- osobni identifikacijski broj
   
## Croatia tax identification number
This sensitive information type entity is only available in the EU Tax Identificaiton Number sensitive information type.

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
    
```xml
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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

```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_driver's_license_number" />
          <Match idRef="Keywords_cyprus_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_cyprus_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license number
- driver's licence number
- driving license number
- dlno#
- άδεια οδήγησης

## Cyprus national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_passport_number" />
          <Match idRef="Keywords_cyprus_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_cyprus_eu_passport_number**

- passport number
- cyprus passport number
- passport no
- αριθμό διαβατηρίου

## Cyprus tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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
- tax number

## Czech driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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

```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_driver's_license_number" />
          <Match idRef="Keywords_czech_republic_eu_driver's_license_number" />
        </Pattern>
</Entity>

```

### Keywords

**Keywords_czech_republic_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's license number
- driver's licence number
- driving license number
- dlno#
- řidičský prúkaz

## Czech passport number
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_passport_number" />
          <Match idRef="Keywords_czech_republic_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_czech_republic_eu_passport_number**

- passport number
- czech passport number
- passport no
- cestovní pas
- pas

## Czech personal identity number
This sensitive information type entity is included in the EU National identification number bundle and is available as a stand alone sensitive information type entity.

### Format

Nine digits with optional forward slash (old format)
10 digits with optional forward slash (new format)

### Pattern

Nine digits (old format):
- Nine digits

OR

- Six digits that represent date of birth
- A forward slash
- Three digits

10 digits (new format):
- 10 digits

OR

- Six digits that represent date of birth
- A forward slash 
- Four digits where last digit is a check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
The function Func_czech_id_card finds content that matches the pattern.
A keyword from Keyword_czech_id_card is found.
The checksum passes.

```xml
<!-- Czech Personal Identity Number -->
<Entity id="60c0725a-4eb6-455b-9dda-05d8a7396497"      patternsProximity="300" recommendedConfidence="85">
   <Pattern confidenceLevel="85">
      <IdMatch idRef="Func_czech_id_card" />
      <Match idRef="Keyword_czech_id_card" />
   </Pattern>
</Entity>
```
### Keywords

- czech personal identity number
- Rodné číslo



## Czech social security number or equivalent identification
This sensitive information type entity is only available in the EU Social Security Number or Equivalent ID sensitive information type.

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

```xml
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

- birth number
- national identification number
- personal identification number
- social security number
- nationalnumber#
- ssn#
- ssn
- national number
- personal id number
- personalidnumber#
- rč
- rodné číslo
- rodne cislo

## Czech tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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
- national number
- osobní číslo
- personal id number
- personal number
- pid#
- pid
- pojištění číslo
- rodné číslo
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
- tax number

## Denmark driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_denmark_eu_driver's_license_number" />
          <Match idRef="Keywords_denmark_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_denmark_eu_driver's_license_number**

- |dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- kørekort
- kørekortnummer


## Denmark passport number
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_denmark_eu_passport_number" />
          <Match idRef="Keywords_denmark_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_denmark_eu_passport_number**

- passport number
- danish passport number
- passport no
- pas
- pasnummer

## Denmark personal identification number
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

10 digits containing a hyphen

### Pattern

10 digits:
- Six digits in the format DDMMYY which are the date of birth 
- A hyphen 
- Four digits where the final digit is a check digit

### Checksum

Yes

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
The regular expression Regex_denmark_id finds content that matches the pattern.
A keyword from Keyword_denmark_id is found.
The checksum passes.

```xml
<!-- Denmark Personal Identification Number -->
<Entity id="6c4f2fef-56e1-4c00-8093-88d7a01cf460" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_denmark_id"/>
     <Match idRef="Keyword_denmark_id"/>
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
- personalidentityno#
- personnummer
- personnummer#
- reisekrankenversicherungskartenummer
- rejsesygesikringskort
- skat id
- skat kode
- skat nummer
- skattenummer
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

## Denmark social security number or equivalent identification
This sensitive information type entity is only available the EU Social Security Number or Equivalent ID sensitive information type.

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
    
```xml
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

- personal identification number
- national identification number
- social security number
- nationalnumber#
- ssn#
- ssn
- national number
- personal id number
- personalidnumber#
- cpr-nummer
- personnummer

## Denmark tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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
- personalidentityno#
- personnummer
- personnummer#
- reisekrankenversicherungskartenummer
- rejsesygesikringskort
- skat id
- skat kode
- skat nummer
- skattenummer
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


## Drug Enforcement Agency (DEA) number

### Format

Two letters followed by seven digits

### Pattern

Pattern must include all of the following:
- One letter (not case sensitive) from this set of possible letters: abcdefghjklmnprstux, which is a registrant code 
- One letter (not case sensitive), which is the first letter of the registrant's last name 
- Seven digits, the last of which is the check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_dea_number finds content that matches the pattern.
- The checksum passes.

```xml
<!-- DEA Number -->
<Entity id="9a5445ad-406e-43eb-8bd7-cac17ab6d0e4" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_dea_number"/>
  </Pattern>
</Entity>
```

### Keywords

None

## Estonia driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_estonia_eu_driver's_license_number" />
          <Match idRef="Keywords_estonia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_estonia_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driving license number
- dlno#
- permis de conduire

## Estonia national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
 
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_estonia_eu_passport_number" />
          <Match idRef="Keywords_estonia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_estonia_eu_passport_number**

- passport number
- estonian passport number
- passport no
- eesti kodaniku pass

## Estonia tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

## EU debit card number

### Format

16 digits

### Pattern

Very complex and robust pattern

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
These are the entities in the EU Driver's License Number sensitive information type.

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
These are the entities in the EU National Identification Number sensitive information type.

- [Austria](#austria-national-identification-number)
- [Belgium](#belgium-national-number)
- [Bulgaria](#bulgaria-national-identification-number)
- [Croatia](#croatia-identity-card-number)
- [Cyprus](#cyprus-national-identification-number)
- [Czech](#czech-personal-identity-number)
- [Denmark](#denmark-personal-identification-number)
- [Estonia](#estonia-national-identification-number)
- [Finland](#finland-national-identification-number)
- [France](#france-national-identification-card-cni)
- [Germany](#germany-identity-card-number)
- [Greece](#greece-national-id-card)
- [Hungary](#hungary-national-identification-number)
- [Ireland](#ireland-national-identification-number)
- [Italy](#italy-national-identification-number)
- [Latvia](#latvia-national-identification-number)
- [Lithuania](#lithuania-national-identification-number)
- [Luxemburg](#luxemburg-national-identification-number)
- [Malta](#malta-national-identification-number)
- [Netherlands](#netherlands-national-identification-number)
- [Poland](#poland-national-id-pesel)
- [Portugal](#portugal-citizen-card-number)
- [Romania](#romania-national-identification-number)
- [Slovakia](#slovakia-national-identification-number)
- [Slovenia](#slovenia-national-identification-number)
- [Spain](#spain-national-identification-number)
- [U.K.](#uk-national-insurance-number-nino)										


## EU passport number 
These are the entities in the EU passport number sensitive information typeThese are the entities in the EU passport number bundle.

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
These are the entities that are in the EU Social Security Number or equivalent identification sensitive information type.

- [Austria](#austria-social-security-number-or-equivalent-identification)
- [Belgium](#belgium-social-security-number-or-equivalent-identification)
- [Croatia](#croatia-social-security-number-or-equivalent-identification)
- [Czech](#czech-social-security-number-or-equivalent-identification)
- [Denmark](#denmark-social-security-number-or-equivalent-identification)
- [Finland](#finland-social-security-number-or-equivalent-identification)
- [France](#france-social-security-number-insee-or-equivalent-identification)
- [Germany](#germany-identity-card-number)
- [Greece](#greece-national-id-card)
- [Hungary](#hungary-social-security-number-or-equivalent-identification)
- [Portugal](#portugal-citizen-card-number)
- [Spain](#spain-social-security-number-ssn)
- [Sweden](#sweden-social-security-number-or-equivalent-identification)

## EU Tax identification number

hese entities are in the EU Tax identification number sensitive information type.

- [Austria](#austria-tax-identification-number)
- [Belgium](#belgium-tax-identification-number)
- [Bulgaria](#bulgaria-tax-identification-number)
- [Croatia](#croatia-tax-identification-number)
- [Cyprus](#cyprus-tax-identification-number)
- [Czech](#czech-tax-identification-number)
- [Denmark](#denmark-tax-identification-number)
- [Estonia](#estonia-tax-identification-number)
- [Finland](#finland-tax-identification-number)
- [France](#france-tax-identification-number)
- [Germany](#germany-tax-identification-number)
- [Greece](#greece-tax-identification-number)
- [Hungary](#hungary-tax-identification-number)
- [Ireland](#ireland-tax-identification-number)
- [Italy](#italy-tax-identification-number)
- [Latvia](#latvia-tax-identification-number)
- [Lithuania](#lithuania-tax-identification-number)
- [Luxemburg](#luxemburg-tax-identification-number)
- [Malta](#malta-tax-identification-number)
- [Netherlands](#netherlands-tax-identification-number)
- [Poland](#poland-tax-identification-number)
- [Portugal](#portugal-tax-identification-number)
- [Romania](#romania-tax-identification-number)
- [Slovakia](#slovakia-tax-identification-number)
- [Slovenia](#slovenia-tax-identification-number)
- [Spain](#spain-tax-identification-number)
- [Sweden](#sweden-tax-identification-number)
- [U.K.](#uk-tax-identification-number)


## Finland driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_finland_eu_driver's_license_number" />
          <Match idRef="Keywords_finland_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_finland_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- ajokortti

## Finland national identification number
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

Six digits plus a character indicating a century plus three digits plus a check digit

### Pattern

Pattern must include all of the following:
- Six digits in the format format DDMMYY which are a date of birth 
- Century marker (either '-', '+' or 'a') 
- Three-digit personal identification number 
- A digit or letter (case insensitive) which is a check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_finnish_national_id finds content that matches the pattern.
- A keyword from Keyword_finnish_national_id is found.
- The checksum passes.

```xml
<!-- Finnish National ID-->
<Entity id="338FD995-4CB5-4F87-AD35-79BD1DD926C1" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_finnish_national_id" />
          <Match idRef="Keyword_finnish_national_id" />
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
This sensitive information type entity is available in the EU Passport Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format
Combination of nine letters and digits

### Pattern
Combination of nine letters and digits:
Two letters (not case sensitive) 
Seven digits

### Checksum
No

### Definition
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_finland_passport_number finds content that matches the pattern.
- A keyword from Keyword_finland_passport_number is found.

```xml
<!-- Finland Passport Number -->
<Entity id="d1685ac3-1d3a-40f8-8198-32ef5669c7a5" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_finland_passport_number"/>
     <Match idRef="Keyword_finland_passport_number"/>
  </Pattern>
</Entity>
```
### Keywords
- Keyword_finland_passport_number
- Passport
- Passi

## Finland social security number or equivalent identification
This sensitive information type entity is only available in the EU Social Security Number or Equivalent ID sensitive information type.

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
    
```xml
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

- identification number
- personal id
- identity number
- finnish national id number
- personalidnumber#
- national identification number
- id number
- national id no.
- national id number
- id no
- tunnistenumero
- henkilötunnus
- yksilöllinen henkilökohtainen tunnistenumero
- ainutlaatuinen henkilökohtainen tunnus
- identiteetti numero
- suomen kansallinen henkilötunnus
- henkilötunnusnumero#
- kansallisen tunnistenumero
- tunnusnumero
- kansallinen tunnus numero
- hetu

## Finland tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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
- suomen kansallinen henkilötunnus
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


## France driver's license number
This sensitive information type entity is available in the EU Driver's License Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

12 digits

### Pattern

12 digits with validation to discount similar patterns such as French telephone numbers

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_french_drivers_license finds content that matches the pattern.
- At least one of the following is true:
- A keyword from Keyword_french_drivers_license is found.
- The function Func_eu_date finds a date in the right date format.

```xml
<!-- France Driver's License Number -->
<Entity id="18e55a36-a01b-4b0f-943d-dc10282a1824" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_french_drivers_license" />
        <Any minMatches="1">
          <Match idRef="Keyword_french_drivers_license" />
          <Match idRef="Func_eu_date" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_french_drivers_license

- drivers licence
- drivers license
- driving licence
- driving license
- permis de conduire
- licence number
- license number
- licence numbers
- license numbers

## France national identification card (CNI)
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

12 digits

### Pattern

12 digits

### Checksum

No

### Definition

A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_france_cni finds content that matches the pattern.

```xml
<!-- France CNI -->
<Entity id="f741ac74-1bc0-4665-b69b-f0c7f927c0c4" patternsProximity="300" recommendedConfidence="65">
  <Pattern confidenceLevel="65">
        <IdMatch idRef="Regex_france_cni" />
  </Pattern>
</Entity>
```

### Keywords

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
This sensitive information type entity is available in the EU Passport Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

Nine digits and letters

### Pattern

Nine digits and letters:
- Two digits 
- Two letters (not case sensitive) 
- Five digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_fr_passport finds content that matches the pattern.
- A keyword from Keyword_passport is found.

```xml
<!-- France Passport Number -->
<Entity id="3008b884-8c8c-4cd8-a289-99f34fc7ff5d" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_fr_passport" />
        <Match idRef="Keyword_passport" />
  </Pattern>
</Entity>
```

### Keywords

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
- パスポート ＃ 
- Numéro de passeport
- Passeport n °
- Passeport Non
- Passeport #
- Passeport#
- PasseportNon
- Passeportn °

      
## France social security number (INSEE) or equivalent identification
This sensitive information type entity is included in the EU Social Security Number and Equivalent ID sensitive information type and is available as a stand alone sensitive information type entity.

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

A DLP policy is 95% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_french_insee or Func_fr_insee finds content that matches the pattern.
- A keyword from Keyword_fr_insee is found.
- The checksum passes.

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_french_insee or Func_fr_insee finds content that matches the pattern.
- No keyword from Keyword_fr_insee is found.
- The checksum passes.

```xml
<!-- France INSEE -->
<Entity id="71f62b97-efe0-4aa1-aa49-e14de253619d" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="95">
        <IdMatch idRef="Func_french_insee" />
        <Match idRef="Func_fr_insee" />
        <Any minMatches="1">
          <Match idRef="Keyword_fr_insee" />
        </Any>
  </Pattern>
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_french_insee" />
        <Match idRef="Func_fr_insee" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_fr_insee" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_fr_insee

- insee
- securité sociale
- securite sociale
- national id
- national identification
- numéro d'identité
- no d'identité
- no. d'identité
- numero d'identite
- no d'identite
- no. d'identite
- social security number
- social security code
- social insurance number
- le numéro d'identification nationale
- d'identité nationale
- numéro de sécurité sociale
- le code de la sécurité sociale
- numéro d'assurance sociale
- numéro de sécu
- code sécu 

## France tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

## Germany driver's license number
This sensitive information type entity is included in the EU Driver's License Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

Combination of 11 digits and letters

### Pattern

11 digits and letters (not case sensitive):
- A digit or letter 
- Two digits 
- Six digits or letters 
- A digit 
- A digit or letter

### Checksum

Yes

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_german_drivers_license finds content that matches the pattern.
- At least one of the following is true:
    - A keyword from Keyword_german_drivers_license_number is found.
    - A keyword from Keyword_german_drivers_license_collaborative is found.
    - A keyword from Keyword_german_drivers_license is found.
- The checksum passes.

```xml
<!-- Germany Driver's License Number -->
<Entity id="91da9335-1edb-45b7-a95f-5fe41a16c63c" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_german_drivers_license" />
        <Any minMatches="1">
          <Match idRef="Keyword_german_drivers_license_number" />
          <Match idRef="Keyword_german_drivers_license_collaborative" />
          <Match idRef="Keyword_german_drivers_license" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_german_drivers_license_number

- Führerschein
- Fuhrerschein
- Fuehrerschein
- Führerscheinnummer
- Fuhrerscheinnummer
- Fuehrerscheinnummer
- Führerschein- 
- Fuhrerschein- 
- Fuehrerschein- 
- FührerscheinnummerNr
- FuhrerscheinnummerNr
- FuehrerscheinnummerNr
- FührerscheinnummerKlasse
- FuhrerscheinnummerKlasse
- FuehrerscheinnummerKlasse
- Führerschein- Nr
- Fuhrerschein- Nr
- Fuehrerschein- Nr 
- Führerschein- Klasse 
- Fuhrerschein- Klasse 
- Fuehrerschein- Klasse
- FührerscheinnummerNr 
- FuhrerscheinnummerNr 
- FuehrerscheinnummerNr 
- FührerscheinnummerKlasse 
- FuhrerscheinnummerKlasse 
- FuehrerscheinnummerKlasse 
- Führerschein- Nr 
- Fuhrerschein- Nr 
- Fuehrerschein- Nr 
- Führerschein- Klasse 
- Fuhrerschein- Klasse 
- Fuehrerschein- Klasse 
- DL 
- DLS
- Driv Lic 
- Driv Licen 
- Driv License
- Driv Licenses 
- Driv Licence 
- Driv Licences 
- Driv Lic 
- Driver Licen 
- Driver License 
- Driver Licenses 
- Driver Licence 
- Driver Licences 
- Drivers Lic 
- Drivers Licen 
- Drivers License 
- Drivers Licenses 
- Drivers Licence 
- Drivers Licences 
- Driver's Lic 
- Driver's Licen 
- Driver's License 
- Driver's Licenses 
- Driver's Licence 
- Driver's Licences 
- Driving Lic 
- Driving Licen 
- Driving License 
- Driving Licenses 
- Driving Licence 
- Driving Licences

#### Keyword_german_drivers_license_collaborative

- Nr-Führerschein 
- Nr-Fuhrerschein 
- Nr-Fuehrerschein 
- No-Führerschein 
- No-Fuhrerschein 
- No-Fuehrerschein 
- N-Führerschein 
- N-Fuhrerschein 
- N-Fuehrerschein
- Nr-Führerschein 
- Nr-Fuhrerschein 
- Nr-Fuehrerschein 
- No-Führerschein 
- No-Fuhrerschein 
- No-Fuehrerschein 
- N-Führerschein 
- N-Fuhrerschein 
- N-Fuehrerschein 

#### Keyword_german_drivers_license

- ausstellungsdatum
- ausstellungsort
- ausstellende behöde
- ausstellende behorde
- ausstellende behoerde

## Germany identity card number
- This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.
- This sensitive information type entity is included in the EU Social Security Number or Equivalent ID sensitive information type.

### Format

Since 1 November 2010: Nine letters and digits

From 1 April 1987 until 31 October 2010: 10 digits

### Pattern

Since 1 November 2010:
- One letter (not case sensitive) 
- Eight digits

From 1 April 1987 until 31 October 2010:
- 10 digits

### Checksum

No

### Definition

A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is included in the EU Passport Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

10 digits or letters

### Pattern

Pattern must include all of the following:
- First character is a digit or a letter from this set (C, F, G, H, J, K) 
- Three digits 
- Five digits or letters from this set (C, -H, J-N, P, R, T, V-Z) 
- A digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_german_passport finds content that matches the pattern.
- A keyword from any of the five keyword lists is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_german_passport_data finds content that matches the pattern.
- A keyword from any of the five keyword lists is found.
- The checksum passes.

```xml
<!-- Germany Passport Number -->
<Entity id="2e3da144-d42b-47ed-b123-fbf78604e52c" patternsProximity="300" recommendedConfidence="75">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_german_passport" />
        <Any minMatches="1">
          <Match idRef="Keyword_german_passport" />
          <Match idRef="Keyword_german_passport_collaborative" />
          <Match idRef="Keyword_german_passport_number" />
          <Match idRef="Keyword_german_passport1" />
          <Match idRef="Keyword_german_passport2" />
        </Any>
  </Pattern>
  <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_german_passport_data" />
        <Any minMatches="1">
          <Match idRef="Keyword_german_passport" />
          <Match idRef="Keyword_german_passport_collaborative" />
          <Match idRef="Keyword_german_passport_number" />
          <Match idRef="Keyword_german_passport1" />
          <Match idRef="Keyword_german_passport2" />
        </Any>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_german_passport

- reisepass
- reisepasse
- reisepassnummer
- passport
- passports

#### Keyword_german_passport_collaborative

- geburtsdatum
- ausstellungsdatum
- ausstellungsort

#### Keyword_german_passport_number

No-Reisepass 
Nr-Reisepass

#### Keyword_german_passport1

Reisepass-Nr

#### Keyword_german_passport2

bnationalit.t

## Germany tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

## Greece driver's license number
This sensitive information type entity is included in the EU Driver's License Number sensitive information type and is available as a stand alone sensitive information type entity.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_driver's_license_number" />
          <Match idRef="Keywords_greece_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_greece_eu_driver's_license_number**

- dlL#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- δεια οδήγησης
- Adeia odigisis


## Greece National ID Card
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.

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

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_greece_id_card finds content that matches the pattern.
- A keyword from Keyword_greece_id_card is found.

```xml
<!-- Greece National ID Card -->
<Entity id="82568215-1da1-46d3-874a-d2294d81b5ac" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Regex_greece_id_card"/>
     <Match idRef="Keyword_greece_id_card"/>
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_greece_eu_passport_number" />
          <Match idRef="Keywords_greece_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_greece_eu_passport_number**

- passport number
- greek passport number
- passport no
- διαβατηριο

## Greece tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
- 1-2 letters (not case sensitive) 
- Six digits 
- The final character (any digit or the letter A), which is the check digit and is optionally enclosed in parentheses.

### Checksum

Yes

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_hong_kong_id_card finds content that matches the pattern.
- A keyword from Keyword_hong_kong_id_card is found.
- The checksum passes.

A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

### Format

Two letters followed by six digits
  
### Pattern

Two letters and six digits:
  
- Two letters (not case-sensitive) 
- Six digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_hungary_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_hungary_eu_driver's_license_number` is found. 
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_hungary_eu_driver's_license_number" />
          <Match idRef="Keywords_hungary_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_hungary_eu_driver's_license_number**
- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- vezetoi engedely

## Hungary national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
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

- id number
- identification number
- sz ig
- sz. ig.
- sz.ig.
- személyazonosító igazolvány
- személyi igazolvány

## Hungary passport number
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_hungary_eu_passport_number" />
          <Match idRef="Keywords_hungary_eu_passport_number" />
        </Pattern>
</Entity>
```
### Keywords

**Keywords_hungary_eu_passport_number**

- passport number
- hungarian passport number
- passport no
- útlevél száma

## Hungary social security number or equivalent identification
This sensitive information type entity is only available in the EU Social Security Number or Equivalent ID sensitive information type.

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
    
```xml
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
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

## India permanent account number (PAN)

### Format

10 letters or digits

### Pattern

10 letters or digits:
- Five letters (not case sensitive) 
- Four digits 
- A letter which is an alphabetic check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_india_permanent_account_number finds content that matches the pattern.
- A keyword from Keyword_india_permanent_account_number is found.
- The checksum passes.

```xml
<!-- India Permanent Account Number -->
<Entity id="2602bfee-9bb0-47a5-a7a6-2bf3053e2804" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Regex_india_permanent_account_number"/>
     <Match idRef="Keyword_india_permanent_account_number"/>
  </Pattern>
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
- Four digits 
- An optional space or dash 
- Four digits 
- An optional space or dash 
- The final digit which is the check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
The function Func_india_aadhaar finds content that matches the pattern.
A keyword from Keyword_india_aadhar is found.
The checksum passes.
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
The function Func_india_aadhaar finds content that matches the pattern.
The checksum passes.
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
- Aadhar
- Aadhaar
- UID
- आधार
   
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
- Six digits in the format DDMMYY which are the date of birth 
- A period (optional) 
- Four digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_indonesia_id_card finds content that matches the pattern.
- A keyword from Keyword_indonesia_id_card is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_indonesia_id_card finds content that matches the pattern.

```xml
<!-- Indonesia Identity Card (KTP) Number -->
<Entity id="da68fdb0-f383-4981-8c86-82689d3b7d55" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Regex_indonesia_id_card"/>
     <Match idRef="Keyword_indonesia_id_card"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_indonesia_id_card"/>
  </Pattern>
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

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- A keyword from Dictionary_icd_10_updated is found.
- A keyword from Dictionary_icd_10_codes is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

Keywords

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

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- A keyword from Dictionary_icd_9_updated is found.
- A keyword from Dictionary_icd_9_codes is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
Complex pattern which accounts for formatted (periods) and unformatted (no periods) versions of the IPv4 addresses

#### IPv6:
Complex pattern which accounts for formatted IPv6 numbers (which include colons)

### Pattern

### Checksum

No

### Definition

For IPv6, a DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_ipv6_address finds content that matches the pattern.
- No keyword from Keyword_ipaddress is found.

For IPv4, a DLP policy is 95% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_ipv4_address finds content that matches the pattern.
- A keyword from Keyword_ipaddress is found.

For IPv6, a DLP policy is 95% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- IP (this keyword is case sensitive)
- ip address 
- ip addresses
- internet protocol
- IP-כתובת ה 

## Ireland driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_ireland_eu_driver's_license_number" />
          <Match idRef="Keywords_ireland_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_ireland_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- ceadúnas tiomána

## Ireland national identification number
This sensitive information type entity is only included in the EU National Identification Number sensitive information type.

### Format

A nine-character combination of letters, digits, and a space in the specified pattern
  
### Pattern

A nine-character combination of letters, digits, and a space in the specified pattern
  
From 01 January 2013 to now:
  
-  Seven digits 
- One check digit
- One space or the uppercase letter "W" (Case sensitive)
    
Prior to 01 January 2013:
  
- Seven digits 
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
    
```xml
 <!--Ireland national identification number  -->
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

- client identity service
- identification number
- personal id number
- personal public service number
- personal service no
- phearsanta seirbhíse poiblí
- pps no
- pps number
- pps service no
- pps uimh
- ppsn
- ppsno#
- ppsno
- public service no
- publicserviceno#
- publicserviceno
- revenue and social insurance number
- rsi no
- rsi number
- rsin
- seirbhís aitheantais cliant
- uimh. psp
- uimhir aitheantais chánach
- uimhir aitheantais phearsanta
- uimhir phearsanta seirbhíse poiblí

## Ireland passport number
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_ireland_eu_passport_number" />
          <Match idRef="Keywords_ireland_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_ireland_eu_passport_number**

- passport number
- irish passport number
- passport no
- pas
- passport
- passeport
- passeport numero

## Ireland personal public service (PPS) number

### Format

Old format (until 31 Dec 2012):
- Seven digits followed by 1-2 letters 

New format (1 Jan 2013 and after):
- Seven digits followed by two letters

### Pattern

Old format (until 31 Dec 2012):
- Seven digits 
- 1-2 letters (not case sensitive) 

New format (1 Jan 2013 and after):
- Seven digits 
- A letter (not case sensitive) which is an alphabetic check digit 
- The letter "A" or "H" (not case sensitive)

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_ireland_pps finds content that matches the pattern.
- One of the following is true:
    - A keyword from Keyword_ireland_pps is found.
    - The function Func_eu_date finds a date in the right date format.
- The checksum passes.

A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_ireland_pps finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Ireland Personal Public Service (PPS) Number -->
<Entity id="1cdb674d-c19a-4fcf-9f4b-7f56cc87345a" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_ireland_pps"/>
     <Any minMatches="1">
  <Match idRef="Keyword_ireland_pps"/>
  <Match idRef="Func_eu_date"/>
     </Any>
  </Pattern>
  <Pattern confidenceLevel="65">
     <IdMatch idRef="Func_ireland_pps"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_ireland_pps

- Personal Public Service Number 
- PPS Number 
- PPS Num 
- PPS No. 
- PPS # 
- PPS# 
- PPSN 
- Public Services Card 
- Uimhir Phearsanta Seirbhíse Poiblí 
- Uimh. PSP 
- PSP 


## Ireland tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

### Format

Seven digits followed by a letter with no spaces or delimiters
  
### Pattern

Seven digits followed by a letter:
  
- Seven digits 
- One letter (not case-sensitive)
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_ireland_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_ireland_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_ireland_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
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

- client identity service
- identification number
- personal id number
- personal public service number
- personal service no
- phearsanta seirbhíse poiblí
- pps no
- pps number
- pps service no
- pps uimh
- ppsn
- ppsno#
- ppsno
- public service no
- publicserviceno#
- publicserviceno
- revenue and social insurance number
- rsi no
- rsi number
- rsin
- seirbhís aitheantais cliant
- uimh. psp
- uimhir aitheantais chánach
- uimhir aitheantais phearsanta
- uimhir phearsanta seirbhíse poiblí


## Israel bank account number

### Format

13 digits

### Pattern

Formatted:
- Two digits 
- A dash 
- Three digits 
- A dash 
- Eight digits

Unformatted:
- 13 consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

Nine digits

### Pattern

Nine consecutive digits

### Checksum

Yes

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- מספר זהות 
- National ID Number
   
## Italy driver's license number
This sensitive information type entity is included in the EU Driver's License Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

A combination of 10 letters and digits

### Pattern

- A combination of 10 letters and digits:
- One letter (not case sensitive) 
- The letter "A" or "V" (not case sensitive) 
- Seven letters (not case sensitive), digits, or the underscore character 
- One letter (not case sensitive)

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_italy_drivers_license_number finds content that matches the pattern.
- A keyword from Keyword_italy_drivers_license_number is found.

```xml
<!-- Italy Driver's license Number -->
<Entity id="97d6244f-9157-41bd-8e0c-9d669a5c4d71" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_italy_drivers_license_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_italy_drivers_license_number" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_italy_drivers_license_number

- numero di patente di guida 
- patente di guida 

## Italy national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
<!-- Italy national identification number -->
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_italy_eu_passport_number" />
          <Match idRef="Keywords_italy_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_italy_eu_passport_number**

- italian passport number
- repubblica italiana passaporto
- passaporto
- passaporto italiana
- passport number
- italiana passaporto numero
- passaporto numero
- numéro passeport italien
- numéro passeport

## Italy tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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


## Japan bank account number

### Format

Seven or eight digits

### Pattern

Bank account number:
- Seven or eight digits
- Bank account branch code:
- Four digits 
- A space or dash (optional) 
- Three digits

Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_bank_account finds content that matches the pattern.
- A keyword from Keyword_jp_bank_account is found.
- One of the following is true:
- The function Func_jp_bank_account_branch_code finds content that matches the pattern.
- A keyword from Keyword_jp_bank_branch_code is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- 口座番号を当座預金口座の確認 
- ＃アカウントの確認、勘定番号の確認 
- ＃勘定の確認 
- 勘定番号の確認 
- 口座番号の確認 
- 銀行口座番号 
- 銀行口座 
- 銀行口座＃ 
- 銀行の勘定番号 
- 銀行のacct＃ 
- 銀行の勘定いいえ 
- 銀行口座番号
- 普通預金口座番号 
- 預金口座 
- 貯蓄口座＃ 
- 貯蓄勘定の数 
- 貯蓄勘定＃ 
- 貯蓄勘定番号 
- 普通預金口座番号 
- 引き落とし口座番号 
- 口座番号 
- 口座番号＃ 
- デビットのacct番号 
- デビット勘定＃ 
- デビットACCTの番号 
- デビット口座番号 

#### Keyword_jp_bank_branch_code

Otemachi

## Japan driver's license number

### Format

12 digits

### Pattern

12 consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- dl# 
- DL＃ 
- dls# 
- DLS＃ 
- driver license 
- driver licenses 
- drivers license 
- driver's license 
- drivers licenses 
- driver's licenses 
- driving licence 
- lic# 
- LIC＃ 
- lics# 
- state id 
- state identification 
- state identification number 
- 低所得国＃ 
- 免許証 
- 状態ID
- 状態の識別 
- 状態の識別番号 
- 運転免許 
- 運転免許証 
- 運転免許証番号 
   
## Japan passport number

### Format

Two letters followed by seven digits

### Pattern

Two letters (not case sensitive) followed by seven digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- パスポート 
- パスポート番号 
- パスポートのNum 
- パスポート＃ 

## Japan residence card number

### Format

12 letters and digits

### Pattern

12 letters and digits:
- Two letters (not case sensitive)
- Eight digits 
- Two letters (not case sensitive)

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

## Japan resident registration number

### Format

11 digits

### Pattern

11 consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Resident Register Number 
- Residents Basic Registry Number 
- Resident Registration No. 
- Resident Register No. 
- Residents Basic Registry No. 
- Basic Resident Register No. 
- 住民登録番号、登録番号をレジデント 
- 住民基本登録番号、登録番号 
- 住民基本レジストリ番号を常駐 
- 登録番号を常駐住民基本台帳登録番号 

   
## Japan social insurance number (SIN)

### Format

7-12 digits

### Pattern

7-12 digits:
- Four digits 
- A hyphen (optional) 
- Six digits
OR
- 7-12 consecutive digits

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_jp_sin finds content that matches the pattern.
- A keyword from Keyword_jp_sin is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- 社会保険のテンキー 
- 社会保険番号 

## Latvia driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_latvia_eu_driver's_license_number" />
          <Match idRef="Keywords_latvia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_latvia_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- autovadītāja apliecība

## Latvia national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
<!-- Latvia national identification number -->
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_latvia_eu_passport_number" />
          <Match idRef="Keywords_latvia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_latvia_eu_passport_number**

- passport number
- latvian passport number
- passport no
- pase numurs    

## Latvia tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

### Format

11 digits with no spaces or delimiters
  
### Pattern

11 digits in the specified pattern
  
- Six digits that correspond to the date of birth (DDMMYY) 
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
    
```xml
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

## Lithuania driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_lithuania_eu_driver's_license_number" />
          <Match idRef="Keywords_lithuania_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_lithuania_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- vairuotojo pažymėjimas

## Lithuania national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits without spaces and delimiters:
  
- One digit that corresponds to the person's gender and century of birth
- Six digits that correspond to birth date (YYMMDD) 
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
    
```xml
<!-- Lithuania national identification number -->
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_lithuania_eu_passport_number" />
          <Match idRef="Keywords_lithuania_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_lithuania_eu_passport_number**

passport number
lithunian passport number
passport no
paso numeris

## Lithuania tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

- asmeninis skaitmeninis kodas
- asmens kodas
- citizen service number
- mokesčių id
- mokesčių identifikavimas numeris
- mokesčių identifikavimo numeris
- mokesčių numeris
- national identification number
- personal code
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

## Luxemburg driver's license number
his sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_luxemburg_eu_driver's_license_number" />
          <Match idRef="Keywords_luxemburg_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_luxemburg_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- fahrerlaubnis

## Luxemburg national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

### Format

11 digits without spaces and delimiters
  
### Pattern

11 digits
  
- One digit that corresponds to the person's gender and century of birth
- Six digits that correspond to birth date (YYMMDD) 
- Three digits that correspond to the serial number of the date of birth
- One check digit
    
### Checksum

Not applicable
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_luxemburg_eu_national_id_card` finds content that matches the pattern. 
- A keyword from  `Keywords_luxemburg_eu_national_id_card` is found. 
    
```xml
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_luxemburg_eu_national_id_card" />
          <Match idRef="Keywords_luxemburg_eu_national_id_card" />
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_nation_eu_passport_number" />
          <Match idRef="Keywords_nation_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_nation_eu_passport_number**

passport number
latvian passport number
passport no
passnummer

## Luxemburg tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

### Format

13 digits with no spaces or delimiters
  
### Pattern

13 digits:
  
- 11 digits 
- Two check digits
    
### Checksum

Yes
  
### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_luxemburg_eu_tax_file_number` finds content that matches the pattern. 
- A keyword from  `Keywords_luxemburg_eu_tax_file_number` is found. 
    
A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_luxemburg_eu_tax_file_number` finds content that matches the pattern. 
    
```xml
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
- Six digits in the format YYMMDD which are the date of birth 
- A dash (optional) 
- Two-letter place-of-birth code 
- A dash (optional) 
- Three random digits 
- One-digit gender code

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
<!-- EU Driver's License Number -->
 <Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_driver's_license_number" />
          <Match idRef="Keywords_malta_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_malta_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- liċenzja tas-sewqan

## Malta national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
 <!--Malta national identification number  -->
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_passport_number" />
          <Match idRef="Keywords_malta_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_malta_eu_passport_number**

- passport number
- maltese passport number
- passport no
- numru tal-passaport

## Malta tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

## Netherlands citizen's service (BSN) number

### Format

8-9 digits containing optional spaces

### Pattern

8-9 digits:
- Three digits 
- A space (optional) 
- Three digits 
- A space (optional) 
- 2-3 digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_netherlands_bsn finds content that matches the pattern.
- A keyword from Keyword_netherlands_bsn is found.
- The function Func_eu_date2 finds a date in the right date format.
- The checksum passes.

```xml
<!-- Netherlands Citizen's Service (BSN) Number -->
<Entity id="c5f54253-ef7e-44f6-a578-440ed67e946d" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
       <IdMatch idRef="Func_netherlands_bsn" /> 
       <Match idRef="Keyword_netherlands_bsn" /> 
       <Match idRef="Func_eu_date2" /> 
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_netherlands_bsn
  
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_netherlands_eu_driver's_license_number" />
          <Match idRef="Keywords_netherlands_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_netherlands_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- permis de conduire
- rijbewijs
- rijbewijsnummer

## Netherlands national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
 <!--Netherland national identification number  -->
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

## Netherlands passport number
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_netherlands_eu_passport_number" />
          <Match idRef="Keywords_netherlands_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_netherlands_eu_passport_number**

- dutch passport number
- passport number
- netherlands passport number
- nederlanden paspoort nummer
- paspoort
- nederlanden paspoortnummer
- paspoortnummer

## Netherlands tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

## New Zealand ministry of health number

### Format

Three letters, a space (optional), and four digits

### Pattern

Three letters (not case sensitive) a space (optional) four digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_zealand_ministry_of_health_number finds content that matches the pattern.
- A keyword from Keyword_nz_terms is found.
- The checksum passes.

```xml
<!-- New Zealand Health Number -->
<Entity id="2b71c1c8-d14e-4430-82dc-fd1ed6bf05c7" patternsProximity="300" recommendedConfidence="85">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_new_zealand_ministry_of_health_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_nz_terms" />
        </Any>
    </Pattern>
</Entity>
```

Keywords

Keyword_nz_terms

- NHI 
- New Zealand 
- Health 
- treatment 
   
## Norway identification number

### Format

11 digits

### Pattern

11 digits:
- Six digits in the format DDMMYY which are the date of birth 
- Three-digit individual number 
- Two check digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_norway_id_number finds content that matches the pattern.
- A keyword from Keyword_norway_id_number is found.
- The checksum passes.
- A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Four digits 
- A hyphen 
- Seven digits 
- A hyphen 
- One digit

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_poland_eu_driver's_license_number" />
          <Match idRef="Keywords_poland_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_poland_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- prawo jazdy

## Poland identity card

### Format

Three letters and six digits

### Pattern

Three letters (not case sensitive) followed by six digits

### Checksum

Yes

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
The function Func_polish_national_id finds content that matches the pattern.
A keyword from Keyword_polish_national_id_passport_number is found.
The checksum passes.

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

#### Keyword_polish_national_id_passport_number

- Dowód osobisty
- Numer dowodu osobistego
- Nazwa i numer dowodu osobistego
- Nazwa i nr dowodu osobistego
- Nazwa i nr dowodu tożsamości
- Dowód Tożsamości
- dow. os.

   
## Poland National ID (PESEL)
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

11 digits

### Pattern

11 consecutive digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_pesel_identification_number finds content that matches the pattern.
- A keyword from Keyword_pesel_identification_number is found.
- The checksum passes.

```xml
<!-- Poland National ID (PESEL) -->      
<Entity id="E3AAF206-4297-412F-9E06-BA8487E22456" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_pesel_identification_number" />
          <Match idRef="Keyword_pesel_identification_number" />
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
This sensitive information type entity is included in the EU Passport Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

Two letters and seven digits

### Pattern

Two letters (not case sensitive) followed by seven digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_polish_passport_number finds content that matches the pattern.
- A keyword from Keyword_polish_national_id_passport_number is found.
- The checksum passes.

```xml
<!-- Poland Passport Number -->
<Entity id="03937FB5-D2B6-4487-B61F-0F8BFF7C3517" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_polish_passport_number" />
          <Match idRef="Keyword_polish_national_id_passport_number" />
      </Pattern>
</Entity>
</Version>
```

### Keywords

#### Keyword_polish_national_id_passport_number

- Numer paszportu
- Nr. Paszportu
- Paszport

## Poland tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

nip#
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
- This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.
- This sensitive information type entity is included in the EU Social Security Number or Equivalent ID sensitive information type.


### Format

Eight digits

### Pattern

Eight digits

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

### Format

Two letters followed by a seven numbers in the specified pattern
  
### Pattern

Two letters followed by seven numbers with special characters:
  
- Two letters (not case-sensitive) 
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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_portugal_eu_driver's_license_number" />
          <Match idRef="Keywords_portugal_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_portugal_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- carteira de motorista

## Portugal passport number
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_portugal_eu_passport_number" />
          <Match idRef="Keywords_portugal_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_portugal_eu_passport_number**

passport number
portuguese passport number
passport no
número do passaporte

## Portugal tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

### Format

One character followed by eight digits
  
### Pattern

One character followed by eight digits:
  
- One letter (not case-sensitive) or digit 
- Eight digits
    
### Checksum

No
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The regular expression  `Regex_romania_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_romania_eu_driver's_license_number` is found. 
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_romania_eu_driver's_license_number" />
          <Match idRef="Keywords_romania_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_romania_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- permis de conducere

## Romania national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
 <!--Romania national identification number  -->
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_romania_eu_passport_number" />
          <Match idRef="Keywords_romania_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_romania_eu_passport_number**

- passport number
- romanian passport number
- passport no
- numărul pașaportului

## Romania tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

- cnp#
- cnp
- cod identificare personal
- cod numeric personal
- cod unic identificare
- codnumericpersonal#
- codul fiscal nr.
- identificarea fiscală nr #
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



## Saudi Arabia National ID

### Format

10 digits

### Pattern

10 consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

Nine letters and digits

### Pattern

- Nine letters and digits:
- The letter "F", "G", "S", or "T" (not case sensitive) 
- Seven digits 
- An alphabetic check digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_singapore_nric finds content that matches the pattern.
- A keyword from Keyword_singapore_nric is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovaknia_eu_driver's_license_number" />
          <Match idRef="Keywords_slovakia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_slovakia_eu_driver's_license_number**

dl#
driver license
driver license number
driver licence
drivers lic.
drivers license
drivers licence
driver's license
driver's license number
driver's licence number
driving license number
dlno#
vodičský preukaz

## Slovakia national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
 <!-- Slovakia national identification number -->
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovakia_eu_passport_number" />
          <Match idRef="Keywords_slovakia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_slovakia_eu_passport_number**

- passport number
- slovakian passport number
- passport no
- číslo pasu

## Slovakia tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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


## Slovenia driver's license number
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovenia_eu_driver's_license_number" />
          <Match idRef="Keywords_slovenia_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_slovenia_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license 
- driver's license number
- driver's licence number
- driving license number
- dlno#
- vozniško dovoljenje

## Slovenia national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
 <!-- Slovenia national identification number -->
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_slovenia_eu_passport_number" />
          <Match idRef="Keywords_slovenia_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_slovenia_eu_passport_number**

passport number
slovenian passport number
passport no
številka potnega lista

## Slovenia tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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
- Six digits in the format YYMMDD which are the date of birth 
- Four digits 
- A single-digit citizenship indicator 
- The digit "8" or "9" 
- One digit which is a checksum digit

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Six digits in the format YYMMDD which are the date of birth 
- A hyphen 
- One digit determined by the century and gender 
- Four-digit region-of-birth code 
- One digit used to differentiate people for whom the preceding numbers are identical 
- A check digit.

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_south_korea_resident_number finds content that matches the pattern.
- A keyword from Keyword_south_korea_resident_number is found.
- The checksum passes.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

### Format

Eight digits followed by one character
  
### Pattern

Eight digits followed by one character:
  
- Eight digits 
- One digit or letter (not case-sensitive)
    
### Checksum

Yes
  
### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
  
- The function  `Func_spain_eu_driver's_license_number` finds content that matches the pattern. 
- A keyword from  `Keywords_spain_eu_driver's_license_number` is found. 
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_driver's_license_number" />
          <Match idRef="Keywords_spain_eu_driver's_license_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_spain_eu_driver's_license_number**

- dlno#
- dl#
- drivers lic.
- driver licence
- driver license
- drivers licence
- drivers license
- driver's licence
- driver's license
- driving licence
- driving license
- driver licence number
- driver license number
- drivers licence number
- drivers license number
- driver's licence number
- driver's license number
- driving licence number
- driving license number
- driving permit
- driving permit number
- permiso de conducción
- permiso conducción
- número licencia conducir
- número de carnet de conducir
- número carnet conducir
- licencia conducir
- número de permiso de conducir
- número de permiso conducir
- número permiso conducir
- permiso conducir
- licencia de manejo
- el carnet de conducir
- carnet conducir

## Spain national identification number
This sensitive information type entity is only available in the EU National Identification Number sensitive information type.

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
    
```xml
<!-- Spain national identification number -->
 
<Entity id="419f449f-6d9d-4be1-a154-b531f7a91b41" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_spain_eu_national_id_card" />
          <Match idRef="Keywords_spain_eu_national_id_card" />
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
This sensitive information type entity is only available in the EU Passport Number sensitive information type.

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
    
```xml
 <!-- EU Passport Number -->
<Entity id="21883626-6245-4f3d-9b61-5cbb43e625ee" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_spain_eu_passport_number" />
          <Match idRef="Keywords_spain_eu_passport_number" />
        </Pattern>
</Entity>
```

### Keywords

**Keywords_spain_eu_passport_number**

- passport
- spain passport
- passport book
- passport number
- passport no
- libreta pasaporte
- número pasaporte
- españa pasaporte
- pasaporte


## Spain social security number (SSN)
This sensitive information type entity is included in the EU Social Security Number or Equivalent ID sensitive information type and is available as a stand alone sensitive information type entity.

### Format

11-12 digits

### Pattern

11-12 digits:
- Two digits 
- A forward slash (optional) 
- 7-8 digits 
- A forward slash (optional) 
- Two digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_spanish_social_security_number finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Spain SSN -->
<Entity id="5df987c0-8eae-4bce-ace7-b316347f3070" patternsProximity="300" recommendedConfidence="85">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_spanish_social_security_number" />
    </Pattern>
</Entity>
```

### Keywords

None

## Spain tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

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
    
```xml
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

- The string "User Id", "User ID", "uid", or "UserId"
- Any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- The string "Password" or "pwd" where "pwd" is not preceded by a lowercase letter
- An equal sign (=)
- Any character that is not a dollar sign ($), percent symbol (%), greater than symbol (>), at symbol (@), quotation mark ("), semicolon (;), left brace([), or left bracket ({)
- Any combination of 7-128 characters that are not a semicolon (;), forward slash (/), or quotation mark (")
- A semicolon (;) or quotation mark (")

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression CEP_Regex_SQLServerConnectionString finds content that matches the pattern.
- A keyword from CEP_GlobalFilter is **not** found.
- The regular expression CEP_PasswordPlaceHolder does **not** find content that matches the pattern.
- The regular expression CEP_CommonExampleKeywords does **not** find content that matches the pattern.

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
--OR--
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
This sensitive information type entity is only available in the EU Driver's License Number sensitive information type.

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
    
```xml
 <!-- EU Driver's License Number -->
<Entity id="b8fe86d1-c056-453b-bfaa-9fe698699ecc" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_sweden_eu_driver's_license_number" />
          <Match idRef="Keywords_sweden_eu_driver's_license_number" />
        </Pattern>
</Entity> 
```

### Keywords

**Keywords_sweden_eu_driver's_license_number**

- dl#
- driver license
- driver license number
- driver licence
- drivers lic.
- drivers license
- drivers licence
- driver's license
- driver's license number
- driver's licence number
- driving license number
- dlno#
- körkort

## Sweden National ID
This sensitive information type entity is included in the EU National Identification Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

10 or 12 digits and an optional delimiter

### Pattern

10 or 12 digits and an optional delimiter:
- 2-4 digits (optional) 
- Six digits in date format YYMMDD 
- Delimiter of "-" or "+" (optional), plus
- Four digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_swedish_national_identifier finds content that matches the pattern.
- The checksum passes.

```xml
<!-- Sweden National ID -->
<Entity id="f69aaf40-79be-4fac-8f05-fd1910d272c8" patternsProximity="300" recommendedConfidence="85">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_swedish_national_identifier" />
    </Pattern>
</Entity>
```

### Keywords

No
   
## Sweden passport number
This sensitive information type entity is included in the EU Passport Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

Eight digits

### Pattern

Eight consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_sweden_passport_number finds content that matches the pattern.
- One of the following is true:
    - A keyword from Keyword_passport is found.
    - A keyword from Keyword_sweden_passport is found.

```xml
<!-- Sweden Passport Number -->
<Entity id="ba4e7456-55a9-4d89-9140-c33673553526" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_sweden_passport_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_passport" />
          <Match idRef="Keyword_sweden_passport" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords
   
#### Keyword_sweden_passport

- visa requirements 
- Alien Registration Card 
- Schengen visas 
- Schengen visa 
- Visa Processing 
- Visa Type 
- Single Entry 
- Multiple Entry 
- G3 Processing Fees 

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

## Sweden social security number or equivalent identification
This sensitive information type entity is only available in the EU Social Security Number or Equivalent ID sensitive information type.

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
    
```xml
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

- personal id number
- identification number
- personal id no
- identity no
- identification no
- personal identification no
- personnummer id
- personligt id-nummer
- unikt id-nummer
- personnummer
- identifikationsnumret
- personnummer#
- identifikationsnumret#

## Sweden tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.

### Format

Ten digits and a symbol in the specified pattern
  
### Pattern

Ten digits and a symbol:
  
- Six digits that correspond to the birth date (YYMMDD) 
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
    
```xml
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

Four letters followed by 5-31 letters or digits

### Pattern

Four letters followed by 5-31 letters or digits:
- Four-letter bank code (not case sensitive) 
- An optional space 
- 4-28 letters or digits (the Basic Bank Account Number (BBAN)) 
- An optional space 
- 1-3 letters or digits (remainder of the BBAN)

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- international organization for standardization 9362 
- iso 9362 
- iso9362 
- swift\# 
- swiftcode 
- swiftnumber 
- swiftroutingnumber 
- swift code 
- swift number # 
- swift routing number 
- bic number 
- bic code 
- bic \# 
- bic\# 
- bank identifier code 
- 標準化9362 
- 迅速＃ 
- SWIFTコード 
- SWIFT番号 
- 迅速なルーティング番号 
- BIC番号 
- BICコード 
- 銀行識別コードのための国際組織 
- Organisation internationale de normalisation 9362 
- rapide \# 
- code SWIFT 
- le numéro de swift 
- swift numéro d'acheminement 
- le numéro BIC 
- \# BIC 
- code identificateur de banque 
   
## Taiwan national identification number

### Format

One letter (in English) followed by nine digits

### Pattern

One letter (in English) followed by nine digits:
- One letter (in English, not case sensitive) 
- The digit "1" or "2" 
- Eight digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_taiwanese_national_id finds content that matches the pattern.
- A keyword from Keyword_taiwanese_national_id is found.
- The checksum passes.

```xml
<!-- Taiwanese National ID -->
<Entity id="4C7BFC34-8DD1-421D-8FB7-6C6182C2AF03" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_taiwanese_national_id" />
          <Match idRef="Keyword_taiwanese_national_id" />
      </Pattern>
</Entity>
```

### Keywords

#### Keyword_taiwanese_national_id

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

- Biometric passport number: Nine digits
- Non-biometric passport number: Nine digits

### Pattern
Biometric passport number:
- The digit "3" 
- Eight digits

Non-biometric passport number:
- Nine digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
   
## Taiwan resident certificate (ARC/TARC) number

### Format

10 letters and digits

### Pattern

10 letters and digits:
- Two letters (not case sensitive) 
- Eight digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- First digit is not 0 or 9 
- 12 digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Thai_Citizen_Id finds content that matches the pattern.
- A keyword from Keyword_Thai_Citizen_Id is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

#### Keyword_Thai_Citizen_Id

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

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_Turkish_National_Id finds content that matches the pattern.
- A keyword from Keyword_Turkish_National_Id is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

#### Keyword_Turkish_National_Id

- TC Kimlik No
- TC Kimlik numarası
- Vatandaşlık numarası
- Vatandaşlık no

## U.K. driver's license number
This sensitive information type entity is included in the EU Driver's License Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

Combination of 18 letters and digits in the specified format

### Pattern

18 letters and digits:
- Five letters (not case sensitive) or the digit "9" in place of a letter 
- One digit 
- Five digits in the date format MMDDY for date of birth (7th character is incremented by 50 if driver is female, i.e. 51 to 62 instead of 01 to 12)
- Two letters (not case sensitive) or the digit "9" in place of a letter 
- Five digits

### Checksum

Yes

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_uk_drivers_license finds content that matches the pattern.
- A keyword from Keyword_uk_drivers_license is found.
- The checksum passes.

```xml
<!-- U.K. Driver's License Number -->
<Entity id="f93de4be-d94c-40df-a8be-461738047551" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_uk_drivers_license" />
        <Match idRef="Keyword_uk_drivers_license" />
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_uk_drivers_license

- DVLA 
- light vans 
- quadbikes 
- motor cars 
- 125cc 
- sidecar 
- tricycles 
- motorcycles 
- photocard licence 
- learner drivers 
- licence holder 
- licence holders 
- driving licences 
- driving licence 
- dual control car 
   
## U.K. electoral roll number

### Format

Two letters followed by 1-4 digits

### Pattern

Two letters (not case sensitive) followed by 1-4 numbers

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
- Either 3 or 10 digits 
- A space 
- Three digits 
- A space 
- Four digits

### Checksum

Yes

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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
This sensitive information type entity is included in the EU National Identificaiton Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

7 characters or 9 characters separated by spaces or dashes

### Pattern

Two possible patterns:

- Two letters (valid NINOs use only certain characters in this prefix, which this pattern validates; not case sensitive)
- Six digits
- Either 'A', 'B', 'C', or 'D' (like the prefix, only certain characters are allowed in the suffix; not case sensitive)

OR

- Two letters
- A space or dash
- Two digits
- A space or dash
- Two digits
- A space or dash
- Two digits
- A space or dash
- Either 'A', 'B', 'C', or 'D'

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_uk_nino finds content that matches the pattern.
- A keyword from Keyword_uk_nino is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_uk_nino finds content that matches the pattern.
- No keyword from Keyword_uk_nino is found.

```xml
<!-- U.K. NINO -->
<Entity id="16c07343-c26f-49d2-a987-3daf717e94cc" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_uk_nino" />
        <Any minMatches="1">
          <Match idRef="Keyword_uk_nino" />
        </Any>
    </Pattern>    
     <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_uk_nino" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_uk_nino" />
        </Any>
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
- insurance
    
## U.K. tax identification number
This sensitive information type entity is only available in the EU Tax Identification Number sensitive information type.


### Format

Unique Taxpayer Reference (UTR): 10 digits without spaces and delimiters
 
  
### Pattern

Unique Taxpayer Reference (UTR): 10 digits

  
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

8-17 digits

### Pattern

8-17 consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

Depends on the state -- for example, New York:
- Nine digits formatted like ddd ddd ddd will match.
- Nine digits like ddddddddd will not match.

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_new_york_drivers_license_number finds content that matches the pattern.
- A keyword from Keyword_[state_name]_drivers_license_name is found.
- A keyword from Keyword_us_drivers_license is found.

A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- State abbreviation (for example, "NY") 
- State name (for example, "New York")

## U.S. individual taxpayer identification number (ITIN)

### Format

Nine digits that start with a "9" and contain a "7" or "8" as the fourth digit, optionally formatted with spaces or dashes

### Pattern

Formatted:
- The digit "9" 
- Two digits 
- A space or dash 
- A "7" or "8" 
- A digit 
- A space, or dash 
- Four digits

Unformatted:
- The digit "9" 
- Two digits 
- A "7" or "8" 
- Five digits

### Checksum

No

### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_formatted_itin finds content that matches the pattern.
- At least one of the following is true:
    - A keyword from Keyword_itin is found.
    - The function Func_us_address finds an address in the right date format.
    - The function Func_us_date finds a date in the right date format.
    - A keyword from Keyword_itin_collaborative is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_unformatted_itin finds content that matches the pattern.
- At least one of the following is true:
    - A keyword from Keyword_itin_collaborative is found.
    - The function Func_us_address finds an address in the right date format.
    - The function Func_us_date finds a date in the right date format.

```xml
<!-- U.S. Individual Taxpayer Identification Number (ITIN) -->
<Entity id="e55e2a32-f92d-4985-a35d-a0b269eb687b" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_formatted_itin" />
        <Any minMatches="1">
          <Match idRef="Keyword_itin" />
          <Match idRef="Func_us_address" />
          <Match idRef="Func_us_date" />
          <Match idRef="Keyword_itin_collaborative" />
        </Any>
    </Pattern>
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_unformatted_itin" />
        <Match idRef="Keyword_itin" />
        <Any minMatches="1">
          <Match idRef="Keyword_itin_collaborative" />
          <Match idRef="Func_us_address" />
          <Match idRef="Func_us_date" />
        </Any>
    </Pattern>
</Entity>
```

### Keywords

#### Keyword_itin

- taxpayer 
- tax id 
- tax identification 
- itin 
- ssn 
- tin 
- social security 
- tax payer 
- itins 
- taxid 
- individual taxpayer 

#### Keyword_itin_collaborative

- License 
- DL 
- DOB 
- Birthdate 
- Birthday 
- Date of Birth 

## U.S. social security number (SSN)

### Format

9 digits, which may be in a formatted or unformatted pattern

> [!NOTE]
> If issued before mid-2011, an SSN has strong formatting where certain parts of the number must fall within certain ranges to be valid (but there's no checksum).

### Pattern

Four functions look for SSNs in four different patterns:
- Func_ssn finds SSNs with pre-2011 strong formatting that are formatted with dashes or spaces (ddd-dd-dddd OR ddd dd dddd)
- Func_unformatted_ssn finds SSNs with pre-2011 strong formatting that are unformatted as nine consecutive digits (ddddddddd)
- Func_randomized_formatted_ssn finds post-2011 SSNs that are formatted with dashes or spaces (ddd-dd-dddd OR ddd dd dddd)
- Func_randomized_unformatted_ssn finds post-2011 SSNs that are unformatted as nine consecutive digits (ddddddddd)

### Checksum

No


### Definition

A DLP policy is 85% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_ssn finds content that matches the pattern.
- A keyword from Keyword_ssn is found.

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_unformatted_ssn finds content that matches the pattern.
- A keyword from Keyword_ssn is found.

A DLP policy is 65% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_randomized_formatted_ssn finds content that matches the pattern.
- A keyword from Keyword_ssn is found.

A DLP policy is 55% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

- Social Security 
- Social Security# 
- Soc Sec 
- SSN 
- SSNS 
- SSN# 
- SS# 
- SSID 
   
## U.S. / U.K. passport number
The U.K. passport number sensitive information type entity is available in the EU Passport Number sensitive information type and is available as a stand alone sensitive information type entity.

### Format

Nine digits

### Pattern

Nine consecutive digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The function Func_usa_uk_passport finds content that matches the pattern.
- A keyword from Keyword_passport is found.

```xml
<Entity id="178ec42a-18b4-47cc-85c7-d62c92fd67f8" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_usa_uk_passport" />
        <Match idRef="Keyword_passport" />
    </Pattern>
</Entity>
```

### Keywords

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
