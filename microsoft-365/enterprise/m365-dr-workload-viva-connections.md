---
title: Data Residency for Viva Connections
description: Data Residency for Viva Connections
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 10/14/2022
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for Viva Connections

## Summary

Service documentation:  [Overview: Viva Connections](https://learn.microsoft.com/viva/connections/viva-connections-overview)

Capability Summary: Microsoft Viva Connections is your gateway to a modern employee experience designed to keep everyone engaged and informed. Viva Connections is a customizable app in Microsoft Teams that gives everyone a personalized destination to discover relevant news, conversations, and the tools they need to succeed.  Data storage is related to the following Viva Connections Components: Dashboard and feed.

## Data Residency commitments available

### Option 1: Advanced Data Residency add-on

Required Conditions:

1. Tenant has a sign up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. Tenant has a valid Advanced Data Residency subscription for all users in the tenant.
1. The Viva Connections subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

The following customer data will be stored in the related _Geography_:

- The Dashboard and Feed can have content sourced from SharePoint Online, Exchange Online and Microsoft Teams. All data sourced from these services that are covered by their data residency commitments will be stored in the relevant _Geography_. Please refer to [Exchange Online](m365-dr-workload-exo.md), [SharePoint Online](m365-dr-workload-spo.md) and [Microsoft Teams](m365-dr-workload-teams.md) workload data residency pages for more details.

### Migration

Data storage is maintained within Exchange Online, SharePoint Online and Microsoft Teams.  Migration processes are handled in those workloads.

### How can I determine customer data location?

We are in the process of updating the actual data location in Tenant Admin Center.  When this change is complete you will be able to see the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.  Until that change is visible, you can view the Exchange Online, SharePoint Online and Microsoft Teams data location information in order to understand where your committed data is stored for this service.
