---
title: "Minors and acquiring add-ins from the Store"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 01/06/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn about the General Data Protection Regulation (GDPR) regulations that govern the personal data of minors."
---

# Minors and acquiring add-ins from the Store

The General Data Protection Regulation (GDPR) is a European Union regulation that becomes effective May 25, 2018. It gives users rights to and protection of their data. One of the aspects of the GDPR is that minors cannot have their personal data sent to parties that their parent or guardian hasn't approved. The specific age defined as a minor depends on the region where the individual is located.

Regions that have statutory regulations about parental consent include the United States, South Korea, the United Kingdom, and the European Union. For those regions, a minor will be blocked (via Microsoft Entra ID) from getting any new Office Add-ins from the Store and running add-ins that were previously acquired. For countries/regions without statutory regulations, there will be no download restrictions.

A user is determined to be a minor based on data specified in Microsoft Entra ID. The organization admin is responsible for declaring the legal age group and the parental consent for that user.

If the parent/guardian consents to a minor using a specific add-In, then the organization admin can use centralized deployment to deploy that add-In to all minors who have consent.

To be GDPR compliant for minors you need to ensure that one of following builds is deployed in your school/organization.

 **For Word, Excel, PowerPoint, and Project**:

|Platform|Build number|
|---|---|
|Microsoft 365 Apps for enterprise (Current Channel)|9001.2138|
|Microsoft 365 Apps for enterprise (Semi-Annual Enterprise Channel)|8431.2159|
|Office 2016 for Windows|16.0.4672.1000|
|Office 2016 for Mac|16.11.18020200|
|Office for the web|N/A|

 **For Outlook**:

|Platform|Build number|
|---|---|
|Outlook 2016 for Windows (MSI)|Build No TBD|
|Outlook 2016 for Windows (C2R)|16.0.9323.1000|
|Office 2016 for Mac|16.0.9318.1000|
|Outlook mobile for iOS|2.75.0|
|Outlook mobile for Android|2.2.145|
|Outlook.com|N/A|

## Related articles

[Deploy add-ins in the admin center](./manage-deployment-of-add-ins.md)

[Manage add-ins in the admin center](./manage-addins-in-the-admin-center.md)
