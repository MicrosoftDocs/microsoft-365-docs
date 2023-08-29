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
ms.reviewer: dmwmsft
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# Data Residency for Office for the Web

## Overview

Service documentation: [Office for the web service description - Service Descriptions](/office365/servicedescriptions/office-online-service-description/office-online-service-description)

Capability summary: Office for the web (formerly Office Web Apps) opens Word, Excel, and PowerPoint documents in your web browser. Office for the web makes it easier to work and share Office files from anywhere with an internet connection, from almost any device. Microsoft 365 customers with Word, Excel, or PowerPoint can view, create, and edit files on the go.

## Data Residency commitments available

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid _Advanced Data Residency_ subscription for all users in the _Tenant_.
1. The Office for the Web subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Please refer to the [ADR Commitment page](m365-dr-commitments.md#office-for-the-web) for the specific customer data at rest commitment for Office for the Web.

### Migration

The cache for documents are not migrated to the new _Geography_, and will be reestablished as users work on documents.

### How can I determine customer data location?

We are in the process of updating the actual data location in _Tenant_ Admin Center. When this change is complete the tenant will be able to see the actual data location, for in scope data, by navigating to Admin|Settings|Org Settings|Organization Profile|Data Location. Until that change is visible, you can view the Exchange Online data or SharePoint Online location information in order to understand where the in scope data is stored for this service.
