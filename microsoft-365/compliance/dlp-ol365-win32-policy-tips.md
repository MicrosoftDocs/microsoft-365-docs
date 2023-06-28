---
title: "Data loss prevention policy tip reference for Outlook for Microsoft 365"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/27/2023
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
description: "DLP policy tip reference for Outlook 365 for Win32."
---

# Data loss prevention policy tip reference for Outlook for Microsoft 365

[!INCLUDE [purview-preview](../includes/purview-preview.md)]


> [!NOTE]
> Microsoft Purview data loss prevention will only process the first four MB on message content for policy tip in Outlook for Microsoft 365 and only classify up to two MB of attchments.

## DLP policy tips supported

Yes

## DLP policy match email notification support

Yes

<!--## Supported versions and channels
 
- Version 2303 build 16.0.16216.10000 and higher
- Semi-annual channel tentative version 2302 build 16.0.16130.20478
-->
## Conditions that support policy tips for Outlook perpetual users

|For Outlook perpetual versions and users  |These conditions apply  |
|---------|---------|
|-E3 users</br>-E5 users    |- Content contains sensitive information types </br>- Content is shared from Microsoft 365 |

## Conditions that support policy tips for Outlook for Microsoft 365 users

|For Outlook for Microsoft versions and users  |These conditions apply|
|---------|---------|
|- All E3 users </br>- All offline E5 users </br>- All E5 users with connected experience disabled </br>- All online E5 users with production version and build lower than 2303 &16.0.16216.10000 </br>- All online E5 users with semi-annual channel version and build lower than 2302 and 16.0.16130.20478     |- Content contains sensitive information types </br>- Content is shared from Microsoft 365         |
|- All online E5 users with connected experience enabled with production version and build 2303 and 16.0 16216.10000 or higher </br>- semi-annual channel tenative version 2302 build 16.0.16130.20478 | - Content contains sensitive information types </br>- Content contains sensitivity labels (works for email labels, Office docs and PDF files) </br>- Content is shared </br>- Sender is </br>- Sender is member of </br>- Sender domain is </br>- Recipient is </br>- Recipient is a member of </br>- Recipient domain is </br>- Subject contains words|


<!--
>> [!NOTE]
> Outlook does not support showing policy tips for a DLP polcies that's applied to a dynamic distribution group or non-email enabled security groups.
-->

## Actions that support policy tips

All Exchange actions support policy tips

- Restrict access or encrypt the content in Microsoft 365 locations
- Set headers
- Remove header
- Redirect the message to specific users
- Forward the message for approval to sender's manager
- Forward the message for approval to specific approvers
- Add recipient to the To box
- Add recipient to the Cc box
- Add recipient to the Bcc box
- Add the sender's manager as recipient
- Removed O365 Message Encryption and rights protection
- Prepend Email Subject
- Add HTML Disclaimer
- Modify Email Subject
- Deliver the message to the hosted quarantine

## Sensitive information types that support policy tips for Outlook perpetual users

**For Outlook perpetual version E3 and E5 users these sensitive information types support policy tips:**

