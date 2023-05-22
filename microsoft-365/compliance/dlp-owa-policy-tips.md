---
title: "Outlook On the Web data loss prevention policy tip reference"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 05/22/2023
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
description: "DLP policy tip reference for Outlook 2013 for Win32."
---

# Outlook On the Web data loss prevention policy tip reference

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## DLP policy tips supported

Yes

## Conditions that support policy tips in Outlook Web Access

- Content contains (SIT)
- Content is shared from M365
- Sender is a member of
- Recipient Domain Is
- Recipient is
- Subject Contains Words or phrases
- Sender is
- Sender domain is
- File extension is
- Subject matches patterns
- Subject or Body contains words or phrases
- Doc or Attachment is password protected
- Document name contains words or phrases
- Sender address contains words
- Document size equals or is greater than
- Subject or Body matches patterns
- Recipient address contains words
- Sender address matches patterns
- Document name matches patterns
- Recipient address matches patterns
- Message importance is
- Any email attachment's content could not be scanned (DocIsUnsupported)
- Document property is

## Actions that support policy tips in Outlook Web Access

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


## Sensitive information types that support policy tips in Outlook Web Access

- ABA Routing Number
- Argentina National Identity (DNI) Number
- Australia Bank Account Number
- Australia Medical Account Number
- Australia Passport Number
- Australia Tax File Number
- Azure DocumentDB Auth Key
- Azure IAAS Database Connection String and Azure SQL Connection String
- Azure IoT Connection String
- Azure Publish Setting Password
- Azure Redis Cache Connection String
- Azure SAS
- Azure Service Bus Connection String
- Azure Storage Account Key
- Azure Storage Account Key (Generic)
- Belgium National Number
- Brazil CPF Number
- Brazil Legal Entity Number (CNPJ)
- Brazil National ID Card (RG)
- Canada Bank Account Number
- Canada Driver's License Number
- Canada Health Service Number
- Canada Passport Number
- Canada Personal Health Identification Number (PHIN)
- Canada Social Insurance Number
- Chile Identity Card Number
- China Resident Identity Card (PRC) Number
- Credit Card Number
- Croatia Identity Card Number
- Croatia Personal Identification (OIB) Number
- Czech Personal Identity Number
- Denmark Personal Identification Number
- Drug Enforcement Agency (DEA) Number
- EU Debit Card Number
- EU Driver's License Number
- EU National Identification Number
- EU Passport Number
- EU Social Security Number (SSN) or Equivalent ID
- EU Tax Identification Number (TIN)
- Finland National ID
- Finland Passport Number
- France Driver's License Number
- France National ID Card (CNI)
- France Passport Number
- France Social Security Number (INSEE)
- German Driver's License Number
- German Passport Number
- Germany Identity Card Number
- Greece National ID Card
- Hong Kong Identity Card (HKID) Number
- India Permanent Account Number (PAN)
- India Unique Identification (Aadhaar) Number
- Indonesia Identity Card (KTP) Number
- International Banking Account Number (IBAN)
- International Classification of Diseases (ICD-10-CM)
- International Classification of Diseases (ICD-9-CM)
- IP Address
- Ireland Personal Public Service (PPS) Number
- Israel Bank Account Number
- Israel National ID
- Italy Driver's License Number
- Japan Bank Account Number
- Japan Driver's License Number
- Japan Passport Number
- Japan Resident Registration Number
- Japan Social Insurance Number (SIN)
- Japanese Residence Card Number
- Malaysia Identity Card Number
- Netherlands Citizen's Service (BSN) Number
- New Zealand Ministry of Health Number
- Norway Identity Number
- Philippines Unified Multi-Purpose ID Number
- Poland Identity Card
- Poland National ID (PESEL)
- Poland Passport
- Portugal Citizen Card Number
- Saudi Arabia National ID
- Singapore National Registration Identity Card (NRIC) Number
- South Africa Identification Number
- South Korea Resident Registration Number
- Spain Social Security Number (SSN)
- SQL Server Connection String
- Sweden National ID
- Sweden Passport Number
- SWIFT Code
- Taiwan National ID
- Taiwan Passport Number
- Taiwan Resident Certificate (ARC/TARC)
- Thai Population Identification Code
- Turkish National Identification number
- U.K. Driver's License Number
- U.K. Electoral Roll Number
- U.K. National Health Service Number
- U.K. National Insurance Number (NINO)
- U.S. / U.K. Passport Number
- U.S. Bank Account Number
- U.S. Driver's License Number
- U.S. Individual Taxpayer Identification Number (ITIN)
- U.S. Social Security Number (SSN)


## From Elsewhere

DLP policy tips in Outlook Web Access are supported for all the conditions, and actions that are applicable on Exchange workload in a DLP policy except the following:





[!INCLUDE [purview-preview](../includes/purview-preview.md)]



[!INCLUDE [purview-preview](../includes/purview-preview.md)]

FROM ELSEWHERE

## Policy tips in Outlook on the web

When you compose a new email in Outlook on the web and Outlook 2013 and later, you'll see a policy tip if you add content that matches a rule in a DLP policy, and that rule uses policy tips. The policy tip appears at the top of the message, above the recipients, while the message is being composed.

![Policy tip at the top of a message being composed.](../media/9b3b6b74-17c5-4562-82d5-d17ecaaa8d95.png)

Policy tips work whether the sensitive information appears in the message body, subject line, or even a message attachment as shown here.

![Policy tip showing that an attachment conflicts with a DLP policy.](../media/59ae6655-215f-47d9-ad1d-39c0d1e61740.png)

If the policy tips are configured to allow override, you can choose **Show Details** \> **Override** \> enter a business justification or report a false positive \> **Override**.

![Policy tip in message expanded to show Override option.](../media/28bfb997-48a6-41f0-8682-d5e62488458a.png)

![Policy tip dialog where you can override the policy tip.](../media/f97e836c-04bd-44b4-aec6-ed9526ea31f8.png)

Note that when you add sensitive information to an email, there may be latency between when the sensitive information is added and when the policy tip appears. When emails are encrypted with Microsoft Purview Message Encryption and the policy used to detect them uses the detect encryption condition policy tips will not appear.



## DLP policy match notification supported


## Supported versions and channels




F



Lorem ipsum:

- dolor sit amet



## Supported sensitivity labels

Lorem ipsum:

- dolor sit amet

## Supported retention labels

Lorem ipsum:

- dolor sit amet

## Supported trainable classifiers

Lorem ipsum:

- dolor sit amet