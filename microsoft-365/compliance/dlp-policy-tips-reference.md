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
- Canada Driver's License Number
- Canada Health Service Number
- Canada Passport Number
- Canada Personal Health Identification Number (PHIN)
- Canada Social Insurance Number
- Chile Identity Card Number
- China Resident Identity Card (PRC) Number
- Credit Card Number
- Croatia Driver's License Number
- Croatia Identity Card Number
- Croatia National ID Card Number
- Croatia Passport Number
- Croatia Personal Identification (OIB) Number
- Azure Storage Account Shared Access Signature
- General Symmetric Key
- Cyprus Driver's License Number
- Cyprus Identity Card
- Cyprus Passport Number
- Cyprus Tax Identification Number
- Czech Driver's License Number
- Czech Personal Identity Number
- Czech Republic Passport Number
- Denmark Driver's License Number
- Denmark Passport Number
- Denmark Personal Identification Number
- Drug Enforcement Agency (DEA) Number
- [Estonia drivers license number](sit-defn-estonia-drivers-license-number.md#estonia-drivers-license-number)
- Estonia Passport Number
- Estonia Personal Identification Code
- EU Debit Card Number
- EU Driver's License Number
- EU National Identification Number
- EU Passport Number
- EU Social Security Number (SSN) or Equivalent ID
- EU Tax Identification Number (TIN)
- Finland Driver's License Number
- Finland European Health Insurance Number
- Finland National ID
- Finland Passport Number
- France Driver's License Number
- France Health Insurance Number
- France National ID Card (CNI)
- France Passport Number
- France Social Security Number (INSEE)
- France Tax Identification Number (numéro SPI.)
- France Value Added Tax Number
- German Driver's License Number
- German Passport Number
- Germany Identity Card Number
- Germany Tax Identification Number
- Germany Value Added Tax Number
- Greece Driver's License Number
- Greece National ID Card
- Greece Passport Number
- Greece Social Security Number (AMKA)
- Greek Tax identification Number
- Hong Kong Identity Card (HKID) Number
- Hungarian Social Security Number (TAJ)
- Hungarian Value Added Tax Number
- Hungary Driver's License Number
- Hungary Passport Number
- Hungary Personal Identification Number
- Hungary Tax identification Number
- India Permanent Account Number (PAN)
- India Unique Identification (Aadhaar) Number
- Indonesia Identity Card (KTP) Number
- International Banking Account Number (IBAN)
- International Classification of Diseases (ICD-10-CM)
- International Classification of Diseases (ICD-9-CM)
- IP Address
- Ireland Driver's License Number
- Ireland Passport Number
- Ireland Personal Public Service (PPS) Number
- Israel Bank Account Number
- Israel National ID
- Italy Driver's License Number
- Italy Fiscal Code
- Italy Passport Number
- Italy Value Added Tax Number
- Japan Bank Account Number
- Japan Driver's License Number
- Japan Passport Number
- Japan Resident Registration Number
- Japan Social Insurance Number (SIN)
- Japanese My Number Corporate
- Japanese My Number Personal
- Japanese Residence Card Number
- Latvia Driver's License Number
- Latvia Passport Number
- Latvia Personal Code
- Lithuania Driver's License Number
- Lithuania Passport Number
- Lithuania Personal Code
- [Luxemburg drivers license number](sit-defn-luxemburg-drivers-license-number.md)
- [Luxemburg national identification number (natural persons)](sit-defn-luxemburg-national-identification-number-natural-persons.md)
- [Luxemburg national identification number (non-natural persons)](sit-defn-luxemburg-national-identification-number-non-natural-persons.md)
- [Luxemburg passport number](sit-defn-luxemburg-passport-number.md)
- Malaysia Identity Card Number
- Malta Driver's License Number
- Malta Identity Card Number
- Malta Passport Number
- Malta Tax ID Number
- Netherlands Citizen's Service (BSN) Number
- Netherlands Driver's License Number
- Netherlands Passport Number
- Netherlands Tax Identification Number
- Netherlands Value Added Tax Number
- New Zealand bank account number
- New Zealand Driver License Number
- New Zealand Inland Revenue number
- New Zealand Ministry of Health Number
- New Zealand Social Welfare Number
- Norway Identity Number
- Philippines Unified Multi-Purpose ID Number
- Poland Driver's License Number
- Poland Identity Card
- Poland National ID (PESEL)
- Poland Passport
- Poland Tax Identification Number
- Polish REGON Number
- Portugal Citizen Card Number
- Portugal Driver's License Number
- Portugal Passport Number
- Portugal Tax Identification Number
- Romania Driver's License Number
- Romania Passport Number
- Romania Personal Numerical Code (CNP)
- Russian Passport Number (Domestic)
- Russian Passport Number (International)
- Saudi Arabia National ID
- [Singapore national registration identity card (NRIC) number](sit-defn-singapore-national-registration-identity-card-number.md)
- Slovakia Driver's License Number
- Slovakia Passport Number
- Slovakia Personal Number
- Slovenia Driver's License Number
- Slovenia Passport Number
- Slovenia Tax Identification Number
- Slovenia Unique Master Citizen Number
- South Africa Identification Number
- South Korea Resident Registration Number
- Spain DNI
- Spain Driver's License Number
- Spain Passport Number
- Spain Social Security Number (SSN)
- Spain Tax Identification Number
- SQL Server Connection String
- Sweden Driver's License Number
- Sweden National ID
- Sweden Passport Number
- Sweden Tax Identification Number
- SWIFT Code
- Swiss Social Security Number AHV
- Taiwan National ID
- Taiwan Passport Number
- Taiwan Resident Certificate (ARC/TARC)
- Thai Population Identification Code
- Turkish National Identification number
- U.K. Driver's License Number
- U.K. Electoral Roll Number
- U.K. National Health Service Number
- U.K. National Insurance Number (NINO)
- U.K. Unique Taxpayer Reference Number
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
