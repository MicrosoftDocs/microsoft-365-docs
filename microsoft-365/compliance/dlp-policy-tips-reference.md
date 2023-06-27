---
title: "Data Loss Prevention policy tips reference"
f1.keywords: CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 05/16/2023
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- SPO160
- MET150
ms.assetid: 6501b5ef-6bf7-43df-b60d-f65781847d6c
ms.collection:
- tier1
- purview-compliance
- SPO_Content
recommendations: false
description: "Learn how to add a policy tip to a data loss prevention (DLP) policy notify a user that they're working with content that conflicts with a DLP policy."
ms.custom: seo-marvel-apr2021
---
# Data Loss Prevention policy tips reference

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

<!--## Outlook 2013 and later supports showing policy tips for only some conditions

Currently, Outlook 2013 and later support showing policy tips for policies that contain these conditions:

For E3 licensed users
- Content contains Sensitive information types (preconfigured SITs and custom SITs)
- Content is shared

For E5 licensed users (preview)
- Content contains Sensitive information types
- Content contains Sensitivity labels (works for email labels, Office docs and PDF files)
- Content is shared
- Sender is
- Sender is member of
- Sender domain is
- Recipient is
- Recipient is a member of
- Recipient domain is
- Subject contains words

All the conditions work for emails authored in the Outlook client app, where they'll match content and enforce protective actions on content. However, showing policy tips to users isn't supported for any conditions that are used apart from the ones mentioned above.
-->
<!--
THIS SECTION WILL BE MOVED TO dlp-ol365-win32-policy-tips.md

## Outlook 2013 and later and Office apps on Desktop support showing policy tips for only some sensitive information types

For E3 licensed users, DLP policy tips are shown in Outlook 2013 and later for pre-configured SITs and custom SITs.

For E5 licensed users, DLP policy tips will be shown in Outlook 2013 and later for policies that use:

- [Preconfigured sensitive information types](sensitive-information-type-entity-definitions.md) (SITs)
- Custom SITs
- [Named entity SITs](named-entities-learn.md)
- [Exact data match (EDM) SITs](sit-get-started-exact-data-match-based-sits-overview.md)
- [Credential scanning SITs](sit-defn-all-creds.md)
- [Trainable classifiers definitions](classifier-tc-definitions.md)

> [!NOTE]
> Not all elements of custom sensitive information types are compatible with every version of Office. Entity elements for Custom SITs, such as Functions, may cause incompatibility. Office 2019 supports custom SITs that use Regular Expressions, Keyword Lists, and Keyword Dictionary only.

 -->

## Data Loss Prevention on endpoint devices supports policy tips for only some sensitive information types

These sensitive information types (SIT)s can be detected on endpoint devices:

