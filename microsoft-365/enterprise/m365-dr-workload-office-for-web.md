---
title: Data Residency for Office for the Web
description: Data Residency for Office for the Web
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

# Data Residency for Office for the Web

## Summary

Service documentation:  <a href="https://learn.microsoft.com/en-us/office365/servicedescriptions/office-online-service-description/office-online-service-description" target="_blank">**Office for the web service description**</a>

Capability summary:  Office for the web (formerly Office Web Apps) opens Word, Excel, and PowerPoint documents in your web browser. Office for the web makes it easier to work and share Office files from anywhere with an internet connection, from almost any device. Microsoft 365 customers with Word, Excel,  or PowerPoint can view, create, and edit files on the go.

## Data Residency commitments available

### Option 1: Advanced Data Residency add-on

Required Conditions:

1.	Tenant has a sign up country included in _Local Region Geography_ or _Expanded Local Region Geography_.
2.	Tenant has a valid Advanced Data Residency subscription for all users in the tenant
3.	The Office for the Web subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography.

**Commitment:**

The following customer data will be stored in the related _Geography_:

- Cached documents that users open will be stored in the relevant _Geography_.

### Migration 
The cached for documents are not migrated to the new _Geography_, and will be reestablished as users work on documents.

### How can I determine customer data location?

We are in the process of updating the actual data location in Tenant Admin Center.  When this change is complete you will be able to see the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.  Until that change is visible, you can view the Exchange Online data location information in order to understand where your committed data is stored for this service.
