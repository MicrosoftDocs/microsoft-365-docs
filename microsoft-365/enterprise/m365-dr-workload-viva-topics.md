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
ms.date: 
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for Viva Topics

## Summary

Service documentation: [Microsoft Viva Topics overview](https://learn.microsoft.com/viva/topics/topic-experiences-overview)

Capability summary: Viva Topics uses Microsoft AI technology, Microsoft 365, Microsoft Graph, Search, and other components and services to bring knowledge to your users in the Microsoft 365 apps they use everyday, starting with SharePoint modern pages, Outlook, Microsoft Search, and Search in Word, PowerPoint, and Excel.

## Data Residency commitments available

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_.
1. The Viva Topics subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Please refer to the Advanced Data Residency Commitment page (***TODO: link to new page***) for the specific customer data at rest commitment for Viva Topics. 

## Migration

Data storage is maintained within Exchange Online, SharePoint Online and Microsoft Teams.  Migration processes are handled in those workloads.

## How can I determine customer data location?

We are in the process of updating the actual data location in _Tenant_ Admin Center.  When this change is complete you will be able to see the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.  Until that change is visible, you can view the Exchange Online data location information in order to understand where your committed data is stored for this service.
