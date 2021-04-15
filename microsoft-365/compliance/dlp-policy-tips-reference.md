---
title: "DLP predicates supported for DLP policy tips in Outlook Web Access"
f1.keywords: CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- SPO160
- MET150
ms.assetid: 6501b5ef-6bf7-43df-b60d-f65781847d6c
ms.collection:
- M365-security-compliance
- SPO_Content
description: "Learn how to add a policy tip to a data loss prevention (DLP) policy notify a user that they are working with content that conflicts with a DLP policy."
ms.custom: seo-marvel-apr2021
---
# DLP predicates supported for DLP policy tips in Outlook Web Access

DLP policy tips in Outlook Web Access is supported for all the conditions, exceptions and actions that are applicable on Exchange workload in a DLP policy except the following:

**Conditions:**

- Sender Is
- Sender Domain Is
- Recipient is a member of
- Header contains words or phrases
- Header matches patterns
- Document size equals or is greater than
- Message type is
- Message importance is
- Content character set contains words
- Subject or body contains words or phrases
- Subject or body matches patterns
- Content character set contains words
- Content is received from
- Has sender overridden the policy tip
- Message size equals or is greater than
- Sender AD attribute contains words or phrases
- Sender AD attribute matches patterns
- Document content contains words or phrases
- Document content matches patterns

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
- Remove

## Outlook 2013 and later supports showing policy tips for only some conditions and exceptions

Currently, Outlook 2013 and later supports showing policy tips for policies which do not contain any condition or exception apart from the below mentioned conditions and corresponding exceptions :

- Content contains (works only for Sensitive information types. Sensitivity labels are not supported)
- Content is shared

Note that all the conditions work for emails authored in Outlook client app, where they will match content and enforce protective actions on content. However, showing policy tips to users is not yet supported for any conditions that are used apart from the ones mentioned above.

## Outlook 2013 and later supports showing policy tips for only some sensitive information types

The list of out-of-the-box sensitive information types that will be detected for showing DLP policy tips in Outlook on Desktop (2013 and later) are the following :

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

Please note that custom sensitive information types are also supported for DLP policy tips in addition to the above out-of-the-box sensitive information types