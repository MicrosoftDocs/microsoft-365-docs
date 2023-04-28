---
title: "Data Loss Prevention policy tips reference"
f1.keywords: CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/15/2021
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

DLP policy tips in Outlook Web Access are supported for all the conditions, and actions that are applicable on Exchange workload in a DLP policy except the following:

**Conditions:**

- Recipient is a member of
- Header contains words or phrases
- Header matches patterns
- Message type is
- Content character set contains words
- Has sender overridden the policy tip
- Message size equals or is greater than
- Sender AD attribute contains words or phrases
- Sender AD attribute matches patterns
- Sender IP ranges
- Recipient AD attribute contains words or phrases
- Recipient AD attribute matches patterns
- Document name contains words or phrases
- Document name matches patterns
- Document content contains words or phrases
- Document content matches patterns
- Any email attachment's content didn't complete scanning
- Any email attachment's content could not be scanned

**Actions:**

- Forward the message for approval to sender’s manager
- Forward the message for approval to specific approvers
- Redirect the message to specific users
- Add recipients to the To Box
- Add recipients to the Cc Box
- Add recipients to the Bcc Box
- Add the sender’s manager as recipient
- Add HTML disclaimer
- Prepend email subject
- Remove O365 Message Encryption and rights protection

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Outlook 2013 and later supports showing policy tips for only some conditions

Currently, Outlook 2013 and later supports showing policy tips for policies that contain these conditions:

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

All the conditions work for emails authored in Outlook client app, where they'll match content and enforce protective actions on content. However, showing policy tips to users isn't supported for any conditions that are used apart from the ones mentioned above.

## Outlook 2013 and later and Office apps on Desktop support showing policy tips for only some sensitive information types

For E3 licensed users, DLP policy tips are shown in Outlook 2013 and later for pre-configured SITs and custom SITs.

For E5 licensed users, DLP policy tips will be shown in Outlook 2013 and later, for policies that use: (preview)

- [Preconfigured sensitive information types](sensitive-information-type-entity-definitions.md) (SITs)
- Custom SITs
- [Named entity SITs](named-entities-learn.md)
- [Exact data match (EDM) SITs](sit-get-started-exact-data-match-based-sits-overview.md)
- [Credential scanning SITs](sit-defn-all-creds.md)
- [Trainable classifiers definitions](classifier-tc-definitions.md)

> [!NOTE]
> Not all elements of custom sensitive information types are compatible with every version of Office. Entity elements for Custom SITs, such as Functions, may cause incompatibility. Office 2019 supports custom SITs that use Regular Expressions, Keyword Lists, and Keyword Dictionary only.

## Data Loss Prevention on endpoint devices supports policy tips for only some sensitive information types

The list of out-of-the-box sensitive information types that will be detected in documents residing on endpoint devices are the following:

- ABA Routing Number 
- Argentina National Identity (DNI) Number 
- Australia Bank Account Number 
- Australia Medical Account Number 
- Australia Passport Number 
- Australia Tax File Number 
- Australian Business Number 
- Australian Company Number 
- Austria Driver's License Number 
- Austria Identity Card 
- Austria Passport Number 
- Austria Social Security Number 
- Austria Tax Identification Number 
- Austria Value Added Tax (VAT) Number 
- Azure DocumentDB Auth Key 
- Azure IAAS Database Connection String and Azure SQL Connection String 
- Azure IoT Connection String 
- Azure Publish Setting Password 
- Azure Redis Cache Connection String 
- Azure SAS 
- Azure Service Bus Connection String 
- Azure Storage Account Key 
- Azure Storage Account Key (Generic) 
- Belgium Driver's License Number 
- Belgium National Number 
- Belgium Passport Number 
- Belgium Value Added Tax Number 
- Brazil CPF Number 
- Brazil Legal Entity Number (CNPJ) 
- Brazil National ID Card (RG) 
- Bulgaria Driver's License Number 
- Bulgaria Passport Number 
- Bulgaria Uniform Civil Number 
- Canada Bank Account Number 
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
- CSCAN-AZURE0060 Azure Storage Account Shared Access Signature 
- CSCAN-GENERAL0140 General Symmetric Key 
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
- Estonia Driver's License Number 
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
- Luxemburg Driver's License Number 
- Luxemburg National Identification Number (Natural persons) 
- Luxemburg National Identification Number (Non-natural persons) 
- Luxemburg Passport Number 
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
- Singapore National Registration Identity Card (NRIC) Number 
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
- U.S. / U.K. Passport Number 
- U.S. Bank Account Number 
- U.S. Driver's License Number 
- U.S. Individual Taxpayer Identification Number (ITIN) 
- U.S. Social Security Number (SSN) 
- Ukraine Passport Number (Domestic) 
- Ukraine Passport Number (International) 
 
Custom sensitive information types will also be detected in addition to the above out-of-the-box sensitive information types

## Support Matrix for DLP policy tips across Microsoft apps

|**App and platform**|**DLP policy tip support**|**Sensitive information types supported**|**Predicates and actions supported**|**Comments**|
|:--|:--|:--|:--|:--|
|**Outlook On the Web**|:::image type="icon" source="../media/rightmrk.png" border="false":::|Exact Data match SITs|subset||
|**Outlook Win32 (ver. 2105 build 14026.20000 and semi-annual channel ver. 2102 build 13801.20862)**|:::image type="icon" source="../media/rightmrk.png" border="false":::|all SITS are supported for E5 users; pre-configured SITs and customer SITs are supported for E3 users|subset|See [Outlook 2013 and later supports showing policy tips for only some conditions](#outlook-2013-and-later-supports-showing-policy-tips-for-only-some-conditions) and [Outlook 2013 and later and Office apps on Desktop support showing policy tips for only some sensitive information types](#outlook-2013-and-later-and-office-apps-on-desktop-support-showing-policy-tips-for-only-some-sensitive-information-types) for details on support for sensitive information types and DLP conditions and actions supported for showing DLP policy tips on Outlook Win32.|
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
