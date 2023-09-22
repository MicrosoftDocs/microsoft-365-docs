---
title: Data Residency for Viva Topics
description: Data Residency for Viva Topics
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.reviewer: dmwmsft
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# Data Residency for Viva Topics

## Summary

Service documentation: [Microsoft Viva Topics overview](/viva/topics/topic-experiences-overview)

Capability summary: Viva Topics uses Microsoft Artificial Intelligence technology, Microsoft 365, Microsoft Graph, Search, and other components and services to bring knowledge to your users in the Microsoft 365 apps they use everyday, starting with SharePoint modern pages, Outlook, Microsoft Search, and Search in Word, PowerPoint, and Excel.

## Data Residency Commitments Available

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_.
1. The Viva Topics subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Please refer to the [ADR Commitment page](m365-dr-commitments.md#viva-topics) for the specific customer data at rest commitment for Viva Topics.

## Migration

Data stored is maintained within Exchange Online, SharePoint Online, and Microsoft Teams. Migration processes are handled by the applicable/relevant workloads.

## How can I determine customer data location?

You can find the actual data location in Tenant Admin Center. As a tenant administrator you can find the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.
