---
title: Manage the Shifts app for your organization
author: mkbond007
ms.author: mabond
ms.reviewer: aaku
manager: serdars
ms.topic: article
audience: admin
ms.service: msteams
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
  - Microsoft Cloud for Retail
description: Learn how to set up and manage the Shifts app in Teams for frontline workers in your organization.
f1.keywords:
- NOCSH
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_FLW
  - microsoftcloud-healthcare
  - microsoftcloud-retail
appliesto: 
  - Microsoft Teams
ms.custom: seo-marvel-mar2020
---

# Manage the Shifts app for your organization in Microsoft Teams

## Overview of Shifts

The Shifts app in Microsoft Teams keeps frontline workers connected and in sync. It's built mobile first for fast and effective time management and communication for teams. Shifts let frontline workers and their managers use their mobile devices to manage schedules and keep in touch.

- Managers create, update, and manage shift schedules for teams. They can send messages to one person ("there's a spill on the floor") or the entire team ("the regional GM is arriving in 20 minutes"). They can also send policy documents, news bulletins, and videos.
- Employees view their upcoming shifts, see who else is scheduled for the day, request to swap or offer a shift, and request time off.

It's important to know that Shifts currently don't support guests. This means that guests on a team can't be added to or use shift schedules when Guest access is turned on in Teams.

> [!Note]
> For details about Shifts capabilities on different platforms, see [Teams features by platform](https://support.microsoft.com/office/teams-features-by-platform-debe7ff4-7db4-4138-b7d0-fcc276f392d3).

## Availability of Shifts

Shifts is available in all Enterprise SKUs where Teams is available.

> [!NOTE]
> Shifts is available in Government Community Cloud (GCC) environments, but not in GCC High or DoD environments.

## Location of Shifts data

Shifts data is currently stored in Azure in data centers in Asia Pacific (APAC), the European Union (EU), and North America. For more information about where data is stored, see [Where is my data](http://o365datacentermap.azurewebsites.net/)?

To learn more about Shifts data, including storage, retention, retrieval, and encryption of Shifts data, see [Shifts data FAQ](shifts-data-faq.md).

## Set up Shifts

### Enable or disable Shifts in your organization

Shifts is enabled by default for all Teams users in your organization. You can turn off or turn on the app at the org level on the [Manage apps](../../manage-apps.md) page in the Microsoft Teams admin center.

1. In the left navigation of the Microsoft Teams admin center, go to **Teams apps** > **Manage apps**.
2. In the list of apps, search for the Shifts app, select it, and then switch the **Status** toggle to **Blocked** or **Allowed**.

### Enable or disable Shifts for specific users in your organization

To allow or block specific users in your organization from using Shifts, make sure Shifts is turned on for your organization on the [Manage apps](../../manage-apps.md) page. Then create a custom app permission policy and assign it to those users. To learn more, see [Manage app permission policies in Teams](../../teams-app-permission-policies.md).

### Pin Shifts to Teams

#### Use the Tailored frontline app experience to pin Shifts and other apps to Teams

The tailored frontline app experience in Teams pins the most relevant apps in Teams for users who have an [F license](https://www.microsoft.com/microsoft-365/enterprise/frontline#office-SKUChooser-0dbn8nt). Pinned apps include Shifts, Walkie Talkie, Tasks, and Approvals. By default, this feature is on, giving your frontline workers an out-of-the-box experience that’s tailored to their needs.

The apps are pinned to the app bar—the bar on the side of the Teams desktop client and at the bottom of the Teams mobile clients—where users can quickly and easily access them.

To learn more, including how the experience works with app policies that you set, see [Tailor Teams apps for your frontline workers](../../pin-teams-apps-based-on-license.md).  

#### Use an app setup policy to pin Shifts to Teams

App setup policies let you customize Teams to pin the apps that are most important for your users.

You can create a [custom app setup policy](../../teams-app-setup-policies.md) by adding the Shifts app, and then [assign the policy](../../assign-policies-users-and-groups.md) to your users. Or, you can use the app setup policy that's part of the Frontline Worker and Frontline Manager policy packages.

A [policy package](../../manage-policy-packages.md) in Teams is a collection of predefined policies and policy settings that you can assign to users who have similar roles in your organization. The set of policies in the Frontline Worker and Frontline Manager policy packages include an app setup policy that pins the Shifts app and other apps that support communication and collaboration activities for that role.

We recommend using the Frontline Worker and Frontline Manager policy packages as they simplify, streamline, and help provide consistency when managing policies for your frontline workforce.

## Search the audit log for Shifts events

**(In preview)**

You can search the audit log to view Shifts activity in your organization.  To learn more about how to search the audit log and to see a list of [Shifts activities](../../audit-log-events.md#shifts-in-teams-activities) that are logged in the audit log, see [Search the audit log for events in Teams](../../audit-log-events.md).

Before you can search the audit log, you have to first turn on auditing in the [Security & Compliance Center](https://protection.office.com). To learn more, see [Turn audit log search on or off](https://support.office.com/article/Turn-Office-365-audit-log-search-on-or-off-e893b19a-660c-41f2-9074-d3631c95a014). Keep in mind that audit data is only available from the point at which you turned on auditing.

## Related articles

- [Shifts for Teams](../shifts-for-teams-landing-page.md)
- [Shifts data FAQ](shifts-data-faq.md)
- [Shifts connectors](shifts-connectors.md)
- [Shifts Help for frontline workers](https://support.office.com/article/apps-and-services-cc1fba57-9900-4634-8306-2360a40c665b)
- [Assign policies to your users in Teams](../../policy-assignment-overview.md)
