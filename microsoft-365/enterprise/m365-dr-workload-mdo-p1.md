---
title: Data Residency for Microsoft Defender for Office P1
description: Data Residency for Microsoft Defender for Office P1
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for Microsoft Defender for Office P1

## Summary
 
Service documentation:  <a href="[https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all](https://learn.microsoft.com/microsoft-365/security/office-365-security/defender-for-office-365)" target="_blank">**Office 365 Security including Microsoft Defender for Office 365 and Exchange Online Protection**</a>


Capability Summary: Protects email and collaboration from zero-day malware, phish, and business email compromise.  MDO P1 builds on Exchange Online Protection (EOP).  Data residency capabilities for EOP can be found in Section (***TODO: add link***).


## Data Residency commitments available

### Option 1: Advanced Data Residency add-on

Required Conditions:

1.	Tenant has a sign-up country included in Local Geography or Expanded Local Geography.
2.	Tenant has a valid Advanced Data Residency subscription for all users in the tenant
3.	The MDO P1 subscription customer data is provisioned in *Local Geography* or *Expanded Local Geography*.

**Commitment:**

The following customer data will be stored in the related *Geography*:

- MDO P1 does not store any customer data within its service.  In addition, all processing of data that is required to analyze threats and inspect suspicious emails, documents, messages, links, etc. is done in a sandbox environment and performed within the *Local Geography* or *Expanded Local Geography*.
