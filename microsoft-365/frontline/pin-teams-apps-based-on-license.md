---
title: Tailor Teams apps for your frontline workers
author: samanro
ms.author: samanro
ms.reviewer: aaglick
manager: pamgreen
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn about the tailored app experience for frontline workers in Microsoft Teams.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 03/28/2023
---

# Tailor Teams apps for your frontline workers

## Overview

Teams pins apps based on license to give your frontline workers an out-of-the-box experience in Teams that's tailored to their needs.

With the tailored frontline app experience, your frontline workers get the most relevant apps in Teams without any action needed from the admin.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4VuCH]

## Tailored frontline app experience

Apps are pinned to the app bar, which is the bar at the bottom of the Teams mobile clients (iOS and Android) and on the side of the Teams desktop client. The following apps are pinned for users who have an [F license](https://www.microsoft.com/microsoft-365/enterprise/frontline#office-SKUChooser-0dbn8nt):

- [Viva Connections](https://support.microsoft.com/office/your-intranet-is-now-in-microsoft-teams-8b4e7f76-f305-49a9-b6d2-09378476f95b) ([rolling out](#viva-connections-rolling-out))
- [Activity](https://support.microsoft.com/office/explore-the-activity-feed-in-teams-91c635a1-644a-4c60-9c98-233db3e13a56)
- [Chat](https://support.microsoft.com/office/get-started-with-chat-0b506ce2-eb6d-4fca-9668-e56980ba755e)
- [Teams](https://support.microsoft.com/office/teams-and-channels-in-microsoft-teams-c6d0e61d-a61e-44a6-a972-04f2a8fa4155)
- [Walkie Talkie](https://support.microsoft.com/office/get-started-with-teams-walkie-talkie-25bdc3d5-bbb2-41b7-89bf-650fae0c8e0c)
- [Tasks](https://support.microsoft.com/office/use-the-tasks-app-in-teams-e32639f3-2e07-4b62-9a8c-fd706c12c070)
- [Shifts](https://support.microsoft.com/office/what-is-shifts-f8efe6e4-ddb3-4d23-b81b-bb812296b821)
- [Approvals](https://support.microsoft.com/office/what-is-approvals-a9a01c95-e0bf-4d20-9ada-f7be3fc283d3)

**Teams mobile**

:::image type="content" source="media/tailored-teams-apps-mobile.png" alt-text="Screenshot of the tailored frontline app experience on Teams mobile." lightbox="media/tailored-teams-apps-mobile.png":::

**Teams desktop**

:::image type="content" source="media/tailored-teams-apps-desktop.png" alt-text="Screenshot of the tailored frontline app experience on Teams desktop." lightbox="media/tailored-teams-apps-desktop.png":::

## Admin controls

> [!NOTE]
> The **User pinning** setting must be turned on in the global (org-wide default) [app setup policy](/microsoftteams/teams-app-setup-policies) for this feature to take effect.

The tailored frontline app experience is controlled by the **Show tailored apps** org-wide app setting on the [Manage apps](/microsoftteams/manage-apps#manage-org-wide-app-settings) page of the Teams admin center. If the feature is on, all users in your organization who have an F license will get the tailored app experience.

Keep in mind that any custom [app setup policies](/microsoftteams/teams-app-setup-policies) assigned to users take precedence. This means that if a user already has a custom app setup policy assigned to them, the user gets the configuration that's defined in the custom app setup policy. To learn more about how the feature works with Teams app policies, including the global app setup policy, see the [Scenarios](#scenarios) section later in this article.

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

### Viva Connections (rolling out)

> [!NOTE]
>The Frontline Viva Connections experience is currently rolling out. For the details on the rollout refer to the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=99706).

Viva Connections is part of the tailored apps experience. Frontline users who see the tailored app experience will have Viva Connections pinned in the first position on both mobile and desktop.

This experience includes a default dashboard with relevant frontline cards such as Tasks, Shifts, Approvals, and Top News that can be customized to fit the needs of your organization. If your organization has already set up a Viva Connections home site, it will take precedence over the default experience.

## Related articles

- [Manage the Walkie Talkie app in Teams](/microsoftteams/walkie-talkie?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Manage the Tasks app in Teams](/microsoftteams/manage-tasks-app?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Manage the Approvals app in Teams](/microsoftteams/approval-admin?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Manage app setup policies in Teams](/microsoftteams/teams-app-setup-policies)
- [Manage app permission policies in Teams](/microsoftteams/teams-app-permission-policies)
