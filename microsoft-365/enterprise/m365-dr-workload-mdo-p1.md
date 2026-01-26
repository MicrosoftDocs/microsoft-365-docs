---
title: Data Residency for Microsoft Defender for Office P1
description: Learn about Data Residency for Microsoft Defender for Office P1
ms.author: v-fahasen
author: fhasen-msft
manager: Justin.Giammona
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/11/2025
ms.reviewer: jugiammo
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Data Residency for Microsoft Defender for Office P1

## Overview

Service documentation: [Office 365 Security including Microsoft Defender for Office 365 and the built-in security features for all cloud mailboxes](/defender-office-365/mdo-about)

Capability Summary: Protects email and collaboration from zero-day malware, phish, and business email compromise. Microsoft Defender for Office 365 Plan 1 builds on [the built-in security features for all cloud mailboxes](/defender-office-365/eop-about).

## Data Residency commitments available

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1. The MDO P1 subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Refer to the [ADR Commitment page](m365-dr-commitments.md#microsoft-defender-for-office-p1) for the specific customer data at rest commitment for Microsoft Defender for Office P1.

Other Information

In addition, processing of data that is required to analyze threats and inspect suspicious emails, documents, messages, and links is done in a sandbox environment and performed within the _Local Region Geography_ or _Expanded Local Region_.

<a name='exchange-online-protection'></a>

## Built-in security features for all cloud mailboxes

### Overview

Service documentation: [Overview of the built-in security features for all cloud mailboxes](/defender-office-365/eop-about)

Capability summary: Built-in security features for all cloud mailboxes is the cloud-based filtering service that protects your organization against spam, malware, and other email threats.

### Data Residency commitments available

#### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1. Customer data for the built-in security features for all cloud mailboxes is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_

**Commitment:**

Refer to the [Advanced Data Residency Commitment](m365-dr-commitments.md) page for the specific customer data at rest commitment for the built-in security features for all cloud mailboxes.

## Migration

Customer data for the built-in security features for all cloud mailboxes migrates after ADR migration is initiated. Microsoft Defender for Office 365 Plan 1 doesn't have customer data to migrate.

## How can I determine customer data location?

You can find the actual data location in Tenant Admin Center. As a tenant administrator you can find the actual data location, for committed data, by navigating to **Admin -> Settings -> Org Settings -> Organization Profile -> Data Location**.
