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

### Option 1: Advanced Data Residency add-on

Required Conditions:

1. Tenant has a sign up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. Tenant has a valid Advanced Data Residency subscription for all users in the tenant.
1. The Viva Topics subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**
The following customer data will be stored in the related _Geography_:

- All the topics and customer data snippets discovered are stored within the relevant _Geographies_ in Exchange Online Substrate (site or arbitration mailboxes, and Substrate).  All topic customer data is partitioned based on which _Local Region Geography_ or _Expanded Local Region Geography_ the data came from within your tenant.

- ML models are trained on public web data, and as such do not contain any customer data from your tenant. In the future it's possible we will use customer data to improve accuracy of the ML models, in which case the data handling of ML models will follow the same policies as any other customer content (including data residency, retention, access control, sensitivity)

- Topic highlighting is computed dynamically when the SharePoint Online page is rendered by running a language model against the content of the page and linking it with the knowledge base of Topics.  The Topics data is sourced from the Substrate in the relevant _Geographies_.

- The administration configuration data is stored within the relevant _Geographies_.

## Migration

Data storage is maintained within Exchange Online, SharePoint Online and Microsoft Teams.  Migration processes are handled in those workloads.

## How can I determine customer data location?

We are in the process of updating the actual data location in Tenant Admin Center.  When this change is complete you will be able to see the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.  Until that change is visible, you can view the Exchange Online data location information in order to understand where your committed data is stored for this service.
