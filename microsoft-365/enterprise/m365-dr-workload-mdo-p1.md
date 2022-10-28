---
title: Data Residency for Microsoft Defender for Office P1
description: Learn about Data Residency for Microsoft Defender for Office P1
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for Microsoft Defender for Office P1

## Overview

Service documentation: [Office 365 Security including Microsoft Defender for Office 365 and Exchange Online Protection](/microsoft-365/security/office-365-security/defender-for-office-365)

Capability Summary: Protects email and collaboration from zero-day malware, phish, and business email compromise.  MDO P1 builds on Exchange Online Protection (EOP).  

## Data Residency commitments available

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1. The MDO P1 subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Please refer to the [ADR Commitment page](m365-dr-commitments.md#microsoft-defender-for-office-p1) for the specific customer data at rest commitment for Microsoft Defender for Office P1. 

Other Information

In addition, processing of data that is required to analyze threats and inspect suspicious emails, documents, messages, and links is done in a sandbox environment and performed within the _Local Region Geography_ or _Expanded Local Region_.


## Exchange Online Protection

### Overview

Service documentation: [Exchange Online Protection (EOP) overview](/microsoft-365/security/office-365-security/exchange-online-protection-overview)

Capability summary: Exchange Online Protection (EOP) is the cloud-based filtering service that protects your organization against spam, malware, and other email threats.

### Data Residency commitments available

#### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1. The EOP subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_

**Commitment:**

Please refer to the Advanced Data Residency Commitment page (***TODO: link to new page***) for the specific customer data at rest commitment for Exchange Online Protection. 

## Migration

EOP customer data migrates during the Exchange Online migration. MDO P1 does not have customer data to migrate.

## How can I determine customer data location?

We are in the process of updating the actual data location in the _Tenant_ Admin Center. When this change is complete you will be able to see the actual data location, for committed workloads, by navigating to Admin|Settings|Org Settings|Organization Profile|Data Location. Until that change is visible, you can view the Exchange Online data location information in order to understand where your in scope customer data is stored for this service.