- [ABA routing number](sit-defn-aba-routing.md)
- [Argentina national identity (DNI) number](sit-defn-argentina-national-identity-numbers.md)
- [Australia bank account number](sit-defn-australia-bank-account-number.md)
- [Australia medical account number](sit-defn-australia-medical-account-number.md)
- [Australia passport number](sit-defn-australia-passport-number.md)
- [Australia tax file number](sit-defn-australia-tax-file-number.md)
- [Australia business number](sit-defn-australia-business-number.md)
- [Australia Company Number](sit-defn-australia-company-number.md)
- [Austria Driver's License Number](sit-defn-austria-drivers-license-number.md)
- [Austria Identity Card](sit-defn-austria-identity-card.md)
- [Austria Passport Number](sit-defn-austria-passport-number.md)
- [Austria Social Security Number](sit-defn-austria-social-security-number.md)
- [Austria Tax Identification Number](sit-defn-austria-tax-identification-number.md)
- [Austria value added tax](sit-defn-austria-value-added-tax.md)
- [Azure DocumentDB auth key](sit-defn-azure-document-db-auth-key.md)
- [Azure IAAS database connection string and Azure SQL connection string](sit-defn-azure-iaas-database-connection-string-azure-sql-connection-string.md)
- [Azure IoT connection string](sit-defn-azure-iot-connection-string.md)
- [Azure publish setting password](sit-defn-azure-publish-setting-password.md)
- [Azure Redis cache connection string](sit-defn-azure-redis-cache-connection-string.md)
- [Azure SAS](sit-defn-azure-sas.md)
- [Azure service bus connection string](sit-defn-azure-service-bus-connection-string.md)
- [Azure storage account key](sit-defn-azure-storage-account-key.md)
- [Azure Storage account key (generic)](sit-defn-azure-storage-account-key-generic.md)
- [Belgium drivers license number](sit-defn-belgium-drivers-license-number.md)
- [Belgium National Number](sit-defn-belgium-national-number.md)
- [Belgium passport number](sit-defn-belgium-passport-number.md)
- [Belgium value added tax number](sit-defn-belgium-value-added-tax-number.md)
- [Brazil CPF number](sit-defn-brazil-cpf-number.md)
- [Brazil legal entity number (CNPJ)](sit-defn-brazil-legal-entity-number.md)
- [Brazil national identification card (RG)](sit-defn-brazil-national-identification-card.md)
- [Bulgaria drivers license number](sit-defn-bulgaria-drivers-license-number.md)
- [Bulgaria passport number](sit-defn-bulgaria-passport-number.md)
- [Bulgaria Uniform Civil Number](sit-defn-bulgaria-uniform-civil-number.md)
- [Canada bank account number](sit-defn-canada-bank-account-number.md)
- [Canada drivers license number](sit-defn-canada-drivers-license-number.md)
- [Canada health service number](sit-defn-canada-health-service-number.md)
- [Canada Passport Number](sit-defn-canada-passport-number.md)
- [Canada personal health identification number (PHIN)](sit-defn-canada-personal-health-identification-number.md)
- [Canada Social Insurance Number](sit-defn-canada-social-insurance-number.md)
- [Chile Identity Card Number](sit-defn-chile-identity-card-number.md)
- [China resident identity card (PRC) number](sit-defn-china-resident-identity-card-number.md)
- [Credit Card Number](sit-defn-credit-card-number.md)
- [Croatia Driver's License Number](sit-defn-croatia-drivers-license-number.md)
- [Croatia Identity Card Number](sit-defn-croatia-identity-card-number.md)
- [Croatia Passport Number](sit-defn-)
- [Croatia Personal Identification (OIB) Number](sit-defn-)
- [Azure Storage Account Shared Access Signature](sit-defn-)
- [General Symmetric Key](sit-defn-)
- [Cyprus Driver's License Number](sit-defn-)
- [Cyprus Identity Card](sit-defn-)
- [Cyprus Passport Number](sit-defn-)
- [Cyprus Tax Identification Number](sit-defn-)
- [Czech Driver's License Number](sit-defn-)
- [Czech Personal Identity Number](sit-defn-)
- [Czech Republic Passport Number](sit-defn-)
- [Denmark Driver's License Number](sit-defn-)
- [Denmark Passport Number](sit-defn-)
- [Denmark Personal Identification Number](sit-defn-)
- [Drug Enforcement Agency (DEA) Number](sit-defn-)
- [Estonia drivers license number](sit-defn-estonia-drivers-license-number.md#estonia-drivers-license-number)
- [Estonia Passport Number](sit-defn-)
- [Estonia Personal Identification Code](sit-defn-)
- [EU Debit Card Number](sit-defn-)
- [EU Driver's License Number](sit-defn-)
- [EU National Identification Number](sit-defn-)
- [EU Passport Number](sit-defn-)
- [EU Social Security Number (SSN) or Equivalent ID](sit-defn-)
- [EU Tax Identification Number (TIN)](sit-defn-)
- [Finland Driver's License Number](sit-defn-)
- [Finland European Health Insurance Number](sit-defn-)
- [Finland National ID](sit-defn-)
- [Finland Passport Number](sit-defn-)
- [France Driver's License Number](sit-defn-)
- [France Health Insurance Number](sit-defn-)
- [France National ID Card (CNI)](sit-defn-)
- [France Passport Number](sit-defn-)
- [France Social Security Number (INSEE)](sit-defn-)
- [France Tax Identification Number (numéro SPI.)](sit-defn-)
- [France Value Added Tax Number](sit-defn-)
- [German Driver's License Number](sit-defn-)
- [German Passport Number](sit-defn-)
- [Germany Identity Card Number](sit-defn-)
- [Germany Tax Identification Number](sit-defn-)
- [Germany Value Added Tax Number](sit-defn-)
- [Greece Driver's License Number](sit-defn-)
- [Greece National ID Card](sit-defn-)
- [Greece Passport Number](sit-defn-)
- [Greece Social Security Number (AMKA)](sit-defn-)
- [Greek Tax identification Number](sit-defn-)
- [Hong Kong Identity Card (HKID) Number](sit-defn-)
- [Hungarian Social Security Number (TAJ)](sit-defn-)
- [Hungarian Value Added Tax Number](sit-defn-)
- [Hungary Driver's License Number](sit-defn-)
- [Hungary Passport Number](sit-defn-)
- [Hungary Personal Identification Number](sit-defn-)
- [Hungary Tax identification Number](sit-defn-)
- [India Permanent Account Number (PAN)](sit-defn-)
- [India Unique Identification (Aadhaar) Number](sit-defn-)
- [Indonesia Identity Card (KTP) Number](sit-defn-)
- [International Banking Account Number (IBAN)](sit-defn-)
- [International Classification of Diseases (ICD-10-CM)](sit-defn-)
- [International Classification of Diseases (ICD-9-CM)](sit-defn-)
- [IP Address](sit-defn-)
- [Ireland Driver's License Number](sit-defn-)
- [Ireland Passport Number](sit-defn-)
- [Ireland Personal Public Service (PPS) Number](sit-defn-)
- [Israel Bank Account Number](sit-defn-)
- [Israel National ID](sit-defn-)
- [Italy Driver's License Number](sit-defn-)
- [Italy Fiscal Code](sit-defn-)
- [Italy Passport Number](sit-defn-)
- [Italy Value Added Tax Number](sit-defn-)
- [Japan Bank Account Number](sit-defn-)
- [Japan Driver's License Number](sit-defn-)
- [Japan Passport Number](sit-defn-)
- [Japan Resident Registration Number](sit-defn-)
- [Japan Social Insurance Number (SIN)](sit-defn-)
- [Japanese My Number Corporate](sit-defn-)
- [Japanese My Number Personal](sit-defn-)
- [Japanese Residence Card Number](sit-defn-)
- [Latvia Driver's License Number](sit-defn-)
- [Latvia Passport Number](sit-defn-)
- [Latvia Personal Code](sit-defn-)
- [Lithuania Driver's License Number](sit-defn-)
- [Lithuania Passport Number](sit-defn-)
- [Lithuania Personal Code](sit-defn-)
- [Luxemburg drivers license number](sit-defn-luxemburg-drivers-license-number.md)
- [Luxemburg national identification number (natural persons)](sit-defn-luxemburg-national-identification-number-natural-persons.md)
- [Luxemburg national identification number (non-natural persons)](sit-defn-luxemburg-national-identification-number-non-natural-persons.md)
- [Luxemburg passport number](sit-defn-luxemburg-passport-number.md)
- [Malaysia Identity Card Number](sit-defn-)
- [Malta Driver's License Number](sit-defn-)
- [Malta Identity Card Number](sit-defn-)
- [Malta Passport Number](sit-defn-)
- [Malta Tax ID Number](sit-defn-)
- [Netherlands Citizen's Service (BSN) Number](sit-defn-)
- [Netherlands Driver's License Number](sit-defn-)
- [Netherlands Passport Number](sit-defn-)
- [Netherlands Tax Identification Number](sit-defn-)
- [Netherlands Value Added Tax Number](sit-defn-)
- [New Zealand bank account Number](sit-defn-)
- [New Zealand Driver License Number](sit-defn-)
- [New Zealand Inland Revenue Number](sit-defn-)
- [New Zealand Ministry of Health Number](sit-defn-)
- [New Zealand Social Welfare Number](sit-defn-)
- [Norway Identity Number](sit-defn-)
- [Philippines Unified Multi-Purpose ID Number](sit-defn-)
- [Poland Driver's License Number](sit-defn-)
- [Poland Identity Card](sit-defn-)
- [Poland National ID (PESEL)](sit-defn-)
- [Poland Passport](sit-defn-)
- [Poland Tax Identification Number](sit-defn-)
- [Polish REGON Number](sit-defn-)
- [Portugal Citizen Card Number](sit-defn-)
- [Portugal Driver's License Number](sit-defn-)
- [Portugal Passport Number](sit-defn-)
- [Portugal Tax Identification Number](sit-defn-)
- [Romania Driver's License Number](sit-defn-)
- [Romania Passport Number](sit-defn-)
- [Romania Personal Numerical Code (CNP)](sit-defn-)
- [Russian Passport Number (Domestic)](sit-defn-)
- [Russian Passport Number (International)](sit-defn-)
- [Saudi Arabia National ID](sit-defn-)
- [Singapore national registration identity card (NRIC) number](sit-defn-singapore-national-registration-identity-card-number.md)
- [Slovakia Driver's License Number](sit-defn-)
- [Slovakia Passport Number](sit-defn-)
- [Slovakia Personal Number](sit-defn-)
- [Slovenia Driver's License Number](sit-defn-)
- [Slovenia Passport Number](sit-defn-)
- [Slovenia Tax Identification Number](sit-defn-)
- [Slovenia Unique Master Citizen Number](sit-defn-)
- [South Africa Identification Number](sit-defn-)
- [South Korea Resident Registration Number](sit-defn-)
- [Spain DNI](sit-defn-)
- [Spain Driver's License Number](sit-defn-)
- [Spain Passport Number](sit-defn-)
- [Spain Social Security Number (SSN)](sit-defn-)
- [Spain Tax Identification Number](sit-defn-)
- [SQL Server Connection String](sit-defn-)
- [Sweden Driver's License Number](sit-defn-)
- [Sweden National ID](sit-defn-)
- [Sweden Passport Number](sit-defn-)
- [Sweden Tax Identification Number](sit-defn-)
- [SWIFT Code](sit-defn-)
- [Swiss Social Security Number AHV](sit-defn-)
- [Taiwan National ID](sit-defn-)
- [Taiwan Passport Number](sit-defn-)
- [Taiwan Resident Certificate (ARC/TARC)](sit-defn-)
- [Thai Population Identification Code](sit-defn-)
- [Turkish National Identification number](sit-defn-)
- [U.K. Driver's License Number](sit-defn-)
- [U.K. Electoral Roll Number](sit-defn-)
- [U.K. National Health Service Number](sit-defn-)
- [U.K. National Insurance Number (NINO)](sit-defn-)
- [U.K. Unique Taxpayer Reference Number](sit-defn-)
- [U.S./U.K. passport number](sit-defn-us-uk-passport-number.md)
- [U.S. bank account number](sit-defn-us-bank-account-number.md)
- [U.S. drivers license number](sit-defn-us-drivers-license-number.md)
- [U.S. individual taxpayer identification number (ITIN)](sit-defn-us-individual-taxpayer-identification-number.md)
- [U.S. social security number (SSN)](sit-defn-us-social-security-number.md)
- [Ukraine passport domestic](sit-defn-ukraine-passport-domestic.md)
- [Ukraine passport international](sit-defn-ukraine-passport-international.md)

Custom sensitive information types  will also be detected in addition to the above out-of-the-box sensitive information types.

## Support Matrix for DLP policy tips across Microsoft apps

|**App and platform**|**DLP policy tip support**|**Sensitive information types supported**|**Conditions and actions supported**|**Comments**|
|:--|:--|:--|:--|:--|
|**Outlook On the Web**|:::image type="icon" source="../media/rightmrk.png" border="false":::|Subset, see [Sensitive information types that support policy tips in Outlook on the Web](dlp-owa-policy-tips.md#sensitive-information-types-that-support-policy-tips-in-outlook-on-the-web) |Subset, see [Conditions that support policy tips in Outlook on the Web](dlp-owa-policy-tips.md#conditions-that-support-policy-tips-in-outlook-on-the-web) and [Actions that support policy tips in Outlook on the Web](dlp-owa-policy-tips.md#actions-that-support-policy-tips-in-outlook-on-the-web)|For full details, see [Data loss prevention policy tip reference for Outlook on the Web](dlp-owa-policy-tips.md)|
|**Outlook for Microsoft 365 (ver. 2105 build 14026.20000 and semi-annual channel ver. 2102 build 13801.20862)**|:::image type="icon" source="../media/rightmrk.png" border="false":::|varies by version and license, see [Data loss prevention policy tip reference for Outlook for Microsoft 365](dlp-ol365-win32-policy-tips.md)|subset, see [Data loss prevention policy tip reference for Outlook for Microsoft 365](dlp-ol365-win32-policy-tips.md)|For full details, see [Data loss prevention policy tip reference for Outlook for Microsoft 365](dlp-ol365-win32-policy-tips.md)|
|**Outlook Mobile (iOS, Android)/Outlook Mac**|:::image type="icon" source="../media/crsmrk.png" border="false":::|none|none|DLP policy tips aren't supported on Outlook mobile|
|**Outlook Mac**|:::image type="icon" source="../media/crsmrk.png" border="false":::|none|none|DLP policy tips are not supported on Outlook for Mac|
|**SharePoint Online/OneDrive for Business Web client**|:::image type="icon" source="../media/rightmrk.png" border="false":::|all|all SPO/ODB predicates and actions in DLP||
|**SharePoint Win32/ OneDrive for Business Win32 client**|:::image type="icon" source="../media/crsmrk.png" border="false":::|none|none|DLP policy tips aren't supported on SharePoint or OneDrive desktop client apps|
|**Word, Excel, PowerPoint Web Client**|:::image type="icon" source="../media/rightmrk.png" border="false":::|all|all SPO/ODB predicates and actions in DLP|DLP policy tip is supported if the document is hosted on SPO or ODB web app and the DLP policy is already stamped.|
|**Word, Excel, PowerPoint Mobile Client**|:::image type="icon" source="../media/crsmrk.png" border="false":::|none|none|DLP policy tips aren't supported in mobile apps for Office.|
|**Teams Web/ Teams Desktop/ Teams Mobile/ Teams Mac**|:::image type="icon" source="../media/rightmrk.png" border="false":::|all|all Teams predicates in DLP policy|Policy tips will show when a message is flagged as “This message has been flagged. What can I do?” When clicking the link, the user can review the sensitive info types detected and override or report an issue if allowed by the admin. No policy tips are shown for files. When the recipient tries to access the document, they might get access denied if not allowed.|
|**Win32 Endpoint Devices**|:::image type="icon" source="../media/rightmrk.png" border="false":::|subset|all Endpoint DLP predicates and actions in DLP policy|See [Data Loss Prevention on Endpoint supports policy tips for only some sensitive information types](#data-loss-prevention-on-endpoint-devices-supports-policy-tips-for-only-some-sensitive-information-types)|
|**macOS devices**|default tips only|all|subset|Data loss prevention policies are enforceable on macOS devices. Custom policy tips aren't supported.|
|**3rd party cloud apps**|:::image type="icon" source="../media/crsmrk.png" border="false":::|none|none|Data Loss Prevention policy tips aren't supported on third party cloud apps|
|**On-prem**|:::image type="icon" source="../media/crsmrk.png" border="false":::|none|none||
|**Word, Excel, PowerPoint Win32 Client**|:::image type="icon" source="../media/crsmrk.png" border="false":::|subset|subset|See [Outlook 2013 and later and Office apps on Desktop support showing policy tips for only some sensitive information types](#outlook-2013-and-later-and-office-apps-on-desktop-support-showing-policy-tips-for-only-some-sensitive-information-types) for the list of sensitive information types supported</br></br>Policy tips for WXP client apps will work for documents stored on SharePoint Online or OneDrive for Business Sites for all DLP policies that have exactly the below or a subset of conditions or actions in the DLP policy:</br> <ul><li>Content contains sensitive information types</li><li>Access Scope (Content is shared internally/externally)</li><li>Notify User (policy tips/user notifications)</li><li>Block everyone</li><li>Incident reports</li></ul></br> If any other condition or action is present, the DLP policy tip for that policy won't appear in the desktop apps of Word, Excel or PowerPoint.</br>See [Policy tips in Excel, PowerPoint, and Word](use-notifications-and-policy-tips.md#policy-tips-in-excel-powerpoint-and-word) for more details|
|**Power BI**|:::image type="icon" source="../media/crsmrk.png" border="false":::|subset|subset|Data loss prevention policies in Power BI are in Public Preview. </br></br> Policy tips and admin alerts are supported. |
