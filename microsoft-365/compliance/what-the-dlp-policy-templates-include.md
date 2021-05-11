---
title: "What the DLP policy templates include"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 6/29/2018
audience: Admin
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.DLPNewPolicyFromTemplate'
ms.service: O365-seccomp
ms.collection: 
- M365-security-compliance
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
recommendations: false
description: Learn what the data loss prevention (DLP) policy templates in the Office 365 Security & Compliance Center include.
---

# What the DLP policy templates include

Data loss prevention (DLP) in the Security &amp; Compliance Center includes ready-to-use policy templates that address common compliance requirements, such as helping you to protect sensitive information subject to the U.S. Health Insurance Act (HIPAA), U.S. Gramm-Leach-Bliley Act (GLBA), or U.S. Patriot Act. This topic lists all of the policy templates, what types of sensitive information they look for, and what the default conditions and actions are. This topic does not include every detail of how each policy template is configured; instead, the topic presents with you enough information to help you decide which template is the best starting point for your scenario. Remember, you can customize these policy templates to meet your specific requirements.
  
## Australia Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Australia Financial: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  SWIFT Code — Min count 1, Max count 9  <br/>  Australia Tax File Number — Min count 1, Max count 9  <br/>  Australia Bank Account Number — Min count 1, Max count 9  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Australia Financial: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  Australia Tax File Number — Min count 10, Max count any  <br/>  Australia Bank Account Number — Min count 10, Max count any  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Australia Health Records Act (HRIP Act)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Australia HRIP: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Australia Tax File Number — Min count 1, Max count 9  <br/>  Australia Medical Account Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Australia HRIP: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Australia Tax File Number — Min count 10, Max count any  <br/>  Australia Medical Account Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Australia Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Australia PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Australia Tax File Number — Min count 1, Max count 9  <br/>  Australia Driver's License Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Australia PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Australia Tax File Number — Min count 10, Max count any  <br/>  Australia Driver's License Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Australia Privacy Act

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Australia Privacy: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Australia Driver's License Number — Min count 1, Max count 9  <br/>  Australia Passport Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Australia Privacy: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Australia Driver's License Number — Min count 10, Max count any  <br/>  Australia Passport Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Canada Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Canada Financial Data: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  Canada Bank Account Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Canada Financial Data: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  Canada Bank Account Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Canada Health Information Act (HIA)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Canada HIA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Canada Passport Number — Min count 1, Max count 9  <br/>  Canada Social Insurance Number — Min count 1, Max count 9  <br/>  Canada Health Service Number — Min count 1, Max count 9  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Canada HIA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Canada Passport Number — Min count 10, Max count any  <br/>  Canada Social Insurance Number — Min count 10, Max count any  <br/>  Canada Health Service Number — Min count 10, Max count any  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Canada Personal Health Act (PHIPA) - Ontario

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Canada PHIPA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Canada Passport Number — Min count 1, Max count 9  <br/>  Canada Social Insurance Number — Min count 1, Max count 9  <br/>  Canada Health Service Number — Min count 1, Max count 9  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Canada PHIPA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Canada Passport Number — Min count 10, Max count any  <br/>  Canada Social Insurance Number — Min count 10, Max count any  <br/>  Canada Health Service Number — Min count 10, Max count any  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Canada Personal Health Information Act (PHIA) - Manitoba

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Canada PHIA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Canada Social Insurance Number — Min count 1, Max count 9  <br/>  Canada Health Service Number — Min count 1, Max count 9  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Canada PHIA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Canada Social Insurance Number — Min count 10, Max count any  <br/>  Canada Health Service Number — Min count 10, Max count any  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Canada Personal Information Protection Act (PIPA)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Canada PIPA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Canada Passport Number — Min count 1, Max count 9  <br/>  Canada Social Insurance Number — Min count 1, Max count 9  <br/>  Canada Health Service Number — Min count 1, Max count 9  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Canada PIPA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Canada Passport Number — Min count 10, Max count any  <br/>  Canada Social Insurance Number — Min count 10, Max count any  <br/>  Canada Health Service Number — Min count 10, Max count any  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Canada Personal Information Protection Act (PIPEDA)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Canada PIPEDA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Canada Driver's License Number — Min count 1, Max count 9  <br/>  Canada Bank Account Number — Min count 1, Max count 9  <br/>  Canada Passport Number — Min count 1, Max count 9  <br/>  Canada Social Insurance Number — Min count 1, Max count 9  <br/>  Canada Health Service Number — Min count 1, Max count 9  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Canada PIPEDA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Canada Driver's License Number — Min count 10, Max count any  <br/>  Canada Bank Account Number — Min count 10, Max count any  <br/>  Canada Passport Number — Min count 10, Max count any  <br/>  Canada Social Insurance Number — Min count 10, Max count any  <br/>  Canada Health Service Number — Min count 10, Max count any  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Canada Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Canada PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Canada Driver's License Number — Min count 1, Max count 9  <br/>  Canada Bank Account Number — Min count 1, Max count 9  <br/>  Canada Passport Number — Min count 1, Max count 9  <br/>  Canada Social Insurance Number — Min count 1, Max count 9  <br/>  Canada Health Service Number — Min count 1, Max count 9  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Canada PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Canada Driver's License Number — Min count 10, Max count any  <br/>  Canada Bank Account Number — Min count 10, Max count any  <br/>  Canada Passport Number — Min count 10, Max count any  <br/>  Canada Social Insurance Number — Min count 10, Max count any  <br/>  Canada Health Service Number — Min count 10, Max count any  <br/>  Canada Personal Health Identification Number (PHIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## France Data Protection Act

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|France DPA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  France National ID Card (CNI) — Min count 1, Max count 9  <br/>  France Social Security Number (INSEE) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|France DPA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  France National ID Card (CNI) — Min count 10, Max count any  <br/>  France Social Security Number (INSEE) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## France Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|France Financial: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  EU Debit Card Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|France Financial: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  EU Debit Card Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## France Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|France PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  France Social Security Number (INSEE) — Min count 1, Max count 9  <br/>  France Driver's License Number — Min count 1, Max count 9  <br/>  France Passport Number — Min count 1, Max count 9  <br/>  France National ID Card (CNI) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|France PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  France Social Security Number (INSEE) — Min count 10, Max count any  <br/>  France Driver's License Number — Min count 10, Max count any  <br/>  France Passport Number — Min count 10, Max count any  <br/>  France National ID Card (CNI) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## General Data Protection Regulation (GDPR)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Low volume EU Sensitive content found  <br/> | Content contains sensitive information:  <br/>  EU Debit Card Number — Min count 1, Max count 9  <br/>  EU Driver's License Number — Min count 1, Max count 9  <br/>  EU National Identification Number — Min count 1, Max count 9  <br/>  EU Passport Number — Min count 1, Max count 9  <br/>  EU Social Security Number (SSN) or Equivalent ID — Min count 1, Max count 9  <br/>  EU Tax Identification Number (TIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send incident reports to Administrator  <br/> |
|High volume of EU Sensitive content found  <br/> | Content contains sensitive information:  <br/>  EU Debit Card Number — Min count 1, Max count 9  <br/>  EU Driver's License Number — Min count 1, Max count 9  <br/>  EU National Identification Number — Min count 1, Max count 9  <br/>  EU Passport Number — Min count 1, Max count 9  <br/>  EU Social Security Number (SSN) or Equivalent ID — Min count 1, Max count 9  <br/>  EU Tax Identification Number (TIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Restrict access to the content for external users  <br/>  Notify users with email and policy tips  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident reports to Administrator  <br/> |
   
## Germany Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Germany Financial Data: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  EU Debit Card Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Germany Financial Data: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  EU Debit Card Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Germany Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Germany PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  German Driver's License Number — Min count 1, Max count 9  <br/>  German Passport Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Germany PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  German Driver's License Number — Min count 10, Max count any  <br/>  German Passport Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Israel Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Israel Financial Data: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Israel Bank Account Number — Min count 1, Max count 9  <br/>  SWIFT Code — Min count 1, Max count 9  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Israel Financial Data: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Israel Bank Account Number — Min count 10, Max count any  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Israel Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Israel PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Israel National ID — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Israel PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Israel National ID — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Israel Protection of Privacy

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Israel Privacy: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Israel National ID — Min count 1, Max count 9  <br/>  Israel Bank Account Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Israel Privacy: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Israel National ID — Min count 10, Max count any  <br/>  Israel Bank Account Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Japan Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Japan Financial: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Japan Bank Account Number — Min count 1, Max count 9  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Japan Financial: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Japan Bank Account Number — Min count 10, Max count any  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Japan Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Japan PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Japan Resident Registration Number — Min count 1, Max count 9  <br/>  Japan Social Insurance Number (SIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Japan PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Japan Resident Registration Number — Min count 10, Max count any  <br/>  Japan Social Insurance Number (SIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Japan Protection of Personal Information

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Japan PPI: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Japan Resident Registration Number — Min count 1, Max count 9  <br/>  Japan Social Insurance Number (SIN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Japan PPI: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Japan Resident Registration Number — Min count 10, Max count any  <br/>  Japan Social Insurance Number (SIN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## PCI Data Security Standard (PCI DSS)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|PCI DSS: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|PCI DSS: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Saudi Arabia - Anti-Cyber Crime Law

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Saudi Arabia ACC: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  SWIFT Code — Min count 1, Max count 9  <br/>  International Banking Account Number (IBAN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Saudi Arabia ACC: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  International Banking Account Number (IBAN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Saudi Arabia Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Saudi Arabia Financial: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  SWIFT Code — Min count 1, Max count 9  <br/>  International Banking Account Number (IBAN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Saudi Arabia Financial: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  International Banking Account Number (IBAN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## Saudi Arabia Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Saudi Arabia PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Saudi Arabia National ID — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|Saudi Arabia PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Saudi Arabia National ID — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.K. Access to Medical Reports Act

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.K. AMRA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  U.K. National Health Service Number — Min count 1, Max count 9  <br/>  U.K. National Insurance Number (NINO) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.K. AMRA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  U.K. National Health Service Number — Min count 10, Max count any  <br/>  U.K. National Insurance Number (NINO) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.K. Data Protection Act

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.K. DPA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  U.K. National Insurance Number (NINO) — Min count 1, Max count 9  <br/>  U.S. / U.K. Passport Number — Min count 1, Max count 9  <br/>  SWIFT Code — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.K. DPA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  U.K. National Insurance Number (NINO) — Min count 10, Max count any  <br/>  U.S. / U.K. Passport Number — Min count 10, Max count any  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.K. Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.K. Financial: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  EU Debit Card Number — Min count 1, Max count 9  <br/>  SWIFT Code —Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.K. Financial: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  EU Debit Card Number — Min count 10, Max count any  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.K. Personal Information Online Code of Practice (PIOCP)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.K. PIOCP: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  U.K. National Insurance Number (NINO) — Min count 1, Max count 9  <br/>  U.K. National Health Service Number — Min count 1, Max count 9  <br/>  SWIFT Code — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.K. PIOCP: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  U.K. National Insurance Number (NINO) — Min count 10, Max count any  <br/>  U.K. National Health Service Number — Min count 10, Max count any  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.K. Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.K. PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  U.K. National Insurance Number (NINO) — Min count 1, Max count 9  <br/>  U.S. / U.K. Passport Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.K. PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  U.K. National Insurance Number (NINO) — Min count 10, Max count any  <br/>  U.S. / U.K. Passport Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.K. Privacy and Electronic Communications Regulations

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.K. PECR: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  SWIFT Code — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.K. PECR: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  SWIFT Code — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.S. Federal Trade Commission (FTC) Consumer Rules

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.S. FTC Rules: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  U.S. Bank Account Number — Min count 1, Max count 9  <br/>  ABA Routing Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.S. FTC Rules: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  U.S. Bank Account Number — Min count 10, Max count any  <br/>  ABA Routing Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.S. Financial Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.S. Financial: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  U.S. Bank Account Number — Min count 1, Max count 9  <br/>  ABA Routing Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.S. Financial: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  U.S. Bank Account Number — Min count 10, Max count any  <br/>  ABA Routing Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.S. Gramm-Leach-Bliley Act (GLBA)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.S. GLBA: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  U.S. Bank Account Number — Min count 1, Max count 9  <br/>  U.S. Individual Taxpayer Identification Number (ITIN) — Min count 1, Max count 9  <br/>  U.S. Social Security Number (SSN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.S. GLBA: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  U.S. Bank Account Number — Min count 10, Max count any  <br/>  U.S. Individual Taxpayer Identification Number (ITIN) — Min count 10, Max count any  <br/>  U.S. Social Security Number (SSN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.S. Health Insurance Act (HIPAA)

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|Content matches U.S. HIPAA  <br/> | Contains any of the following sensitive information:  <br/>  U.S. Social Security Number (SSN) — Min count 1, Max count any  <br/>  Drug Enforcement Agency (DEA) Number — Min count 1, Max count any  <br/> **AND** <br/>  Content contains any of these terms:  <br/>  International Classification of Diseases (ICD-9-CM) — Min count 1, Max count any  <br/>  International Classification of Diseases (ICD-10-CM) — Min count 1, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
   
## U.S. Patriot Act

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.S. Patriot Act: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  U.S. Bank Account Number — Min count 1, Max count 9  <br/>  U.S. Individual Taxpayer Identification Number (ITIN) — Min count 1, Max count 9  <br/>  U.S. Social Security Number (SSN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.S. Patriot Act: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  U.S. Bank Account Number — Min count 10, Max count any  <br/>  U.S. Individual Taxpayer Identification Number (ITIN) — Min count 10, Max count any  <br/>  U.S. Social Security Number (SSN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.S. Personally Identifiable Information (PII) Data

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.S. PII: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  U.S. Individual Taxpayer Identification Number (ITIN) — Min count 1, Max count 9  <br/>  U.S. Social Security Number (SSN) — Min count 1, Max count 9  <br/>  U.S. / U.K. Passport Number — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.S. PII: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  U.S. Individual Taxpayer Identification Number (ITIN) — Min count 10, Max count any  <br/>  U.S. Social Security Number (SSN) — Min count 10, Max count any  <br/>  U.S. / U.K. Passport Number — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.S. State Breach Notification Laws

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.S. State Breach: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 1, Max count 9  <br/>  U.S. Bank Account Number — Min count 1, Max count 9  <br/>  U.S. Driver's License Number — Min count 1, Max count 9  <br/>  U.S. Social Security Number (SSN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.S. State Breach: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  Credit Card Number — Min count 10, Max count any  <br/>  U.S. Bank Account Number — Min count 10, Max count any  <br/>  U.S. Driver's License Number — Min count 10, Max count any  <br/>  U.S. Social Security Number (SSN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   
## U.S. State Social Security Number Confidentiality Laws

|**Rule name**|**Conditions  <br/> (including sensitive information types)**|**Actions**|
|:-----|:-----|:-----|
|U.S. SSN Laws: Scan content shared outside - low count  <br/> | Content contains sensitive information:  <br/>  U.S. Social Security Number (SSN) — Min count 1, Max count 9  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> |Send a notification  <br/> |
|U.S. SSN Laws: Scan content shared outside - high count  <br/> | Content contains sensitive information:  <br/>  U.S. Social Security Number (SSN) — Min count 10, Max count any  <br/>  Content is shared with:  <br/>  People outside my organization  <br/> | Block access to content  <br/>  Send a notification  <br/>  Allow override  <br/>  Require business justification  <br/>  Send incident report  <br/> |
   

