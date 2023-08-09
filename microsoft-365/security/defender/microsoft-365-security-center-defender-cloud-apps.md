---
title: Microsoft Defender for Cloud Apps in Microsoft 365 Defender
description: Learn about changes from the Microsoft Defender for Cloud Apps to Microsoft 365 Defender
keywords: Getting started with Microsoft 365 Defender, Microsoft Defender for Cloud Apps
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: bagol
author: batamig
manager: dansimp
ms.date: 08/04/2022
audience: ITPro
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
ms.collection: 
- m365-security 
- tier2
ms.custom: admindeeplinkDEFENDER
---

# Microsoft Defender for Cloud Apps in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)
- [Microsoft Defender for Cloud Apps](/defender-cloud-apps/)

Microsoft Defender for Cloud Apps is now part of Microsoft 365 Defender. The Microsoft 365 Defender portal allows security admins to perform their security tasks in one location. This simplifies workflows, and adds the functionality of the other Microsoft 365 Defender services. Microsoft 365 Defender will be the home for monitoring and managing security across your Microsoft identities, data, devices, apps, and infrastructure.

SOC analysts will be able to triage, investigate and hunt across all Microsoft 365 Defender workloads, including cloud apps.

Defender for Cloud Apps **alerts** will continue to appear in Microsoft 365 Defender's incidents queue and alerts queue, but now with relevant content inside the alert pages available in the Microsoft 365 Defender portal, in a unified format with the proper adaptations to each alerts type. For more information, see [Investigate incidents in Microsoft 365 Defender](/microsoft-365/security/defender/investigate-incidents).

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
| Policies | Cloud apps -> Policy management. Note: Azure AD identity protection policies will be removed gradually from the Cloud apps policies list. To configure alerts from these policies, see [Configure AAD IP alert service](investigate-alerts.md#configure-aad-ip-alert-service) |
| Templates | Cloud apps -> Policy templates |

### Settings

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/defender-cloud-apps-m365-defender-settings.png" alt-text="The new locations for Settings in the Microsoft 365 Defender portal" lightbox="../../media/defender-cloud-apps-m365-defender-settings.png":::

| Defender for Cloud Apps | Microsoft 365 Defender |
|---------|---------|
| Settings | Settings -> Cloud apps |
| Settings/Governance log | Cloud apps -> Governance log |
| Security extensions -> Playbooks | Settings -> Cloud apps |
| Security extensions -> SIEM  agents | Settings -> Cloud apps |
| Security extensions -> External  DLP | Settings -> Cloud apps |
| Security extensions -> API  tokens | Settings -> Cloud apps |
| Manage admin access -> Admin roles | Permissions-> Cloud apps-> Roles |
| Manage admin access -> Activity privacy permissions | Permissions-> Cloud apps-> Activity privacy permissions |
| Exported reports | Reports -> Cloud apps -> Exported reports |
| Scoped deployment and privacy | Settings -> Cloud Apps -> Scoped deployment and privacy |
| Connected Apps / App connectors | Settings -> Cloud Apps -> Connected apps -> App Connectors |
| Conditional Access App Control | Settings -> Cloud apps -> Connected apps -> Conditional Access App Control apps |
| IP address ranges              | Settings -> Cloud apps                                      |
| User groups                    | Settings -> Cloud apps                                      |

The capabilities on the following pages are fully integrated into Microsoft 365 Defender, and therefore don't have their own standalone experience in Microsoft 365 Defender:
  
- [Settings > Azure AD Identity Protection](investigate-alerts.md)
- [Settings > App Governance](/defender-cloud-apps/app-governance-get-started)
- [Settings > Microsoft Defender for Identity](/defender-for-identity/deploy-defender-identity)

## Limitations

- The new Defender for Cloud Apps experience in the Microsoft 365 Defender portal is currently available for all users detailed in [Manage admin access](/defender-cloud-apps/manage-admins), except for:
  - **App/Instance admin**, **User group admin**, **Cloud Discovery global admin**, and **Cloud Discovery report admin**, as defined in [Built-in admin roles in Defender for Cloud Apps](/defender-cloud-apps/manage-admins#built-in-admin-roles-in-defender-for-cloud-apps).
  - User privacy groups as defined in [Activity privacy](/defender-cloud-apps/activity-privacy)

## What's changed

Learn about the changes that have come with the integration of Defender for Cloud Apps and Microsoft 365 Defender.

### Global search

Global search in Microsoft 365 Defender (using the search bar at the top of the page) now includes an additional searchable entity: it allows you to search for connected apps in Defender for Cloud Apps.

:::image type="content" source="../../media/global-search-apps.png" alt-text="Search for connected apps.":::

### Assets and identities

As part of the creation of a dedicated **Assets** section that spans the entire Microsoft 365 Defender experience, the **Users and Accounts** section of Defender for Cloud Apps is rebranded as the **Identities** section. No changes to functionality are expected.

### Redirecting accounts from Microsoft Defender for Cloud Apps to Microsoft 365 Defender

You can route accounts to Microsoft 365 Defender by enabling automatic redirection from the former Microsoft Defender for Cloud Apps portal. For more information, see [Redirecting accounts from Microsoft Defender for Cloud Apps to Microsoft 365 Defender](microsoft-365-security-mda-redirection.md).

### Preview features in Defender for Cloud Apps

Turn on the preview experience setting to be among the first to try upcoming features.

> [!NOTE]
> This feature is now available in public preview.

1. In the navigation pane, select **Settings**.
1. Select **Cloud apps**.
1. Select **Preview features** > **Enable preview features**.
1. Select **Save**.

You'll know you have preview features turned on when you see that the **Enable preview features** check box is selected.

:::image type="content" source="../../media/preview-features.png" alt-text="Screenshot that shows how to enable preview features.":::

For more information, see [Microsoft Defender for Cloud Apps preview features](/defender-cloud-apps/preview-features).

## Related videos

Learn how to protect your cloud apps in Microsoft 365 Defender:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE59yVU]

## Related information

- [Microsoft 365 Defender](microsoft-365-defender.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