- [ABA routing number](sit-defn-aba-routing.md)
- [Argentina national identity (DNI) number](sit-defn-argentina-national-identity-numbers.md)
- [Australia bank account number](sit-defn-australia-bank-account-number.md)
- [Australia medical account number](sit-defn-australia-medical-account-number.md)
- [Australia passport number](sit-defn-australia-passport-number.md)
- [Australia tax file number](sit-defn-australia-tax-file-number.md)
- [Azure DocumentDB auth key](sit-defn-azure-document-db-auth-key.md)
- [Azure IAAS database connection string and Azure SQL connection string](sit-defn-azure-iaas-database-connection-string-azure-sql-connection-string.md)
- [Azure IoT connection string](sit-defn-azure-iot-connection-string.md)
- [Azure publish setting password](sit-defn-azure-publish-setting-password.md)
- [Azure Redis cache connection string](sit-defn-azure-redis-cache-connection-string.md)
- [Azure SAS](sit-defn-azure-sas.md)
- [Azure service bus connection string](sit-defn-azure-service-bus-connection-string.md)
- [Azure storage account key](sit-defn-azure-storage-account-key.md)
- [Azure Storage account key (generic)](sit-defn-azure-storage-account-key-generic.md)
- [Belgium national number](sit-defn-belgium-national-number.md)
- [Brazil CPF number](sit-defn-brazil-cpf-number.md)
- [Brazil legal entity number (CNPJ)](sit-defn-brazil-legal-entity-number.md)
- [Brazil national identification card (RG)](sit-defn-brazil-national-identification-card.md)
- [Canada bank account number](sit-defn-canada-bank-account-number.md)
- [Canada driver's license number](sit-defn-canada-drivers-license-number.md)
- [Canada health service number](sit-defn-canada-health-service-number.md)
- [Canada passport number](sit-defn-canada-passport-number.md)
- [Canada personal health identification number (PHIN)](sit-defn-canada-personal-health-identification-number.md)
- [Canada social insurance number](sit-defn-canada-social-insurance-number.md)
- [Chile identity card number](sit-defn-chile-identity-card-number.md)
- [China resident identity card (PRC) number](sit-defn-china-resident-identity-card-number.md)
- [Credit card number](sit-defn-credit-card-number.md)
- [Croatia identity card number](sit-defn-croatia-identity-card-number.md)
- [Croatia personal identification (OIB) number](sit-defn-croatia-personal-identification-number.md)
- [Czech personal identity number](sit-defn-czech-personal-identity-number.md)
- [Denmark personal identification number](sit-defn-denmark-personal-identification-number.md)
- [Drug Enforcement Agency (DEA) number](sit-defn-drug-enforcement-agency-number.md)
- [EU debit card number](sit-defn-eu-debit-card-number.md)
- [EU driver's license number](sit-defn-eu-drivers-license-number.md)
- [EU national identification number](sit-defn-eu-national-identification-number.md)
- [EU passport number](sit-defn-eu-passport-number.md)
- [EU social security number or equivalent identification](sit-defn-eu-social-security-number-equivalent-identification.md)
- [EU Tax identification number](sit-defn-eu-tax-identification-number.md)
- [Finland national ID](sit-defn-finland-national-id.md)
- [Finland passport number](sit-defn-finland-passport-number.md)
- [France driver's license number](sit-defn-france-drivers-license-number.md)
- [France national id card (CNI)](sit-defn-france-national-id-card.md)
- [France passport number](sit-defn-france-passport-number.md)
- [France social security number (INSEE)](sit-defn-france-social-security-number.md)
- [Germany driver's license number](sit-defn-germany-drivers-license-number.md)
- [Germany passport number](sit-defn-germany-passport-number.md)
- [Germany identity card number](sit-defn-germany-identity-card-number.md)
- [Greece national ID card](sit-defn-greece-national-id-card.md)
- [Hong Kong identity card (HKID) number](sit-defn-hong-kong-identity-card-number.md)
- [India permanent account number (PAN)](sit-defn-india-permanent-account-number.md)
- [India unique identification (Aadhaar) number](sit-defn-india-unique-identification-number.md)
- [Indonesia identity card (KTP) number](sit-defn-indonesia-identity-card-number.md)
- [International banking account number (IBAN)](sit-defn-international-banking-account-number.md)
- [International classification of diseases (ICD-10-CM)](sit-defn-international-classification-of-diseases-icd-10-cm.md)
- [International classification of diseases (ICD-9-CM)](sit-defn-international-classification-of-diseases-icd-9-cm.md)
- [IP address](sit-defn-ip-address.md)
- [Ireland personal public service (PPS) number](sit-defn-ireland-personal-public-service-number.md)
- [Israel bank account number](sit-defn-israel-bank-account-number.md)
- [Israel national identification number](sit-defn-israel-national-identification-number.md)
- [Italy driver's license number](sit-defn-italy-drivers-license-number.md)
- [Japan bank account number](sit-defn-japan-bank-account-number.md)
- [Japan driver's license number](sit-defn-japan-drivers-license-number.md)
- [Japan passport number](sit-defn-japan-passport-number.md)
- [Japan resident registration number](sit-defn-japan-resident-registration-number.md)
- [Japan social insurance number (SIN)](sit-defn-japan-social-insurance-number.md)
- [Japan residence card number](sit-defn-japan-residence-card-number.md)
- [Malaysia identification card number](sit-defn-malaysia-identification-card-number.md)
- [Netherlands citizens service (BSN) number](sit-defn-netherlands-citizens-service-number.md)
- [New Zealand ministry of health number](sit-defn-new-zealand-ministry-of-health-number.md)
- [Norway identification number](sit-defn-norway-identification-number.md)
- [Philippines unified multi-purpose identification number](sit-defn-philippines-unified-multi-purpose-identification-number.md)
- [Poland identity card](sit-defn-poland-identity-card.md)
- [Poland national ID (PESEL)](sit-defn-poland-national-id.md)
- [Poland passport number](sit-defn-poland-passport-number.md)
- [Portugal citizen card number](sit-defn-portugal-citizen-card-number.md)
- [Saudi Arabia National ID](sit-defn-saudi-arabia-national-id.md)
- [Singapore national registration identity card (NRIC) number](sit-defn-singapore-national-registration-identity-card-number.md)
- [South Africa identification number](sit-defn-south-africa-identification-number.md)
- [South Korea resident registration number](sit-defn-south-korea-resident-registration-number.md)
- [Spain social security number (SSN)](sit-defn-spain-social-security-number.md)
- [SQL Server connection string](sit-defn-sql-server-connection-string.md)
- [Sweden national ID](sit-defn-sweden-national-id.md)
- [Sweden passport number](sit-defn-sweden-passport-number.md)
- [SWIFT code](sit-defn-swift-code.md)
- [Taiwan national identification number](sit-defn-taiwan-national-identification-number.md)
- [Taiwan passport number](sit-defn-taiwan-passport-number.md)
- [Taiwan-resident certificate (ARC/TARC) number](sit-defn-taiwan-resident-certificate-number.md)
- [Thai population identification code](sit-defn-thai-population-identification-code.md)
- [Turkey national identification number](sit-defn-turkey-national-identification-number.md)
- [U.K. drivers license number](sit-defn-uk-drivers-license-number.md)
- [U.K. electoral roll number](sit-defn-uk-electoral-roll-number.md)
- [U.K. national health service number](sit-defn-uk-national-health-service-number.md)
- [U.K. national insurance number (NINO)](sit-defn-uk-national-insurance-number.md)
- [U.S./U.K. passport number](sit-defn-us-uk-passport-number.md)
- [U.S. bank account number](sit-defn-us-bank-account-number.md)
- [U.S. driver's license number](sit-defn-us-drivers-license-number.md)
- [U.S. individual taxpayer identification number (ITIN)](sit-defn-us-individual-taxpayer-identification-number.md)
- [U.S. social security number (SSN)](sit-defn-us-social-security-number.md)     

## Sensitive information types that support policy tips for Microsoft 365 for Enterprise Outlook users

**For these Outlook versions and users:**

- All Microsoft 365 for Enterprise E3 users
- All Microsoft 365 for Enterprise offline E5 users
- All Microsoft 365 for Enterprise E5 users with connected experience disabled
- All Microsoft 365 for Enterprise online E5 users with production version and build lower than 2303 &16.0.16216.10000
- All Microsoft 365 for Enterprise online E5 users with semi-annual channel version and build lower than 2302 and 16.0.16130.20478

**These sensitive information types support policy tips:**

- [ABA routing number](sit-defn-aba-routing.md)
- [Argentina national identity (DNI) number](sit-defn-argentina-national-identity-numbers.md)
- [Australia bank account number](sit-defn-australia-bank-account-number.md)
- [Australia medical account number](sit-defn-australia-medical-account-number.md)
- [Australia passport number](sit-defn-australia-passport-number.md)
- [Australia tax file number](sit-defn-australia-tax-file-number.md)
- [Azure DocumentDB auth key](sit-defn-azure-document-db-auth-key.md)
- [Azure IAAS database connection string and Azure SQL connection string](sit-defn-azure-iaas-database-connection-string-azure-sql-connection-string.md)
- [Azure IoT connection string](sit-defn-azure-iot-connection-string.md)
- [Azure publish setting password](sit-defn-azure-publish-setting-password.md)
- [Azure Redis cache connection string](sit-defn-azure-redis-cache-connection-string.md)
- [Azure SAS](sit-defn-azure-sas.md)
- [Azure service bus connection string](sit-defn-azure-service-bus-connection-string.md)
- [Azure storage account key](sit-defn-azure-storage-account-key.md)
- [Azure Storage account key (generic)](sit-defn-azure-storage-account-key-generic.md)
- [Belgium national number](sit-defn-belgium-national-number.md)
- [Brazil CPF number](sit-defn-brazil-cpf-number.md)
- [Brazil legal entity number (CNPJ)](sit-defn-brazil-legal-entity-number.md)
- [Brazil national identification card (RG)](sit-defn-brazil-national-identification-card.md)
- [Canada bank account number](sit-defn-canada-bank-account-number.md)
- [Canada driver's license number](sit-defn-canada-drivers-license-number.md)
- [Canada health service number](sit-defn-canada-health-service-number.md)
- [Canada passport number](sit-defn-canada-passport-number.md)
- [Canada personal health identification number (PHIN)](sit-defn-canada-personal-health-identification-number.md)
- [Canada social insurance number](sit-defn-canada-social-insurance-number.md)
- [Chile identity card number](sit-defn-chile-identity-card-number.md)
- [China resident identity card (PRC) number](sit-defn-china-resident-identity-card-number.md)
- [Credit card number](sit-defn-credit-card-number.md)
- [Croatia identity card number](sit-defn-croatia-identity-card-number.md)
- [Croatia personal identification (OIB) number](sit-defn-croatia-personal-identification-number.md)
- [Czech personal identity number](sit-defn-czech-personal-identity-number.md)
- [Denmark personal identification number](sit-defn-denmark-personal-identification-number.md)
- [Drug Enforcement Agency (DEA) number](sit-defn-drug-enforcement-agency-number.md)
- [EU debit card number](sit-defn-eu-debit-card-number.md)
- [EU driver's license number](sit-defn-eu-drivers-license-number.md)
- [EU national identification number](sit-defn-eu-national-identification-number.md)
- [EU passport number](sit-defn-eu-passport-number.md)
- [EU social security number or equivalent identification](sit-defn-eu-social-security-number-equivalent-identification.md)
- [EU Tax identification number](sit-defn-eu-tax-identification-number.md)
- [Finland national ID](sit-defn-finland-national-id.md)
- [Finland passport number](sit-defn-finland-passport-number.md)
- [France driver's license number](sit-defn-france-drivers-license-number.md)
- [France national id card (CNI)](sit-defn-france-national-id-card.md)
- [France passport number](sit-defn-france-passport-number.md)
- [France social security number (INSEE)](sit-defn-france-social-security-number.md)
- [Germany driver's license number](sit-defn-germany-drivers-license-number.md)
- [Germany passport number](sit-defn-germany-passport-number.md)
- [Germany identity card number](sit-defn-germany-identity-card-number.md)
- [Greece national ID card](sit-defn-greece-national-id-card.md)
- [Hong Kong identity card (HKID) number](sit-defn-hong-kong-identity-card-number.md)
- [India permanent account number (PAN)](sit-defn-india-permanent-account-number.md)
- [India unique identification (Aadhaar) number](sit-defn-india-unique-identification-number.md)
- [Indonesia identity card (KTP) number](sit-defn-indonesia-identity-card-number.md)
- [International banking account number (IBAN)](sit-defn-international-banking-account-number.md)
- [International classification of diseases (ICD-10-CM)](sit-defn-international-classification-of-diseases-icd-10-cm.md)
- [International classification of diseases (ICD-9-CM)](sit-defn-international-classification-of-diseases-icd-9-cm.md)
- [IP address](sit-defn-ip-address.md)
- [Ireland personal public service (PPS) number](sit-defn-ireland-personal-public-service-number.md)
- [Israel bank account number](sit-defn-israel-bank-account-number.md)
- [Israel national identification number](sit-defn-israel-national-identification-number.md)
- [Italy driver's license number](sit-defn-italy-drivers-license-number.md)
- [Japan bank account number](sit-defn-japan-bank-account-number.md)
- [Japan driver's license number](sit-defn-japan-drivers-license-number.md)
- [Japan passport number](sit-defn-japan-passport-number.md)
- [Japan resident registration number](sit-defn-japan-resident-registration-number.md)
- [Japan social insurance number (SIN)](sit-defn-japan-social-insurance-number.md)
- [Japan residence card number](sit-defn-japan-residence-card-number.md)
- [Malaysia identification card number](sit-defn-malaysia-identification-card-number.md)
- [Netherlands citizens service (BSN) number](sit-defn-netherlands-citizens-service-number.md)
- [New Zealand ministry of health number](sit-defn-new-zealand-ministry-of-health-number.md)
- [Norway identification number](sit-defn-norway-identification-number.md)
- [Philippines unified multi-purpose identification number](sit-defn-philippines-unified-multi-purpose-identification-number.md)
- [Poland identity card](sit-defn-poland-identity-card.md)
- [Poland national ID (PESEL)](sit-defn-poland-national-id.md)
- [Poland passport number](sit-defn-poland-passport-number.md)
- [Portugal citizen card number](sit-defn-portugal-citizen-card-number.md)
- [Saudi Arabia National ID](sit-defn-saudi-arabia-national-id.md)
- [Singapore national registration identity card (NRIC) number](sit-defn-singapore-national-registration-identity-card-number.md)
- [South Africa identification number](sit-defn-south-africa-identification-number.md)
- [South Korea resident registration number](sit-defn-south-korea-resident-registration-number.md)
- [Spain social security number (SSN)](sit-defn-spain-social-security-number.md)
- [SQL Server connection string](sit-defn-sql-server-connection-string.md)
- [Sweden national ID](sit-defn-sweden-national-id.md)
- [Sweden passport number](sit-defn-sweden-passport-number.md)
- [SWIFT code](sit-defn-swift-code.md)
- [Taiwan national identification number](sit-defn-taiwan-national-identification-number.md)
- [Taiwan passport number](sit-defn-taiwan-passport-number.md)
- [Taiwan-resident certificate (ARC/TARC) number](sit-defn-taiwan-resident-certificate-number.md)
- [Thai population identification code](sit-defn-thai-population-identification-code.md)
- [Turkey national identification number](sit-defn-turkey-national-identification-number.md)
- [U.K. drivers license number](sit-defn-uk-drivers-license-number.md)
- [U.K. electoral roll number](sit-defn-uk-electoral-roll-number.md)
- [U.K. national health service number](sit-defn-uk-national-health-service-number.md)
- [U.K. national insurance number (NINO)](sit-defn-uk-national-insurance-number.md)
- [U.S./U.K. passport number](sit-defn-us-uk-passport-number.md)
- [U.S. bank account number](sit-defn-us-bank-account-number.md)
- [U.S. driver's license number](sit-defn-us-drivers-license-number.md)
- [U.S. individual taxpayer identification number (ITIN)](sit-defn-us-individual-taxpayer-identification-number.md)
- [U.S. social security number (SSN)](sit-defn-us-social-security-number.md)     

**For these Outlook versions and users:**

- Online E5 users with connected experience enabled with Production version and build 2303 & 16.0.16216.10000 or higher.
- Semi-annual channel tentative version 2302 build 16.0.16130.20478.

**These sensitive information types support policy tips:**

[!INCLUDE [SIT link list](../includes/sit-link-list.md)]


### Exact Data Match sensitive information types that support policy tips Outlook for Microsoft 365

Yes.

For more information on exact data match based SITs, see [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md)


<!--### Document Fingerprint SITs

Policy tips are not supported.

For more information on document fingerprint SITs, see [Document fingerprinting](document-fingerprinting.md)-->

## Sensitivity label support for Outlook for Microsoft 365

Applies to:

- E5 users with connected experience enabled with production version and build 2303 & 16.0.16216.10000 or higher
- Semi-annual channel tentative version 2302 build 16.0.16130.20478

Yes.

For more information on sensitivity labels, see [Learn about sensitivity labels](sensitivity-labels.md)

### Trainable classifiers support for Outlook for Microsoft 365

Applies to:

- E5 users with connected experience enabled with production version and build 2303 & 16.0.16216.10000 or higher
- Semi-annual channel tentative version 2302 build 16.0.16130.20478

Yes.

- [Adult, racy, and gory images](classifier-tc-definitions.md#adult-racy-and-gory-images)
- [Agreements](classifier-tc-definitions.md#agreements)
- [Bank statement](classifier-tc-definitions.md#bank-statement)
- [Budget](classifier-tc-definitions.md#budget)
- [Business plan](classifier-tc-definitions.md#business-plan)
- [Completion certificates](classifier-tc-definitions.md#completion-certificates)
- [Construction specifications](classifier-tc-definitions.md#construction-specifications)
- [Corporate sabotage](classifier-tc-definitions.md#corporate-sabotage)
- [Customer complaints](classifier-tc-definitions.md#customer-complaints)
- [Discrimination](classifier-tc-definitions.md#discrimination)
- [Employee disciplinary action](classifier-tc-definitions.md#employee-disciplinary-action)
- [Employee insurance](classifier-tc-definitions.md#employee-insurance)
- [Employment agreement](classifier-tc-definitions.md#employment-agreement)
- [Employee Pension Records](classifier-tc-definitions.md#employee-pension-records)
- [Employee Stocks and Financial Bond Records](classifier-tc-definitions.md#employee-stocks-and-financial-bond-records)
- [Enterprise Risk Management](classifier-tc-definitions.md#enterprise-risk-management)
- [Finance](classifier-tc-definitions.md#finance)
- [Financial audit](classifier-tc-definitions.md#financial-audit)
- [Financial statement](classifier-tc-definitions.md#financial-statement)
- [Freight Documents](classifier-tc-definitions.md#freight-documents)
- [Gifts & entertainment](classifier-tc-definitions.md#gifts--entertainment)
- [Harassment](classifier-tc-definitions.md#harassment)
- [Health/Medical forms](classifier-tc-definitions.md#healthmedical-forms)
- [Healthcare](classifier-tc-definitions.md#healthcare)
- [Human resources](classifier-tc-definitions.md)
- [Invoice](classifier-tc-definitions.md#invoice)
- [Intellectual property](classifier-tc-definitions.md#intellectual-property)
- [Information technology](classifier-tc-definitions.md#information-technology)
- [Legal affairs](classifier-tc-definitions.md#legal-affairs)
- [Legal Agreements](classifier-tc-definitions.md#legal-agreements)
- [License agreement](classifier-tc-definitions.md#license-agreement)
- [Loan agreements and offer letters](classifier-tc-definitions.md#loan-agreements-and-offer-letters)
- [Merger and acquisition files](classifier-tc-definitions.md#merger-and-acquisition-files)
- [Manufacturing batch records](classifier-tc-definitions.md#manufacturing-batch-records)
- [Meeting notes](classifier-tc-definitions.md#meeting-notes)
- [Money laundering](classifier-tc-definitions.md#money-laundering)
- [Network design files](classifier-tc-definitions.md#network-design-files)
- [Non-disclosure agreement](classifier-tc-definitions.md#non-disclosure-agreement)
- [Paystub](classifier-tc-definitions.md#paystub)
- [Personal Financial Information](classifier-tc-definitions.md#personal-financial-information)
- [Procurement](classifier-tc-definitions.md#procurement)
- [Project documents](classifier-tc-definitions.md#project-documents)
- [Profanity](classifier-tc-definitions.md#profanity)
- [Quotation](classifier-tc-definitions.md#quotation)
- [Regulatory collusion](classifier-tc-definitions.md#regulatory-collusion)
- [Resume](classifier-tc-definitions.md#resume)
- [Safety records](classifier-tc-definitions.md#safety-records)
- [Sales and revenue](classifier-tc-definitions.md#sales-and-revenue)
- [Software product development files](classifier-tc-definitions.md#software-product-development-files)
- [Source code](classifier-tc-definitions.md#source-code)
- [Standard Operating Procedures and Manuals](classifier-tc-definitions.md#standard-operating-procedures-and-manuals)
- [Statement of Accounts](classifier-tc-definitions.md#statement-of-accounts)
- [Statement of work](classifier-tc-definitions.md#statement-of-work)
- [Stock manipulation](classifier-tc-definitions.md#stock-manipulation)
- [Tax documents](classifier-tc-definitions.md#tax-documents)
- [Threat](classifier-tc-definitions.md#threat)
- [Unauthorized disclosure](classifier-tc-definitions.md#unauthorized-disclosure)
- [Wire Transfer](classifier-tc-definitions.md#wire-transfer)
- [Word count requirements](classifier-tc-definitions.md#word-count-requirements)

For more information on trainable classifiers, see [Learn about trainable classifiers](classifier-learn-about.md)
