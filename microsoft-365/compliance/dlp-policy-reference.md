---
title: "Data Loss Prevention policy reference"
f1.keywords: CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 03/02/2022
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- SPO160
- MET150
ms.assetid: 6501b5ef-6bf7-43df-b60d-f65781847d6c
ms.collection:
- M365-security-compliance
- SPO_Content
recommendations: false
description: "DLP policy component and configuration reference"
ms.custom: seo-marvel-apr2021
---
# Data Loss Prevention policy reference

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Microsoft Purview Data Loss Prevention (DLP) policies have many components to configure. To create an effective policy, you need to understand what the purpose of each component is and how its configuration alters the behavior of the policy. This article provides a detailed anatomy of a DLP policy.

## Policy templates 

DLP policy templates are pre-sorted into four categories:

- Ones that can detect and protect types of **Financial** information.
- Ones that can detect and protect types of **Medical and health** information.
- Ones that can detect and protect types of **Privacy** information.
- A **Custom** template that you can use to build your own policy if one of the others doesn't meet your organizations needs.

This table lists all policy templates and the sensitive information types (SIT) that they cover. 

updated: 06/23/2021

|Category| Template | SIT |
|---------|---------|---------|
|Financial| Australia Financial Data| - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia bank account number](sensitive-information-type-entity-definitions.md#australia-bank-account-number) </br> - [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| Canada Financial data |- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [Canada bank account number](sensitive-information-type-entity-definitions.md#canada-bank-account-number)|
|Financial| France Financial data |- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number)|
|Financial| Germany Financial Data |- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number)|
|Financial| Israel Financial Data |- [Israel bank account number](sensitive-information-type-entity-definitions.md#israel-bank-account-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| Japan Financial Data |- [Japan bank account number](sensitive-information-type-entity-definitions.md#japan-bank-account-number) </br> - [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| PCI Data Security Standard (PCI DSS)|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| Saudi Arabia Anti-Cyber Crime Law|- [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [International banking account number (IBAN)](sensitive-information-type-entity-definitions.md#international-banking-account-number-iban) |
|Financial| Saudi Arabia Financial Data |- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [International banking account number (IBAN)](sensitive-information-type-entity-definitions.md#international-banking-account-number-iban)|
|Financial| UK Financial Data|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Financial| US Financial Data|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [ABA Routing Number](sensitive-information-type-entity-definitions.md#aba-routing-number)|
|Financial| U.S. Federal Trade Commission (FTC) Consumer Rules|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [ABA Routing Number](sensitive-information-type-entity-definitions.md#aba-routing-number)|
|Financial| U.S. Gramm-Leach-Bliley Act (GLBA) Enhanced|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [U.S./U.K. passport number](sensitive-information-type-entity-definitions.md#usuk-passport-number) </br> -[U.S. driver's license number](sensitive-information-type-entity-definitions.md#us-drivers-license-number)</br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names)</br> - [U.S. Physical Addresses](sensitive-information-type-entity-definitions.md#us-physical-addresses)|
|Financial| U.S. Gramm-Leach-Bliley Act (GLBA)|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|
|Medical and health| Australia Health Records Act (HRIP Act) Enhanced |- [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia medical account number](sensitive-information-type-entity-definitions.md#australia-medical-account-number) </br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names) </br> - [All Medical Terms And Conditions](sensitive-information-type-entity-definitions.md#all-medical-terms-and-conditions) </br> - [Australia Physical Addresses](sensitive-information-type-entity-definitions.md#australia-physical-addresses)|
|Medical and health| Australia Health Records Act (HRIP Act)|- [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia medical account number](sensitive-information-type-entity-definitions.md#australia-medical-account-number)|
|Medical and health| Canada Health Information Act (HIA) |- [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Medical and health| Canada Personal Health Information Act (PHIA) Manitoba|- [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Medical and health| Canada Personal Health Act (PHIPA) Ontario |- [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Medical and health| U.K. Access to Medical Reports Act|- [U.K. national health service number](sensitive-information-type-entity-definitions.md#uk-national-health-service-number) </br> - [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino)|
|Medical and health| U.S. Health Insurance Act (HIPAA) Enhanced|</br> - [International classification of diseases (ICD-9-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-9-cm) </br> - [International classification of diseases (ICD-10-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-10-cm) </br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names) </br> - [All Medical Terms And Conditions](sensitive-information-type-entity-definitions.md#all-medical-terms-and-conditions) </br> - [U.S. Physical Addresses](sensitive-information-type-entity-definitions.md#us-physical-addresses)|
|Medical and health| U.S. Health Insurance Act (HIPAA)| - [International classification of diseases (ICD-9-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-9-cm) </br> - [International classification of diseases (ICD-10-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-10-cm)|
|Privacy| Australia Privacy Act Enhanced|- [Australia driver's license number](sensitive-information-type-entity-definitions.md#australia-drivers-license-number) </br> - [Australia passport number](sensitive-information-type-entity-definitions.md#australia-passport-number) </br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names) </br> - [All Medical Terms And Conditions](sensitive-information-type-entity-definitions.md#all-medical-terms-and-conditions) </br> - [Australia Physical Addresses](sensitive-information-type-entity-definitions.md#australia-physical-addresses)|
|Privacy| Australia Privacy Act|- [Australia driver's license number](sensitive-information-type-entity-definitions.md#australia-drivers-license-number) </br> - [Australia passport number](sensitive-information-type-entity-definitions.md#australia-passport-number)|
|Privacy| Australia Personally Identifiable Information (PII) Data|- [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia driver's license number](sensitive-information-type-entity-definitions.md#australia-drivers-license-number)|
|Privacy| Canada Personally Identifiable Information (PII) Data|- [Canada driver's license number](sensitive-information-type-entity-definitions.md#canada-drivers-license-number)</br> - [Canada bank account number](sensitive-information-type-entity-definitions.md#canada-bank-account-number) </br> - [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Privacy| Canada Personal Information Protection Act (PIPA)|- [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Privacy| Canada Personal Information Protection Act (PIPEDA)|- [Canada driver's license number](sensitive-information-type-entity-definitions.md#canada-drivers-license-number) </br> - [Canada bank account number](sensitive-information-type-entity-definitions.md#canada-bank-account-number) </br> - [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Privacy| France Data Protection Act|- [France national id card (CNI)](sensitive-information-type-entity-definitions.md#france-national-id-card-cni) </br> - [France social security number (INSEE)](sensitive-information-type-entity-definitions.md#france-social-security-number-insee)|
|Privacy| France Personally Identifiable Information (PII) Data|- [France social security number (INSEE)](sensitive-information-type-entity-definitions.md#france-social-security-number-insee) </br> - [France driver's license number](sensitive-information-type-entity-definitions.md#france-drivers-license-number) </br> - [France passport number](sensitive-information-type-entity-definitions.md#france-passport-number) </br> - [France national id card (CNI)](sensitive-information-type-entity-definitions.md#france-national-id-card-cni)|
|Privacy| General Data Protection Regulation (GDPR) Enhanced|- [Austria Physical Addresses](sensitive-information-type-entity-definitions.md#austria-physical-addresses) </br> - [Belgium Physical Addresses](sensitive-information-type-entity-definitions.md#belgium-physical-addresses)</br> - [Bulgaria Physical Addresses](sensitive-information-type-entity-definitions.md#bulgaria-physical-addresses)</br> - [Croatia Physical Addresses](sensitive-information-type-entity-definitions.md#croatia-physical-addresses)</br> - [Cyprus Physical Addresses](sensitive-information-type-entity-definitions.md#cyprus-physical-addresses)</br> - [Czech Republic Physical Addresses](sensitive-information-type-entity-definitions.md#czech-republic-physical-addresses)</br> - [Denmark Physical Addresses](sensitive-information-type-entity-definitions.md#denmark-physical-addresses)</br> - [Estonia Physical Addresses](sensitive-information-type-entity-definitions.md#estonia-physical-addresses)</br> - [Finland Physical Addresses](sensitive-information-type-entity-definitions.md#finland-physical-addresses)</br> - [France Physical Addresses](sensitive-information-type-entity-definitions.md#france-physical-addresses)</br> - [Germany Physical Addresses](sensitive-information-type-entity-definitions.md#germany-physical-addresses)</br> - [Greece Physical Addresses](sensitive-information-type-entity-definitions.md#greece-physical-addresses)</br> - [Hungary Physical Addresses](sensitive-information-type-entity-definitions.md#hungary-physical-addresses)</br> - [Ireland Physical Addresses](sensitive-information-type-entity-definitions.md#ireland-physical-addresses)</br> - [Italy Physical Addresses](sensitive-information-type-entity-definitions.md#italy-physical-addresses)</br> - [Latvia Physical Addresses](sensitive-information-type-entity-definitions.md#latvia-physical-addresses)</br> - [Lithuania Physical Addresses](sensitive-information-type-entity-definitions.md#lithuania-physical-addresses)</br> - [Luxembourg Physical Addresses](sensitive-information-type-entity-definitions.md#luxemburg-physical-addresses)</br> - [Malta Physical Addresses](sensitive-information-type-entity-definitions.md#malta-physical-addresses)</br> - [Netherlands Physical Addresses](sensitive-information-type-entity-definitions.md#netherlands-physical-addresses)</br> - [Poland Physical Addresses](sensitive-information-type-entity-definitions.md#poland-physical-addresses)</br> - [Portuguese Physical Addresses](sensitive-information-type-entity-definitions.md#portugal-physical-addresses)</br> - [Romania Physical Addresses](sensitive-information-type-entity-definitions.md#romania-physical-addresses)</br> - [Slovakia Physical Addresses](sensitive-information-type-entity-definitions.md#slovakia-physical-addresses)</br> - [Slovenia Physical Addresses](sensitive-information-type-entity-definitions.md#slovenia-physical-addresses)</br> - [Spain Physical Addresses](sensitive-information-type-entity-definitions.md#spain-physical-addresses)</br> - [Sweden Physical Addresses](sensitive-information-type-entity-definitions.md#sweden-physical-addresses)</br> - [Austria Social Security Number](sensitive-information-type-entity-definitions.md#austria-social-security-number)</br> - [France Social Security Number (INSEE)](sensitive-information-type-entity-definitions.md#france-social-security-number-insee)</br> - [Greece Social Security Number (AMKA)](sensitive-information-type-entity-definitions.md#greece-social-security-number-amka)</br> - [Hungarian Social Security Number (TAJ)](sensitive-information-type-entity-definitions.md#hungary-social-security-number-taj)</br> - [Spain Social Security Number (SSN)](sensitive-information-type-entity-definitions.md#spain-social-security-number-ssn)</br> - [Austria Identity Card](sensitive-information-type-entity-definitions.md#austria-identity-card)</br> - [Cyprus Identity Card](sensitive-information-type-entity-definitions.md#cyprus-identity-card)</br> - [Germany Identity Card Number](sensitive-information-type-entity-definitions.md#germany-identity-card-number)</br> - [Malta Identity Card Number](sensitive-information-type-entity-definitions.md#malta-identity-card-number)</br> - [France National ID Card (CNI)](sensitive-information-type-entity-definitions.md#france-national-id-card-cni)</br> - [Greece National ID Card](sensitive-information-type-entity-definitions.md#greece-national-id-card)</br> - [Finland National ID](sensitive-information-type-entity-definitions.md#finland-national-id)</br> - [Poland National ID (PESEL)](sensitive-information-type-entity-definitions.md#poland-national-id-pesel)</br> - [Sweden National ID](sensitive-information-type-entity-definitions.md#sweden-national-id)</br> - [Croatia Personal Identification (OIB) Number](sensitive-information-type-entity-definitions.md#croatia-personal-identification-oib-number)</br> - [Czech Personal Identity Number](sensitive-information-type-entity-definitions.md#czech-personal-identity-number)</br> - [Denmark Personal Identification Number](sensitive-information-type-entity-definitions.md#denmark-personal-identification-number)</br> - [Estonia Personal Identification Code](sensitive-information-type-entity-definitions.md#estonia-personal-identification-code)</br> - [Hungary Personal Identification Number](sensitive-information-type-entity-definitions.md#hungary-personal-identification-number)</br> - [Luxemburg National Identification Number (Natural persons)](sensitive-information-type-entity-definitions.md#luxemburg-national-identification-number-natural-persons)</br> - [Luxemburg National Identification Number (Non-natural persons)](sensitive-information-type-entity-definitions.md#luxemburg-national-identification-number-non-natural-persons)</br> - [Italy Fiscal Code](sensitive-information-type-entity-definitions.md#italy-fiscal-code)</br> - [Latvia Personal Code](sensitive-information-type-entity-definitions.md#latvia-personal-code)</br> - [Lithuania Personal Code](sensitive-information-type-entity-definitions.md#lithuania-personal-code)</br> - [Romania Personal Numerical Code (CNP)](sensitive-information-type-entity-definitions.md#romania-personal-numeric-code-cnp)</br> - [Netherlands Citizen's Service (BSN) Number](sensitive-information-type-entity-definitions.md#netherlands-citizens-service-bsn-number)</br> - [Ireland Personal Public Service (PPS) Number](sensitive-information-type-entity-definitions.md#ireland-personal-public-service-pps-number)</br> - [Bulgaria Uniform Civil Number](sensitive-information-type-entity-definitions.md#bulgaria-uniform-civil-number)</br> - [Belgium National Number](sensitive-information-type-entity-definitions.md#belgium-national-number)</br> - [Spain DNI](sensitive-information-type-entity-definitions.md#spain-dni)</br> - [Slovenia Unique Master Citizen Number](sensitive-information-type-entity-definitions.md#slovenia-unique-master-citizen-number)</br> - [Slovakia Personal Number](sensitive-information-type-entity-definitions.md#slovakia-personal-number)</br> - [Portugal Citizen Card Number](sensitive-information-type-entity-definitions.md#portugal-citizen-card-number)</br> - [Malta Tax ID Number](sensitive-information-type-entity-definitions.md#malta-tax-identification-number)</br> - [Austria Tax Identification Number](sensitive-information-type-entity-definitions.md#austria-tax-identification-number)</br> - [Cyprus Tax Identification Number](sensitive-information-type-entity-definitions.md#cyprus-tax-identification-number)</br> - [France Tax Identification Number (numéro SPI.)](sensitive-information-type-entity-definitions.md#france-tax-identification-number)</br> - [Germany Tax Identification Number](sensitive-information-type-entity-definitions.md#germany-tax-identification-number)</br> - [Greek Tax identification Number](sensitive-information-type-entity-definitions.md#greece-tax-identification-number)</br> - [Hungary Tax identification Number](sensitive-information-type-entity-definitions.md#hungary-tax-identification-number)</br> - [Netherlands Tax Identification Number](sensitive-information-type-entity-definitions.md#netherlands-tax-identification-number)</br> - [Poland Tax Identification Number](sensitive-information-type-entity-definitions.md#poland-tax-identification-number)</br> - [Portugal Tax Identification Number](sensitive-information-type-entity-definitions.md#portugal-tax-identification-number)</br> - [Slovenia Tax Identification Number](sensitive-information-type-entity-definitions.md#slovenia-tax-identification-number)</br> - [Spain Tax Identification Number](sensitive-information-type-entity-definitions.md#spain-tax-identification-number)</br> - [Sweden Tax Identification Number](sensitive-information-type-entity-definitions.md#sweden-tax-identification-number)</br> - [Austria Driver's License](sensitive-information-type-entity-definitions.md#austria-drivers-license-number)</br> - [Belgium Driver's License Number](sensitive-information-type-entity-definitions.md#belgium-drivers-license-number)</br> - [Bulgaria Driver's License Number](sensitive-information-type-entity-definitions.md#bulgaria-drivers-license-number)</br> - [Croatia Driver's License Number](sensitive-information-type-entity-definitions.md#croatia-drivers-license-number)</br> - [Cyprus Driver's License Number](sensitive-information-type-entity-definitions.md#cyprus-drivers-license-number)</br> - [Czech Driver's License Number](sensitive-information-type-entity-definitions.md#czech-drivers-license-number)</br> - [Denmark Driver's License Number](sensitive-information-type-entity-definitions.md#denmark-drivers-license-number)</br> - [Estonia Driver's License Number](sensitive-information-type-entity-definitions.md#estonia-drivers-license-number)</br> - [Finland Driver's License Number](sensitive-information-type-entity-definitions.md#finland-drivers-license-number)</br> - [France Driver's License Number](sensitive-information-type-entity-definitions.md#france-drivers-license-number)</br> - [German Driver's License Number](sensitive-information-type-entity-definitions.md#germany-drivers-license-number)</br> - [Greece Driver's License Number](sensitive-information-type-entity-definitions.md#greece-drivers-license-number)</br> - [Hungary Driver's License Number](sensitive-information-type-entity-definitions.md#hungary-drivers-license-number)</br> - [Ireland Driver's License Number](sensitive-information-type-entity-definitions.md#ireland-drivers-license-number)</br> - [Italy Driver's License Number](sensitive-information-type-entity-definitions.md#italy-drivers-license-number)</br> - [Latvia Driver's License Number](sensitive-information-type-entity-definitions.md#latvia-drivers-license-number)</br> - [Lithuania Driver's License Number](sensitive-information-type-entity-definitions.md#lithuania-drivers-license-number)</br> - [Luxemburg Driver's License Number](sensitive-information-type-entity-definitions.md#luxemburg-drivers-license-number)</br> - [Malta Driver's License Number](sensitive-information-type-entity-definitions.md#malta-drivers-license-number)</br> - [Netherlands Driver's License Number](sensitive-information-type-entity-definitions.md#netherlands-drivers-license-number)</br> - [Poland Driver's License Number](sensitive-information-type-entity-definitions.md#poland-drivers-license-number)</br> - [Portugal Driver's License Number](sensitive-information-type-entity-definitions.md#portugal-drivers-license-number)</br> - [Romania Driver's License Number](sensitive-information-type-entity-definitions.md#romania-drivers-license-number)</br> - [Slovakia Driver's License Number](sensitive-information-type-entity-definitions.md#slovakia-drivers-license-number)</br> - [Slovenia Driver's License Number](sensitive-information-type-entity-definitions.md#slovenia-drivers-license-number)</br> - [Spain Driver's License Number](sensitive-information-type-entity-definitions.md#spain-drivers-license-number)</br> - [Sweden Driver's License Number](sensitive-information-type-entity-definitions.md#sweden-drivers-license-number)</br> - [Austria Passport Number](sensitive-information-type-entity-definitions.md#austria-passport-number)</br> - [Belgium Passport Number](sensitive-information-type-entity-definitions.md#belgium-passport-number)</br> - [Bulgaria Passport Number](sensitive-information-type-entity-definitions.md#bulgaria-passport-number)</br> - [Croatia Passport Number](sensitive-information-type-entity-definitions.md#croatia-passport-number)</br> - [Cyprus Passport Number](sensitive-information-type-entity-definitions.md#cyprus-passport-number)</br> - [Czech Republic Passport Number](sensitive-information-type-entity-definitions.md#czech-passport-number)</br> - [Denmark Passport Number](sensitive-information-type-entity-definitions.md#denmark-passport-number)</br> - [Estonia Passport Number](sensitive-information-type-entity-definitions.md#estonia-passport-number)</br> - [Finland Passport Number](sensitive-information-type-entity-definitions.md#finland-passport-number)</br> - [France Passport Number](sensitive-information-type-entity-definitions.md#france-passport-number)</br> - [German Passport Number](sensitive-information-type-entity-definitions.md#germany-passport-number)</br> - [Greece Passport Number](sensitive-information-type-entity-definitions.md#greece-passport-number)</br> - [Hungary Passport Number](sensitive-information-type-entity-definitions.md#hungary-passport-number)</br> - [Ireland Passport Number](sensitive-information-type-entity-definitions.md#ireland-passport-number)</br> - [Italy Passport Number](sensitive-information-type-entity-definitions.md#italy-passport-number)</br> - [Latvia Passport Number](sensitive-information-type-entity-definitions.md#latvia-passport-number)</br> - [Lithuania Passport Number](sensitive-information-type-entity-definitions.md#lithuania-passport-number)</br> - [Luxemburg Passport Number](sensitive-information-type-entity-definitions.md#luxemburg-passport-number)</br> - [Malta Passport Number](sensitive-information-type-entity-definitions.md#malta-passport-number)</br> - [Netherlands Passport Number](sensitive-information-type-entity-definitions.md#netherlands-passport-number)</br> - [Poland Passport](sensitive-information-type-entity-definitions.md#poland-passport-number)</br> - [Portugal Passport Number](sensitive-information-type-entity-definitions.md#portugal-passport-number)</br> - [Romania Passport Number](sensitive-information-type-entity-definitions.md#romania-passport-number)</br> - [Slovakia Passport Number](sensitive-information-type-entity-definitions.md#slovakia-passport-number)</br> - [Slovenia Passport Number](sensitive-information-type-entity-definitions.md#slovenia-passport-number)</br> - [Spain Passport Number](sensitive-information-type-entity-definitions.md#spain-passport-number)</br> - [Sweden Passport Number](sensitive-information-type-entity-definitions.md#sweden-passport-number)</br> - [EU Debit Card Number](sensitive-information-type-entity-definitions.md#eu-debit-card-number)</br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names)|
|Privacy| General Data Protection Regulation (GDPR)|- [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number) </br> - [EU driver's license number](sensitive-information-type-entity-definitions.md#eu-drivers-license-number) </br> - [EU national identification number](sensitive-information-type-entity-definitions.md#eu-national-identification-number)</br> - [EU passport number](sensitive-information-type-entity-definitions.md#eu-passport-number) </br> - [EU social security number or equivalent identification](sensitive-information-type-entity-definitions.md#eu-social-security-number-or-equivalent-identification)</br> - [EU Tax identification number](sensitive-information-type-entity-definitions.md#eu-tax-identification-number)|
|Privacy| Germany Personally Identifiable Information (PII) Data|- [Germany driver's license number](sensitive-information-type-entity-definitions.md#germany-drivers-license-number) </br> - [Germany passport number](sensitive-information-type-entity-definitions.md#germany-passport-number)| 
|Privacy| Israel Personally Identifiable Information (PII) Data|- [Israel national identification number](sensitive-information-type-entity-definitions.md#israel-national-identification-number)| 
|Privacy| Israel Protection of Privacy|- [Israel national identification number](sensitive-information-type-entity-definitions.md#israel-national-identification-number)</br> - [Israel bank account number](sensitive-information-type-entity-definitions.md#israel-bank-account-number)|
|Privacy| Japan Personally Identifiable Information (PII) Data enhanced|- [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin)</br> - [Japan My Number - Personal](sensitive-information-type-entity-definitions.md#japan-my-number---personal)</br> - [Japan passport number](sensitive-information-type-entity-definitions.md#japan-passport-number)</br> - [Japan driver's license number](sensitive-information-type-entity-definitions.md#japan-drivers-license-number)</br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names)</br> - [Japan Physical Addresses](sensitive-information-type-entity-definitions.md#all-physical-addresses)|
|Privacy| Japan Personally Identifiable Information (PII) Data|- [Japan resident registration number](sensitive-information-type-entity-definitions.md#japan-resident-registration-number) </br> - [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin)|
|Privacy| Japan Protection of Personal Information Enhanced|- [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin) </br> - [Japan My Number - Personal](sensitive-information-type-entity-definitions.md#japan-my-number---personal)</br> - [Japan passport number](sensitive-information-type-entity-definitions.md#japan-passport-number) </br> - [Japan driver's license number](sensitive-information-type-entity-definitions.md#japan-drivers-license-number)</br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names)</br> - [Japan Physical Addresses](sensitive-information-type-entity-definitions.md#all-physical-addresses)|
|Privacy| Japan Protection of Personal Information|- [Japan resident registration number](sensitive-information-type-entity-definitions.md#japan-resident-registration-number)</br> - [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin)|
|Privacy| Saudi Arabia Personally Identifiable (PII) Data|- [Saudi Arabia National ID](sensitive-information-type-entity-definitions.md#saudi-arabia-national-id)|
|Privacy| U.K. Data Protection Act|- [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino) </br> - [U.S./U.K. passport number](sensitive-information-type-entity-definitions.md#usuk-passport-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Privacy| U.K. Privacy and Electronic Communications Regulations|- [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Privacy| U.K. Personally Identifiable Information (PII) Data|- [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino) </br> - [U.S./U.K. passport number](sensitive-information-type-entity-definitions.md#usuk-passport-number)|
|Privacy| U.K. Personal Information Online Code of Practice (PIOCP)|- [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino) </br> - [U.K. national health service number](sensitive-information-type-entity-definitions.md#uk-national-health-service-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Privacy| U.S Patriot Act Enhanced|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names)</br> - [U.S. Physical Addresses](sensitive-information-type-entity-definitions.md#us-physical-addresses)|
|Privacy| U.S. Patriot Act|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|
|Privacy| U.S. Personally Identifiable Information (PII) Data Enhanced|- [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [U.S./U.K. passport number](sensitive-information-type-entity-definitions.md#usuk-passport-number)</br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names)</br> - [U.S. Physical Addresses](sensitive-information-type-entity-definitions.md#us-physical-addresses)|
|Privacy| U.S. Personally Identifiable Information (PII) Data|- [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [U.S./U.K. passport number](sensitive-information-type-entity-definitions.md#usuk-passport-number)|
|Privacy| U.S. State Breach Notification Laws Enhanced|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> -[U.S. driver's license number](sensitive-information-type-entity-definitions.md#us-drivers-license-number) </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [All Full Names](sensitive-information-type-entity-definitions.md#all-full-names) </br> - [U.S./U.K. passport number](sensitive-information-type-entity-definitions.md#usuk-passport-number)</br> - [All Medical Terms And Conditions](sensitive-information-type-entity-definitions.md#all-medical-terms-and-conditions)|
|Privacy| U.S. State Breach Notification Laws|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> -[U.S. driver's license number](sensitive-information-type-entity-definitions.md#us-drivers-license-number) </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|
|Privacy| U.S. State Social Security Number Confidentiality Laws|- [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|

## Locations

A DLP policy can find and protect items that contain sensitive information across multiple locations.

|Location  |Include/Exclude scope  |Data state  |Additional pre-requisites |
|---------|---------|---------|---------|
|Exchange email online |distribution group | data-in-motion| No |
|SharePoint online sites   |sites       | data-at-rest </br> data-in-use | No|
|OneDrive for Business accounts| account or distribution group |data-at-rest </br> data-in-use|No|
|Teams chat and channel messages     | account or distribution group |data-in-motion </br> data-in-use |  No       |
|Microsoft Defender for Cloud Apps   | cloud app instance       |data-at-rest         | - [Use data loss prevention policies for non-Microsoft cloud apps](dlp-use-policies-non-microsoft-cloud-apps.md#use-data-loss-prevention-policies-for-non-microsoft-cloud-apps)        |
|Devices  |user or group         |data-at-rest </br>  data-in-use </br>  data-in-motion         |- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md) </br>- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md) </br>- [Configure device proxy and internet connection settings for Information Protection](device-onboarding-configure-proxy.md#configure-device-proxy-and-internet-connection-settings-for-information-protection) |
|On-premises repositories (file shares and SharePoint)    |repository         | data-at-rest         | - [Learn about the data loss prevention on-premises scanner](dlp-on-premises-scanner-learn.md) </br> - [Get started with the data loss prevention on-premises scanner](dlp-on-premises-scanner-get-started.md#get-started-with-the-data-loss-prevention-on-premises-scanner)         |
|PowerBI| workspaces | data-in-use | No|

If you choose to include specific distribution groups in Exchange, the DLP policy will be scoped only to the members of that group. Similarly excluding a distribution group will exclude all the members of that distribution group from policy evaluation. You can choose to scope a policy to the members of distribution lists, dynamic distribution groups, and security groups. A DLP policy can contain no more than 50 such inclusions and exclusions.

If you choose to include or exclude specific SharePoint sites or OneDrive accounts, a DLP policy can contain no more than 100 such inclusions and exclusions. Although this limit exists, you can exceed this limit by applying either an org-wide policy or a policy that applies to entire locations.

If you choose to include or exclude specific OneDrive accounts or groups, a DLP policy can contain no more than 100 user accounts or 50 groups as inclusion or exclusion.

### Location support for how content can be defined

DLP policies detect sensitive items by matching them to a sensitive information type (SIT), or to a sensitivity label, or a retention label. Each location supports different methods of defining sensitive content. When you combine locations in a policy, how the content can be defined can change from how it can be defined by a single location. 

> [!IMPORTANT]
> When you select multiple locations for a policy, a "no" value for a content definition category takes precedence over "yes" value. For example, when you select SharePoint sites only, the policy will support detecting sensitive items by one or more of SIT, by sensitivity label, or by retention label. But, when you select SharePoint sites ***and*** Teams chat and channel messages locations, the policy will only support detecting sensitive items by SIT.

|Location| Content can be defined by SIT| Content can be defined sensitivity label| Content can be defined by retention label|
|---------|---------|---------|---------|
|Exchange email online|Yes| Yes| No|
|SharePoint online sites| Yes| Yes| Yes|
|OneDrive for Business accounts| Yes| Yes| Yes|
|Teams Chat and Channel messages | Yes| No| No|
|Devices |Yes | Yes|  No|
|Microsoft Defender for Cloud Apps | Yes| Yes| Yes|
|On-Premises repositories| Yes| Yes| No|
|PowerBI|Yes | Yes| No|

> [!NOTE]
> DLP supports detecting sensitivity labels on emails and attachments See, [Use sensitivity labels as conditions in DLP policies](dlp-sensitivity-label-as-condition.md#use-sensitivity-labels-as-conditions-in-dlp-policies).

## Rules

<!--This section introduces the classifications of content that, when detected, can be protected. Link out to [Learn about sensitive information types]() and [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md#sensitive-information-type-entity-definitions) as well as labels (cross referenced by supporting workload). It will touch on the purpose of multiple conditions, confidence levels (link out to [more on confidence levels](sensitive-information-type-learn-about.md#more-on-confidence-levels)) and confidence levels video. How to use the confidence level to change the behavior of a policy in conjunction with the instance count.  eg. if you want your policy to trigger when it encounters situation DEF, set your conditions like HIJ.-->
<!--
- What is a rule in the context of a Policy?
- when and why should I have more than one rule?
- The purpose of rule groups
- How do I tune the behavior of a Policy through the tuning of rules
- what's in a rule-->

Rules are the business logic of DLP policies. They consist of:

- [**Conditions**](#conditions) that when matched, trigger the policy
- [**Exceptions**](#exceptions) to the conditions
- [**Actions**](#actions) to take when the policy is triggered
- [**User notifications**](#user-notifications-and-policy-tips) to inform your users when they are doing something that triggers a policy and help educate them on how your org wants sensitive information treated
- [**User Overrides**](#user-overrides) when configured by an admin, allow users to selectively override a blocking action
- [**Incident Reports**](#incident-reports) that notify admins and other key stakeholders when a rule match occurs
- [**Additional Options**](#additional-options) which define the priority for rule evaluation and can stop further rule and policy processing.

 A policy contains one or more rules. Rules are executed sequentially, starting with the highest-priority rule in each policy.

### The priority by which rules are processed

#### Hosted service workloads

For the hosted service workloads, like Exchange Online, SharePoint Online and OneDrive for Business, each rule is assigned a priority in the order in which it's created. That means, the rule created first has first priority, the rule created second has second priority, and so on. 
  
![Rules in priority order](../media/dlp-rules-in-priority-order.png)

When content is evaluated against rules, the rules are processed in priority order. If content matches multiple rules, the first rule evaluated that has the *most* restrictive action is enforced. For example, if content matches all of the following rules, *Rule 3* is enforced because it's the highest priority, most restrictive rule:
  
- Rule 1: only notifies users
- Rule 2: notifies users, restricts access, and allows user overrides
- *Rule 3: notifies users, restricts access, and does not allow user overrides*
- Rule 4: restricts access

Rules 1, 2, and 4 would be evaluated, but not applied. In this example, matches for all of the rules are recorded in the audit logs and shown in the DLP reports, even though only the most restrictive rule is applied.

You can use a rule to meet a specific protection requirement, and then use a DLP policy to group together common protection requirements, such as all of the rules needed to comply with a specific regulation.
  
For example, you might have a DLP policy that helps you detect the presence of information subject to the Health Insurance Portability and Accountability Act (HIPAA). This DLP policy could help protect HIPAA data (the what) across all SharePoint Online sites and all OneDrive for Business sites (the where) by finding any document containing this sensitive information that's shared with people outside your organization (the conditions) and then blocking access to the document and sending a notification (the actions). These requirements are stored as individual rules and grouped together as a DLP policy to simplify management and reporting.
  
![Diagram shows that DLP policy contains locations and rules](../media/c006860c-2d00-42cb-aaa4-5b5638d139f7.png)

#### For endpoints

Priority for rules on endpoints is also assigned according to the order in which it's created. That means, the rule created first has first priority, the rule created second has second priority, and so on. 

When a file on an endpoint matches multiple DLP policies, the first rule that's enabled with most restrictive enforcement on the [endpoint activities](endpoint-dlp-learn-about.md#endpoint-activities-you-can-monitor-and-take-action-on) is the one that gets enforced on the content. For example, if content matches all of the following rules, then rule 2 takes precedence over the other rules since its the most restrictive.

- Rule 1: only audits all activity 
- *Rule 2: blocks all activity*
- Rule 3: blocks all activity with option for end user to override

In the below example, Rule 1 takes precedence over the other matching rules since its the most restrictive.

- *Rule 1: blocks activity and does not allow user override*
- Rule 2: blocks activity and allows user overrides
- Rule 3: only audits all activity
- Rule 4: no enforcement

All the other rules are evaluated but their actions are not enforced. Audit logs will show the most restrictive rule applied on the file. If there is more than one rule that matches and they are equally restrictive, then policy and rule priority governs which rule would be applied on the file.

### Conditions

Conditions are inclusive and are where you define what you want the rule to look for and context in which those items are being used. They tell the rule &#8212; when you find an item that looks like *this* and is being used like *that* &#8212; it's a match and the rest of the actions in the policy should be taken on it. You can use conditions to assign different actions to different risk levels. For example, sensitive content shared internally might be lower risk and require fewer actions than sensitive content shared with people outside the organization.

> [!NOTE]
> Users who have non-guest accounts in a host organization's Active Directory or Azure Active Directory tenant are considered as people inside the organization. 

#### Content contains

 All locations support the **Content contains** contains condition. You can select multiple instances of each content type and further refine the conditions by using the **Any of these** (logical OR) or **All of these** (logical AND) operators:

- [sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [sensitivity labels](sensitivity-labels.md)
- [retention labels](retention.md#using-a-retention-label-as-a-condition-in-a-dlp-policy)

depending on the [location(s)](#location-support-for-how-content-can-be-defined) you choose to apply the policy to. 

The rule will only look for the presence of any **sensitivity labels** and **retention labels** you pick. 

SITs have a pre-defined [**confidence level**](https://www.microsoft.com/videoplayer/embed/RE4Hx60) which you can alter if needed. For more information, see [More on confidence levels](sensitive-information-type-learn-about.md#more-on-confidence-levels). 

> [!IMPORTANT]
> SITs have two different ways of defining the max unique instance count parameters. To learn more, see [Instance count supported values for SIT](create-a-custom-sensitive-information-type.md#instance-count-supported-values-for-sit).

#### Condition context

The available context options change depending on which location you choose. If you select multiple locations, only the conditions that the locations have in common are available.

##### Conditions Exchange supports

- Content contains
- Content is shared from Microsoft 365
- Content is received from
- Sender IP address is
- Has sender overridden the policy tip
- Sender is
- Sender domain is
- Sender address contains words
- Sender address contains patterns
- Sender AD Attribute contains words or phrases
- Sender AD Attribute matches patterns
- Sender is a member of
- Any email attachment's content could not be scanned
- Any email attachment's content didn't complete scanning
- Attachment is password protected
- File extension is
- Recipient is member of
- Recipient domain is
- Recipient is
- Recipient address contains words
- Recipient address matches patterns
- Recipient AD Attribute contains words or phrases
- Recipient AD Attribute matches patterns
- Document name contains words or phrases
- Document name matches patterns
- Document property is
- Document size equals or is greater than
- Document content contains words or phrases
- Document content matches patterns
- Subject contains words or phrases
- Subject matches patterns
- Subject or Body contains words or phrases
- Subject or body matches patterns
- Content character set contains words
- Header contains words or phrases
- Header matches patterns
- Message size equals or is greater than
- Message type is
- Message importance is

##### Conditions SharePoint supports
 
- Content contains
- Content is shared from Microsoft 365
- Document created by
- Document created by member of
- Document name contains words or phrases
- Document name matches patterns
- Document size over
- Document property is
- File extension is

##### Conditions OneDrive accounts supports

- Content contains
- Content is shared from Microsoft 365
- Document created by
- Document created by member of
- Document name contains words or phrases
- Document name matches patterns
- Document size over
- Document property is
- File extension is

##### Conditions Teams chat and channel messages supports

- Content contains
- Content is shared from Microsoft 365
- Sender is 
- Sender domain is 
- Recipient domain is 
- Recipient is 

##### Conditions Devices supports

- Content contains
- See, [Endpoint activities you can monitor and take action on](endpoint-dlp-learn-about.md#endpoint-activities-you-can-monitor-and-take-action-on)

##### Conditions Microsoft Defender for Cloud Apps supports

- Content contains
- Content is shared from Microsoft 365

##### Conditions On-premises repositories supports

- Content contains
- File extension is
- Document property is

##### Conditions PowerBI supports

- Content contains

#### Condition groups

Sometimes you need a rule to only identify one thing, like all content that contains a U.S. Social Security Number, which is defined by a single SIT. But in many scenarios, where the types of items you are trying to identify are more complex and therefore harder to define, more flexibility in defining conditions is required.

For example, to identify content subject to the U.S. Health Insurance Act (HIPAA), you need to look for:
  
- Content that contains specific types of sensitive information, such as a U.S. Social Security Number or Drug Enforcement Agency (DEA) Number.
    
    AND
    
- Content that's more difficult to identify, such as communications about a patient's care or descriptions of medical services provided. Identifying this content requires matching keywords from large keyword lists, such as the International Classification of Diseases (ICD-9-CM or ICD-10-CM).
    
You can identify this type of data by grouping conditions and using logical operators (AND, OR) between the groups.
    
For the **U.S. Health Insurance Act (HIPPA)**, conditions are grouped like this:

![HIPPA policy conditions](../media/dlp-rules-condition-groups-booleans.png)

The first group contains the SITs that identify and individual and the second group contains the SITs that identify medical diagnosis.

### Exceptions

In rules, exceptions define conditions that are used to exclude an item from the policy. Logically, exclusive conditions that are evaluated after the inclusive conditions and context. They tell the rule &#8212; when you find an item that looks like *this* and is being used like *that* it's a match and the rest of the actions in the policy should be taken on it ***except if***... &#8212; 

For example, keeping with the HIPPA policy, we could modify the rule to exclude any item that contains a Belgium drivers license number, like this:

![HIPPA policy with exclusions](../media/dlp-rule-exceptions.png)

The exceptions conditions that are supported by location are identical to all the inclusion conditions with the only difference being the prepending of "Except if" to each supported condition. If a rule contains only exceptions, it will apply to all emails or files that do not meet the exclusion criteria.

Just as all locations support the inclusive condition:

- Content contains

the exception would be:

- **Except if** content contains 

### Actions 

Any item that makes it through the inclusive ***conditions*** and exclusive ***exceptions*** filters will have any ***actions*** that are defined in the rule applied to it. You'll have to configure the required options to support the action. For example, if you select Exchange with the **Restrict access or encrypt the content in Microsoft 365 locations** action you need to choose from these options:

- Block users from accessing shared SharePoint, OneDrive, and Teams content
    - Block everyone. Only the content owner, last modifier, and site admin will continue to have access
    - Block only people from outside your organization. Users inside your organization will continue to have access.
- Encrypt email messages (applies only to content in Exchange)

The actions that are available in a rule are dependent on the locations that have been selected. If you select only one location for the policy to be applied to, the available actions are listed below.

> [!IMPORTANT]
> For SharePoint Online and OneDrive for Business locations documents will be proactively blocked right after detection of sensitive information, irrespective of whether the document is shared or not, for all external users, while internal users will continue to have access to the document.

#### Exchange location actions

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
- Modify Email Subject
- Add HTML Disclaimer

#### SharePoint sites location actions

- Restrict access or encrypt the content in Microsoft 365 locations

#### OneDrive account location actions

- Restrict access or encrypt the content in Microsoft 365 locations

#### Teams Chat and Channel Messages actions

- Restrict access or encrypt the content in Microsoft 365 locations

#### Devices actions

- Audit or restrict activities on Windows devices

To use these settings, you have to configure options in **DLP settings** and in the policy in which you want to use them. See, [Restricted apps and app groups](dlp-configure-endpoint-settings.md#restricted-apps-and-app-groups) for more information.

The devices location provides many subactivities (conditions) and actions. To learn more, see [Endpoint activities you can monitor and take action on](endpoint-dlp-learn-about.md#endpoint-activities-you-can-monitor-and-take-action-on).

When you select **Audit or restrict activities on Windows devices**, you can restrict the user activities by service domain or browser, and scope the actions that DLP takes by:

- All apps
- By a list of restricted apps that you define
- A restricted app group (preview) that you define.

##### Service domain and browser activities

When you configure the **Allow/Block cloud service domains** and the **Unallowed browsers** list (see [Browser and domain restrictions to sensitive data](dlp-configure-endpoint-settings.md#browser-and-domain-restrictions-to-sensitive-data)) and a user attempts to upload a protected file to a cloud service domain or access it from an unallowed browser, you can configure the policy action to `Audit only`, `Block with override`, or `Block` the activity.

##### File activities for all apps

With the **File activities for all apps** option, you select either **Don't restrict file activities** or **Apply restrictions to specific activities**. When you select to apply restrictions to specific activities, the actions that you select here are applied when a user has accessed a DLP protected item. You can tell DLP to `Audit only`, `Block with override`, `Block` (the actions) on these user activities:

- **Copy to clipboard**
- **Copy to a USB removable drive** 
- **Copy to a network share**
- **Print**
- **Copy or move using an unallowed Bluetooth app**
- **Remote desktop services**


##### Restricted app activities  

Previously called Unallowed apps, you define a list of apps in Endpoint DLP settings that you want to place restrictions on. When a user attempts to access a DLP protected file using an app that is on the list, you can either `Audit only`, `Block with override`, or `Block` the activity. DLP actions defined in **Restricted app activities** are overridden if the app is a member of restricted app group. Then the actions defined in the restricted app group are applied.

##### File activities for apps in restricted app groups (preview)

You define your restricted app groups in Endpoint DLP settings and add restricted app groups to your policies. When you add a restricted app group to a policy, you must select one of these options:

- Don't restrict file activity
- Apply restrictions to all activity
- Apply restrictions to specific activity

When you select either of the *Apply restrictions* options, and a user attempts to access a DLP protected file using an app that is in the restricted app group, you can either `Audit only`, `Block with override`, or `Block` by activity. DLP actions that you define here override actions defined in **Restricted app activities** and **File activities for all apps** for the app.

See, [Restricted apps and app groups](dlp-configure-endpoint-settings.md#restricted-apps-and-app-groups) for more information. 

#### Microsoft Defender for Cloud Apps actions

- Restrict access or encrypt the content in Microsoft 365 locations
- Restrict Third Party Apps

#### On-premises repositories actions

- Restrict access or remove on-premises files

#### PowerBI actions

- Notify users with email and policy tips
- Send alerts to Administrator

#### Actions available when you combine locations

If you select Exchange and any other single location for the policy to be applied to, the

- Restrict access or encrypt the content in Microsoft 365 locations

and

- all actions for the non-Exchange location

actions will be available.

If you select two or more non-Exchange locations for the policy to be applied to, the

- Restrict access or encrypt the content in Microsoft 365 locations

AND

- all actions for non-Exchange locations 

actions will be available.

For example, if you select Exchange and Devices as locations, these actions will be available:

- Restrict access or encrypt the content in Microsoft 365 locations
- Audit or restrict activities on Windows devices

If you select Devices and Microsoft Defender for Cloud Apps, these actions will be available:

- Restrict access or encrypt the content in Microsoft 365 locations
- Audit or restrict activities on Windows devices
- Restrict Third Party Apps

Whether an action takes effect or not depends on how you configure the mode of the policy. You can choose to run the policy in test mode with or without showing policy tip by selecting the **Test it out first** option. You choose to run the policy as soon as an hour after it is created by selecting the **Turn it on right away** option, or you can choose to just save it and come back to it later by selecting the **Keep it off** option. 


<!-- This section needs to explain that the actions available depend on the locations selected AND that the observed behavior of a policy is produced through an interaction of the configured actions AND the configured status (off, test, apply) of a policy. It will detail the purpose of each of the available actions and the location/desired outcome interaction and provide examples eg. how to use the Restrict Third Party apps in the context of a policy that is applied to endpoints so that users can't use a upload content to a third party site or the interaction of on-premises scanner with restrict access or remove on-premises files.  Also what happens when I select multiple locations? provide abundant examples for most common scenarios-->


### User notifications and policy tips

<!--This section introduces the business need for user notifications, what they are, their benefit, how to use them, how to customize them, and links out to 

- https://docs.microsoft.com/en-us/microsoft-365/compliance/use-notifications-and-policy-tips?view=o365-worldwide
- https://docs.microsoft.com/en-us/microsoft-365/compliance/dlp-policy-tips-reference?view=o365-worldwide

for where they are used/expected behavior-->

<!--You can use notifications and overrides to educate your users about DLP policies and help them remain compliant without blocking their work. For example, if a user tries to share a document containing sensitive information, a DLP policy can both send them an email notification and show them a policy tip in the context of the document library that allows them to override the policy if they have a business justification.-->

When a user attempts an action on a sensitive item in a context that meets the conditions and exceptions of a rule, you can let them know about it through user notification emails and in context policy tip popups. These notifications are useful because they increase awareness and help educate people about your organization's DLP policies.

For example, content like an Excel workbook on a OneDrive for Business site that contains personally identifiable information (PII) and is shared with a guest.

![Message bar shows policy tip in Excel 2016](../media/7002ff54-1656-4a6c-993f-37427d6508c8.png)

> [!NOTE]
> Notification emails are sent unprotected.

You can also give people the option to [override the policy](#user-overrides), so that they're not blocked if they have a valid business need or if the policy is detecting a false positive.

The user notifications and policy tips configuration options vary depending on the monitoring locations you selected. If you selected:

- Exchange
- SharePoint
- OneDrive
- Teams Chat and Channel
- Defender for Cloud Apps


You can enable/disable user notifications for various Microsoft apps, see [Data Loss Prevention policy tips reference](dlp-policy-tips-reference.md#data-loss-prevention-policy-tips-reference)

- You can enable/disable **Notifying users in Office 365 service** with a policy tip.
    - email notifications to the user who sent, shared, or last modified the content
    OR
    - notify specific people

and customize the email text, subject, and the policy tip text.

![User notification and policy tip configuration options that are available for Exchange, SharePoint, OneDrive, Teams Chat and Channel, and Defender for Cloud Apps](../media/dlp-user-notification-non-devices.png)

If you selected Devices only, you will get all the same options that are available for Exchange, SharePoint, OneDrive, Teams Chat and Channel and Defender for Cloud Apps plus the option to customize the notification title and content that appears on the Windows 10 device.

![User notification and policy tip configuration options that are available for Devices](../media/dlp-user-notification-devices.png)  

You can customize the title and body of text with using these parameters. The body text supports these:

|Common name  |Parameter  |Example
|---------|---------|---------|
|file name     |%%FileName%% | Contoso doc 1 |
|process name     |%%ProcessName%% | Word |
|policy name     |%%PolicyName%%| Contoso highly confidential |
|action | %%AppliedActions%% | pasting document content from the clipboard to another app |

**%%AppliedActions%%** substitutes these values into the message body:


|action common name |value substituted in for %%AppliedActions%% parameter |
|---------|---------|
|copy to removeable storage    |*writing to removable storage*         |
|copy to network share     |*writing to a network share*         |
|print     |*printing*         |
|paste from clipboard  |*pasting from the clipboard*         |
|copy via bluetooth   |*transferring via Bluetooth*         |
|open with an unallowed app     |*opening with this app*         |
|copy to a remote desktop (RDP)     |*transferring to remote desktop*         |
|uploading to an unallowed website     |*uploading to this site*         |
|accessing the item via an unallowed browser     |*opening with this browser*         |

Using this customized text

*%%AppliedActions%% File name %%FileName%% via %%ProcessName%% is not allowed by your organization. Click  'Allow' if you want to bypass the policy %%PolicyName%%* 

produces this text in the customized notification:

*pasting from the clipboard File Name: Contoso doc 1 via WINWORD.EXE is not allowed by your organization. Click 'Allow' button if you want to bypass the policy Contoso highly confidential*
 

> [!NOTE]
> User notifications and policy tips are not available for the On-premises location

> [!NOTE]
> Only the policy tip from the highest priority, most restrictive rule will be shown. For example, a policy tip from a rule that blocks access to content will be shown over a policy tip from a rule that simply sends a notification. This prevents people from seeing a cascade of policy tips.

To learn more about user notification and policy tip configuration and use, including how to customize the notification and tip text, see 
- [Send email notifications and show policy tips for DLP policies](use-notifications-and-policy-tips.md#send-email-notifications-and-show-policy-tips-for-dlp-policies).
  
<!--The email can notify the person who sent, shared, or last modified the content and, for site content, the primary site collection administrator and document owner. In addition, you can add or remove whomever you choose from the email notification.
  
In addition to sending an email notification, a user notification displays a policy tip:
  
- In Outlook and Outlook on the web.
    
- For the document on a SharePoint Online or OneDrive for Business site.
    
- In Excel, PowerPoint, and Word, when the document is stored on a site included in a DLP policy.
    
The email notification and policy tip explain why content conflicts with a DLP policy. If you choose, the email notification and policy tip can allow users to override a rule by reporting a false positive or providing a business justification. This can help you educate users about your DLP policies and enforce them without preventing people from doing their work. Information about overrides and false positives is also logged for reporting (see below about the DLP reports) and included in the incident reports (next section), so that the compliance officer can regularly review this information.
  
Here's what a policy tip looks like in a OneDrive for Business account.
  
![Policy tip for a document in a OneDrive account](../media/f9834d35-94f0-4511-8555-0fe69855ce6d.png)

 To learn more about user notifications and policy tips in DLP policies, see [Use notifications and policy tips](use-notifications-and-policy-tips.md).

> [!NOTE]
> The default behavior of a DLP policy, when there is no alert configured, is not to alert or trigger. This applies only to default information types. For custom information types, the system will alert even if there is no action defined in the policy.
-->

### User overrides

The intent of **User overrides** is to give users a way to bypass, with justification, DLP policy blocking actions on sensitive items in Exchange, SharePoint, OneDrive, or Teams so that they can continue their work. User overrides are enabled only when **Notify users in Office 365 services with a policy tip** is enabled, so user overrides go hand-in-hand with Notifications and Policy tips. 

![User override options for a DLP policy](../media/dlp-user-overrides.png)

> [!NOTE]
> User overrides are not available for the On-premises repositories location.

Typically, user overrides are useful when your organization is first rolling out a policy. The feedback that you get from any override justifications and identifying false positives helps in tuning the policy. 

<!-- This section covers what they are and how to best use them in conjunction with Test/Turn it on right away and link out to where to find the business justification for the override (DLP reports?  https://docs.microsoft.com/en-us/microsoft-365/compliance/view-the-dlp-reports?view=o365-worldwide)  https://docs.microsoft.com/en-us/microsoft-365/compliance/view-the-dlp-reports?view=o365-worldwide#view-the-justification-submitted-by-a-user-for-an-override-->

- If the policy tips in the most restrictive rule allow people to override the rule, then overriding this rule also overrides any other rules that the content matched.
 
<!--![User notifications and user overrides sections of DLP rule editor](../media/37b560d4-6e4e-489e-9134-d4b9daf60296.png)-->
 
To learn more about user overrides, see:

- [View the justification submitted by a user for an override](view-the-dlp-reports.md#view-the-justification-submitted-by-a-user-for-an-override)

### Incident reports

<!--DLP interacts with other M365 information protection services, like IR. Link this to a process outline for triaging/managing/resolving DLP incidents


https://docs.microsoft.com/en-us/microsoft-365/compliance/view-the-dlp-reports?view=o365-worldwide
https://docs.microsoft.com/en-us/microsoft-365/compliance/dlp-configure-view-alerts-policies?view=o365-worldwide-->

When a rule is matched, you can send an incident report to your compliance officer (or any people you choose) with details of the event. The report includes information about the item that was matched, the actual content that matched the rule, and the name of the person who last modified the content. For email messages, the report also includes as an attachment the original message that matches a DLP policy.

DLP feeds incident information to other Microsoft Purview information protection services, like [insider risk management](insider-risk-management.md). In order to get incident information to insider risk management, you must set the **Incident reports** severity level to **High**.

<!--![Page for configuring incident reports](../media/31c6da0e-981c-415e-91bf-d94ca391a893.png)-->

Alerts can be sent every time an activity matches a rule, which can be noisy or they can be aggregated into fewer alerts based on number of matches or volume of items over a set period of time.

![send an alert every time a rule matches or aggregate over time into fewer reports](../media/dlp-incident-reports-aggregation.png)

DLP scans email differently than it does SharePoint Online or OneDrive for Business items. In SharePoint Online and OneDrive for Business, DLP scans existing items as well as new ones and generates an incident report whenever a match is found. In Exchange Online, DLP only scans new email messages and generates a report if there is a policy match. DLP ***does not*** scan or match previously existing email items that are stored in a mailbox or archive.

### Additional options

If you have multiple rules in a policy, you can use the **Additional options** to control further rule processing if there is a match to the rule you are editing as well as setting the priority for evaluation of the rule.

## See also

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md#create-a-dlp-policy-from-a-template)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md#create-test-and-tune-a-dlp-policy)
