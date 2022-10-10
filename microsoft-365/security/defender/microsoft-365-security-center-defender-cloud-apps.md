---
title: Microsoft Defender for Cloud Apps in Microsoft 365 Defender (Preview)
description: Learn about changes from the Microsoft Defender for Cloud Apps to Microsoft 365 Defender
keywords: Getting started with Microsoft 365 Defender, Microsoft Defender for Cloud Apps
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: dacurwin
author: dcurwin
manager: dansimp
ms.date: 08/21/2022
audience: ITPro
ms.topic: article
search.appverid: 
- MOE150
- MET150
ms.collection: 
- m365-security 
- tier2
ms.custom: admindeeplinkDEFENDER
---

# Microsoft Defender for Cloud Apps in Microsoft 365 Defender (Preview)

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)
- [Microsoft Defender for Cloud Apps](/defender-cloud-apps/)

Microsoft Defender for Cloud Apps is now part of Microsoft 365 Defender. The Microsoft 365 Defender portal allows security admins to perform their security tasks in one location. This will simplify workflows, and add the functionality of the other Microsoft 365 Defender services. Microsoft 365 Defender will be the home for monitoring and managing security across your Microsoft identities, data, devices, apps, and infrastructure.

SOC analysts will be able to triage, investigate and hunt across all Microsoft 365 Defender workloads, including cloud apps.
Defender for Cloud Apps alerts will continue to appear in Microsoft 365 Defender's incidents queue and alerts queue, but now with relevant content inside the alert pages available in the Microsoft 365 Defender portal, in a unified format with the proper adaptations to each alerts type.

Take a look in Microsoft 365 Defender at <https://security.microsoft.com>.

Learn more about the benefits: [Overview of Microsoft 365 Defender](microsoft-365-defender.md).

## Quick reference

The image and the table below lists the changes in navigation between Microsoft Defender for Cloud Apps and Microsoft 365 Defender.

> [!NOTE]
> Some pages have not yet been migrated and should be accessed from the Defender for Cloud Apps portal.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/defender-cloud-apps-m365-defender.png" alt-text="The new locations in the Microsoft 365 Defender portal" lightbox="../../media/defender-cloud-apps-m365-defender.png":::

| Defender for Cloud Apps | Microsoft 365 Defender |
|---------|---------|
| Cloud Discover dashboard | Cloud apps -> Cloud discovery |
| Discovered Apps | tab on Cloud Discovery page |
| Discovered resources | tab on Cloud Discovery page |
| IP addresses | tab on Cloud Discovery page |
| Users | tab on Cloud Discovery page |
| Devices | tab on Cloud Discovery page |
| Cloud app catalog |  Cloud apps -> Cloud app catalog |
| Create Cloud Discovery snapshot report | On the Cloud Discovery page, under Actions |
| Activity log | Cloud apps -> Activity log |
| Files | remaining in Defender for Cloud Apps portal |
| Users and accounts | Assets -> Identities |
| Security configuration | remaining in Defender for Cloud Apps portal |
| Identity security posture | [Microsoft Defender for Identity's identity security posture assessments](/defender-for-identity/isp-overview) |
| OAuth apps | Cloud apps -> OAuth apps |
| Connected apps | remaining in Defender for Cloud Apps portal |

> [!NOTE]
> The new Defender for Cloud Apps experience in the Microsoft 365 Defender portal is currently available for all users detailed in [Manage admin access](/defender-cloud-apps/manage-admins), except for:
>
> - **App/Instance admin**, **User group admin**, **Cloud Discovery global admin**, and **Cloud Discovery report admin**, as defined in [Built-in admin roles in Defender for Cloud Apps](/defender-cloud-apps/manage-admins#built-in-admin-roles-in-defender-for-cloud-apps).
> - User privacy groups as defined in [Activity privacy](/defender-cloud-apps/activity-privacy)

## What's changed

Learn about the changes that have come with the integration of Defender for Cloud Apps and Microsoft 365 Defender.

### Global search

Global search in Microsoft 365 Defender (using the search bar at the top of the page) now includes an additional searchable entity: it allows you to search for connected apps in Defender for Cloud Apps.

:::image type="content" source="../../media/global-search-apps.png" alt-text="Search for connected apps.":::

### Assets and identities

As part of the creation of a dedicated **Assets** section that spans the entire Microsoft 365 Defender experience, the **Users and Accounts** section of Defender for Cloud Apps is rebranded as the **Identities** section. No changes to functionality are expected.

## Related information

- [Microsoft 365 Defender](microsoft-365-defender.md)
