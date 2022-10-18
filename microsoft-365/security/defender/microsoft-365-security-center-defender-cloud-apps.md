---
title: Microsoft Defender for Cloud Apps in Microsoft 365 Defender (Preview)
description: Learn about changes from the Microsoft Defender for Cloud Apps to Microsoft 365 Defender
keywords: Getting started with Microsoft 365 Defender, Microsoft Defender for Cloud Apps
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: dacurwin
author: dcurwin
manager: dansimp
ms.date: 08/04/2022
audience: ITPro
ms.topic: article
search.appverid: 
- MOE150
- MET150
ms.collection: 
- M365-security-compliance 
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

The images and the tables below list the changes in navigation between Microsoft Defender for Cloud Apps and Microsoft 365 Defender.

### Discover

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/defender-cloud-apps-m365-defender-discover.png" alt-text="The new locations for Cloud Discovery features in the Microsoft 365 Defender portal" lightbox="../../media/defender-cloud-apps-m365-defender-discover.png":::

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

### Investigate

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/defender-cloud-apps-m365-defender-investigate.png" alt-text="The new locations for Investigation features in the Microsoft 365 Defender portal" lightbox="../../media/defender-cloud-apps-m365-defender-investigate.png":::

| Defender for Cloud Apps | Microsoft 365 Defender |
|---------|---------|
| Activity log | Cloud apps -> Activity log |
| Files | Cloud apps -> Files |
| Users and accounts | Assets -> Identities |
| Security configuration | available in [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) |
| Identity security posture | [Microsoft Defender for Identity's identity security posture assessments](/defender-for-identity/isp-overview) |
| OAuth apps | Cloud apps -> OAuth apps |
| Connected apps | Settings -> Cloud apps -> Connected apps |

### Control

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/defender-cloud-apps-m365-defender-control.png" alt-text="The new locations for Control features in the Microsoft 365 Defender portal" lightbox="../../media/defender-cloud-apps-m365-defender-control.png":::

| Defender for Cloud Apps | Microsoft 365 Defender |
|---------|---------|
| Policies | Cloud apps -> Policy management |
| Templates | Cloud apps -> Policy templates |

### Settings

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/defender-cloud-apps-m365-defender-settings.png" alt-text="The new locations for Settings in the Microsoft 365 Defender portal" lightbox="../../media/defender-cloud-apps-m365-defender-settings.png":::

| Defender for Cloud Apps | Microsoft 365 Defender |
|---------|---------|
| Settings | Settings -> Cloud apps |
| System  settings | Settings -> Cloud apps |
| Settings/Governance log | Cloud apps -> Governance log |
| Security  extensions | Settings -> Cloud apps |
| Playbooks | Settings -> Cloud apps |
| SIEM  agents | Settings -> Cloud apps |
| External  DLP | Settings -> Cloud apps |
| API  tokens | Settings -> Cloud apps |
| Manage  admin access | Permissions-> Cloud apps-> Roles |
| Exported  reports | Reports -> Cloud apps -> Exported reports |
| Scoped  deployment and privacy | Permissions -> Cloud apps -> Activity Privacy permissions |
| Connected Apps/App connectors | Settings -> Cloud Apps -> Connected Apps |
| Conditional Access App Control | Settings -> Cloud apps -> Conditional Access App Control apps |
| IP  address ranges              | Settings -> Cloud apps                                      |
| User  groups                    | Settings -> Cloud apps                                      |

## Limitations

- The new Defender for Cloud Apps experience in the Microsoft 365 Defender portal is currently available for all users detailed in [Manage admin access](/defender-cloud-apps/manage-admins), except for:
  - **App/Instance admin**, **User group admin**, **Cloud Discovery global admin**, and **Cloud Discovery report admin**, as defined in [Built-in admin roles in Defender for Cloud Apps](/defender-cloud-apps/manage-admins#built-in-admin-roles-in-defender-for-cloud-apps).
  - User privacy groups as defined in [Activity privacy](/defender-cloud-apps/activity-privacy)

- The new experience is currently available for full Microsoft Defender for Cloud Apps licenses only.
- New customers need to first sign in to the Microsoft Defender for Cloud Apps portal.
- Some links may redirect you to the Defender for Cloud Apps portal.

## What's changed

Learn about the changes that have come with the integration of Defender for Cloud Apps and Microsoft 365 Defender.

### Global search

Global search in Microsoft 365 Defender (using the search bar at the top of the page) now includes an additional searchable entity: it allows you to search for connected apps in Defender for Cloud Apps.

:::image type="content" source="../../media/global-search-apps.png" alt-text="Search for connected apps.":::

### Assets and identities

As part of the creation of a dedicated **Assets** section that spans the entire Microsoft 365 Defender experience, the **Users and Accounts** section of Defender for Cloud Apps is rebranded as the **Identities** section. No changes to functionality are expected.

## Related videos

- [Protecting cloud apps in Microsoft 365 Defender](https://www.microsoft.com/videoplayer/embed/RE59yVU)

## Related information

- [Microsoft 365 Defender](microsoft-365-defender.md)
