---
title: Data Residency for Viva Topics
description: Data Residency for Viva Topics
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/29/2024
ms.reviewer: deanw
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Data Residency for Viva Topics

## Summary

Service documentation: [Microsoft Viva Topics overview](/viva/topics/topic-experiences-overview)

Capability summary: Viva Topics uses Microsoft Artificial Intelligence technology, Microsoft 365, Microsoft Graph, Search, and other components and services to bring knowledge to your users in the Microsoft 365 apps they use everyday, starting with SharePoint modern pages, Outlook, Microsoft Search, and Search in Word, PowerPoint, and Excel.

## Data Residency Commitments Available

> [!NOTE]
> *Viva Topics will be retired on February 22, 2025. Therefore, as of October 31, 2024, Viva Topics will no longer be a supported workload in ADR. Starting with the upcoming local region launches in Taiwan and New Zealand, Viva Topics customer data will not be migrated to new local regions, nor will new customers have Viva Topics stored in existing local regions. For more details, please visit [aka.ms/TopicsFebSupport](https://aka.ms/TopicsFebSupport).

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_.
1. The Viva Topics subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Refer to the [ADR Commitment page](m365-dr-commitments.md#viva-topics) for the specific customer data at rest commitment for Viva Topics.

## Migration

Data stored is maintained within Exchange Online, SharePoint, and Microsoft Teams. Migration processes are handled by the applicable/relevant workloads.

## How can I determine customer data location?

You can find the actual data location in Tenant Admin Center. As a tenant administrator you can find the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.
