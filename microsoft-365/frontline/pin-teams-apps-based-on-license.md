---
title: Tailor Teams apps for your frontline workers
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: arnavgupta
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn about the tailored app experience for frontline workers in Microsoft Teams.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
  - essentials-manage
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/18/2024
---

# Tailor Teams apps for your frontline workers

## Overview

Teams pins apps based on license to give your frontline workers an out-of-the-box experience in Teams that's tailored to their needs.

With the tailored frontline app experience, your frontline workers get the most relevant apps in Teams without any action needed from the admin.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=e1fed07e-4757-442b-9213-9f2631f7554d]

## Tailored frontline app experience

Apps are pinned to the app bar, which is the bar at the bottom of the Teams mobile clients (iOS and Android) and on the side of the Teams desktop client. The following apps are pinned for users who have an [F license](https://www.microsoft.com/microsoft-365/enterprise/frontline#office-SKUChooser-0dbn8nt):

- [Viva Connections](#viva-connections)
- [Activity](https://support.microsoft.com/office/explore-the-activity-feed-in-teams-91c635a1-644a-4c60-9c98-233db3e13a56)
- [Chat](https://support.microsoft.com/office/get-started-with-chat-0b506ce2-eb6d-4fca-9668-e56980ba755e)
- [Teams](https://support.microsoft.com/office/teams-and-channels-in-microsoft-teams-c6d0e61d-a61e-44a6-a972-04f2a8fa4155)
- [Walkie Talkie](https://support.microsoft.com/office/get-started-with-teams-walkie-talkie-25bdc3d5-bbb2-41b7-89bf-650fae0c8e0c)
- [Planner](https://support.microsoft.com/office/getting-started-with-planner-in-teams-7a5e58f1-2cee-41b0-a41d-55d512c4a59c)
- [Shifts](https://support.microsoft.com/office/what-is-shifts-f8efe6e4-ddb3-4d23-b81b-bb812296b821)
- [Approvals](https://support.microsoft.com/office/what-is-approvals-a9a01c95-e0bf-4d20-9ada-f7be3fc283d3)

:::image type="content" source="media/tailored-teams-apps.png" alt-text="Screenshot of the tailored frontline app experience on Teams mobile and Teams desktop." lightbox="media/tailored-teams-apps.png":::

## Admin controls

> [!NOTE]
> The **User pinning** setting must be turned on in the global (org-wide default) [app setup policy](/microsoftteams/teams-app-setup-policies) for this feature to take effect.

The tailored frontline app experience is controlled by the **Show tailored apps** org-wide app setting on the [Manage apps](/microsoftteams/manage-apps#manage-org-wide-app-settings) page of the Teams admin center. If the feature is on, all users in your organization who have an F license get the tailored app experience.

Keep in mind that any custom [app setup policies](/microsoftteams/teams-app-setup-policies) assigned to users take precedence. This means that if a user already has a custom app setup policy assigned to them, the user gets the configuration defined in the custom app setup policy. To learn more about how the feature works with Teams app policies, including the global app setup policy, see the [Scenarios](#scenarios) section later in this article.

This feature is on by default. However, if you don't want the tailored frontline app experience provided by Microsoft, you can turn off the feature. To turn the feature off or on:

1. In the left navigation of the Microsoft Teams admin center, go to **Teams apps** > **Manage apps**, and then select **Org-wide app settings**.
2. Under **Tailored apps**, switch the **Show tailored apps** toggle to **Off** or **On**.

    :::image type="content" source="media/tailored-teams-apps-admin-center.png" alt-text="Screenshot of the Show tailored apps setting on the Manage apps page of the Teams admin center" lightbox="media/tailored-teams-apps-admin-center.png":::

## Scenarios

### How does the tailored frontline app experience affect my global app setup policy?

Learn how the tailored frontline app experience works together with the global app setup policy. The scenarios in this table apply to frontline workers who have an F license and the global app setup policy, with **User pinning** turned on.

|If... |Then... |
|---------|---------|
|A frontline worker has the global app setup policy and the feature is off. |The frontline worker gets the apps defined in the global app setup policy.|
|A frontline worker has the global app setup policy and the feature is on.     | The frontline worker gets the tailored frontline app experience. Apps defined in the global app setup policy are pinned below the tailored apps.      |
|You update the global app setup policy and the feature is on.     |The frontline worker gets the tailored frontline app experience and the apps defined in the global app setup policy are pinned below the tailored apps.         |
|A frontline worker has the global app setup policy and **User pinning** is turned off. |The frontline worker gets the apps defined in the global app setup policy.|
|A frontline worker has the global app setup policy, and the global app setup policy is changed to include a line-of-business (LOB) app in the second position in the app list. |The LOB app is pinned below the tailored apps. The frontline worker can change the app order if **User pinning** is on.         |
|A frontline worker has the global setup policy and the global app setup policy is changed to include Shifts in the first position.  |Shifts is pinned to the sixth position, as defined by the tailored frontline app experience. The frontline worker can change the app order if **User pinning** is on.          |

### How does the tailored frontline app experience work with other Teams app policies?

Learn how the tailored frontline app experience works with other Teams app policies.

|If...  |Then... |
|---------|---------|
The feature is off.   | The frontline worker gets the apps defined in the global app setup policy or custom app setup policy assigned to them.          |
|A frontline worker has a custom app setup policy and the feature is on.    |The frontline worker gets the apps defined in the custom app setup policy.          |
|An app in the tailored frontline app experience is blocked for a user or for your organization.      |The tailored frontline app experience honors the [app permission policy](/microsoftteams/teams-app-permission-policies). If an app is blocked, the frontline worker won't see the blocked app.           |
|An app in the tailored frontline app experience is already defined in an app setup policy and the feature is on. |The app is pinned based on the order defined by the tailored apps list.        |
|A user has an E, A, or G license and the feature is on.   | The user doesn't get the tailored frontline app experience. Currently, the experience applies only to users who have an F license.        |

> [!NOTE]
> You can't change the apps or order of apps in the tailored frontline app experience. For now, if you want to make changes, you can set up your own custom experience. To do this, first turn off the feature. Then, [create a custom app setup policy](/microsoftteams/teams-app-setup-policies), and [assign it to users or groups](/microsoftteams/assign-policies-users-and-groups).

### Viva Connections

Viva Connections is part of the tailored apps experience. Frontline users who see the tailored app experience have Viva Connections pinned in the first position on both mobile and desktop.

This experience includes a default dashboard with relevant frontline cards such as Shifts, Planner, Approvals, and Top News that can be customized to fit the needs of your organization. If your organization already set up a Viva Connections home site, it takes precedence over the default experience.

 [Learn more about Viva Connections](https://support.microsoft.com/office/access-and-use-the-viva-connections-app-in-microsoft-teams-8b4e7f76-f305-49a9-b6d2-09378476f95b). 

## Related articles

- [Manage the Walkie Talkie app in Teams](/microsoftteams/walkie-talkie?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Manage the Planner app in Teams](/microsoftteams/manage-planner-app?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Manage the Approvals app in Teams](/microsoftteams/approval-admin?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Overview of Viva Connections](/viva/connections/viva-connections-overview)
- [Use app setup policies to pin and auto install apps for users](/microsoftteams/teams-app-setup-policies)
- [Use app permission policies to control user access to apps](/microsoftteams/teams-app-permission-policies)
