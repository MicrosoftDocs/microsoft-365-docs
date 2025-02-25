---
title: How to check Microsoft 365 service health
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/27/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: high
f1.keywords:
- CSH
ms.custom:
- Adm_O365
- 'O365P_ServiceHealthModern'
- 'O365M_ServiceHealthModern'
- 'O365E_ViewStatusServices'
- 'O365E_ServiceHealthModern'
- 'seo-marvel-apr2020'
ms.collection:
- scotvorg
- Ent_O365
- M365-subscription-management
- must-keep
search.appverid:
- MET150
- MOE150
- BCS160
- IWA160
ms.assetid: 932ad3ad-533c-418a-b938-6e44e8bc33b0
description: View the health status of Microsoft 365 services before you call support to see if there's an active service interruption.
---

# How to check Microsoft 365 service health

[![Label to let you know the admin center is changing and you can find more details at aka.ms/aboutM365preview.](../media/O365-Admin-AdminCenterChanging.png)](/office365/admin/microsoft-365-admin-center-preview?preserve-view=true&view=o365-worldwide)

You can view the health of your Microsoft services, including Office on the web, Microsoft Teams, Exchange Online, and Microsoft Dynamics 365 on the **Service health** page in the  [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339). If you're experiencing problems with a cloud service, you can check the service health to determine whether this is a known issue with a resolution in progress before you call support or spend time troubleshooting.

If you're unable to sign in to the admin center, you can use the [service status page](https://status.cloud.microsoft) to check for known issues preventing you from logging into your tenant. Also, sign up to follow us at [@MSFT365status](https://twitter.com/MSFT365Status) on **X** (Twitter) to see information on certain events.

## How to check service health

1. Go to the Microsoft 365 admin center at [https://admin.microsoft.com](https://go.microsoft.com/fwlink/p/?linkid=2024339), and sign in with an admin account.

    > [!NOTE]
    > People who are assigned the Service Support admin and Helpdesk admin role can view service health. For more information about roles that can view service health, see [About admin roles](../admin/add-users/about-admin-roles.md?preserve-view=true&view=o365-worldwide#commonly-used-microsoft-365-admin-center-roles).

2. To view service health, in the left-hand navigation of the admin center, go to **Health** > **Service health**, or select the **Service health** card on the **Home dashboard**. The dashboard card indicates whether there's an active service issue and links to the detailed **Service health** page.

3. On the **Service health** page, the health state of each cloud service is shown in a table format.

    :::image type="content" source="../media/sh-page-upper-section-customer-side-issue.png" lightbox="../media/sh-page-upper-section-customer-side-issue.png" alt-text="Screenshot: Page with view of current issues in service health":::

The **Overview** tab (the default view) shows all services, their current health state, and any active incidents or advisories. An icon and status in the **Health** column indicate the state of each service.

The **Issues for your organization to act on** section lists any issues detected in your environment that require your action. If there are no issues in your environment that need action, this section won't be visible.

The **Active issues Microsoft is working on** section lists active incidents and advisories that Microsoft is working to resolve.

The **Issue history** tab shows all incidents and advisories that have been resolved within the last 7 or 30 days.

If you're experiencing an issue with a Microsoft 365 service and you don't see it listed on the Service health page, tell us about it by selecting **Report an issue**, and completing the short form. We'll look at related data and reports from other organizations to see how widespread the issue is, and if it originated with our service. If it did, we'll add it as a new incident or advisory on the **Service health** page, where you can track its resolution. The **Reported issues** tab will show all issues your tenant has reported from this form and the status.

To customize your view of which services show up on the dashboard, select **Customize > Custom view**, and clear the checkboxes for the services you want to filter out of your Service health dashboard view. Make sure that the checkbox is selected for each service that you want to monitor.

To sign up for email notifications of new incidents that affect your tenant and status changes for an active incident, select **Customize > Email**, select **Send me email notifications about service health**, and then specify:

- Up to two email addresses.
- Whether you want notifications for incidents or advisories
- The services for which you want notification

You can also subscribe to email notifications for individual events instead of every event for a service. To do so, select the active issue you want to receive email notification updates for, select **Manage notifications for this issue**, and then specify:

- Up to two email addresses.

> [!NOTE]
> Each admin can have their Preferences set and the above limit of two email address is per admin account.

> [!TIP]
> You can also use the [Microsoft 365 Admin app](https://go.microsoft.com/fwlink/p/?linkid=627216) on your mobile device to view Service health, which is a great way to stay current with push notifications.

### View details of posted service health issue

In the **Active issues Microsoft is working on** section, select the issue title to see the issue detail page. This page shows more information about the issue, including a feed of all the messages posted while we work on a solution.

:::image type="content" source="../media/sh-page-upper-section.png" lightbox="../media/sh-page-upper-section.png" alt-text="Screenshot: Page showing the service advisory":::

The advisory or incident summary provides the following information:

- **Title** - A summary of the problem.
- **ID** - A numeric identifier for the problem.
- **Last updated** - The last time that the service health message was updated.
- **Estimated start time** - The estimated time when the issue started.
- **Affected services** - The names of the affected services.
- **Issue type** - The severity of the issue (incident or advisory).
- **Issue origin** - An indication of whether the issue was found at Microsoft or in your environment.
- **Status** - The current state of the issue.
- **User Impact** - A brief description of the impact this issue has on the end user.
- **All Updates** - We post frequent messages to let you know the progress that we're making in applying a solution.

:::image type="content" source="../media/sh-page-with-issue-details.png" lightbox="../media/sh-page-with-issue-details.png" alt-text="Screenshot: Page showing issue details":::

### Translate service health details

We use machine translation to automatically display messages in your preferred language. Read [Language translation for the Service health page](#language-translation-for-the-service-health-page) for more information on how to set your language.  

### Definitions

Most of the time, services will appear as healthy with no further information. When a service is having a problem, the issue is identified as either an advisory or an incident and shows a current status.

> [!TIP]
> Planned maintenance events aren't shown in service health. You can track planned maintenance events by staying up to date with the **Message center**. Filter to messages categorized as Plan for change to find out when the change is going to happen, its effect, and how to prepare for it. See [Message center in Microsoft 365](https://support.office.com/article/38fb3333-bfcc-4340-a37b-deda509c2093) for more details.

### Incidents and advisories

| Icon | Description |
|:-----|:-----|
|![Information icon for advisory.](../media/a7f5fd21-c760-4948-9bc1-50f7c8070e28.png)|If a service has an advisory shown, we're aware of a problem that is affecting some users, but the service is still available. In an advisory, there's often a workaround to the problem and the problem might be intermittent or is limited in scope and user impact. |
|![Exclamation point icon for incident.](../media/a636db57-6083-44dc-bbd5-556850804f17.png)|If a service has an active incident shown, it's a critical issue and the service or a major function of the service is unavailable. For example, users might be unable to send and receive email or unable to sign-in. Incidents will have noticeable impact to users. When there's an incident in progress, we'll provide updates regarding the investigation, mitigation efforts, and confirmation of resolution in the Service health dashboard. |

### Status definitions

| Status | Definition |
|:-----|:-----|
|**Investigating** | We're aware of a potential issue and are gathering more information about what's going on and the scope of impact. |
|**Service degradation** | We've confirmed that there's an issue that might affect use of a service or feature. You might see this status if a service is performing more slowly than usual, there are intermittent interruptions, or if a feature isn't working, for example. |
|**Service interruption** | You'll see this status if we determine that an issue affects the ability for users to access the service. In this case, the issue is significant and can be reproduced consistently. |
|**Restoring service** | The cause of the issue has been identified, we know what corrective action to take, and are in the process of bringing the service back to a healthy state. |
|**Extended recovery** | This status indicates that corrective action is in progress to restore service to most users but will take some time to reach all the affected systems. You might also see this status if we've made a temporary fix to reduce impact while we wait to apply a permanent fix. |
|**Investigation suspended** | If our detailed investigation of a potential issue results in a request for additional information from customers to allow us to investigate further, you'll see this status. If we need you to act, we'll let you know what data or logs we need. |
|**Service restored** | We've confirmed that corrective action has resolved the underlying problem and the service has been restored to a healthy state. To find out what went wrong, view the issue details. |
|**False positive** | After a detailed investigation, we've confirmed the service is healthy and operating as designed. No impact to the service was observed or the cause of the incident originated outside of the service. Incidents and advisories with this status appear in the history view until they expire (after the period of time stated in the final post for that event). |
|**Post-incident report published** | We've published a Post Incident Report for a specific issue that includes root cause information and next steps to ensure a similar issue doesn't reoccur. |

### Message Post Types

| Type | Definition |
|:-----|:-----|
|**Quick Update** | Short and frequent incremental updates for broadly impacting incidents, available to all customers. |
|**Additional Details** | These additional posts will provide richer technical and resolution details to offer deeper visibility into the handling of incidents. This is available for tenants that meet the same requirements outlined for [Exchange Online monitoring](/microsoft-365/enterprise/microsoft-365-exchange-monitoring#requirements), |

### History

Service health lets you look at your current health status and view the history of any service advisories and incidents that have affected your tenant in the past 30 days. To view the past health of all services, select **History** view.

For more information about our commitment to uptime, see [Transparent operations from Microsoft 365](/office365/servicedescriptions/office-365-platform-service-description/service-health-and-continuity).

## Language translation for the Service health page

Service health posts are written in English due to the timeliness of the information we're posting but can be automatically displayed in the language specified by your personal language settings for Microsoft 365. If you set your preferred language to anything other than English, you'll see an option in the Service health page to automatically translate posts. The messages are machine translated to your preferred language, meaning that a computer did the translation.
Before you can choose your language settings, you have to set your preferred language. No translation options are shown when your language is set to English. You can't specify a preferred language for others; each person has to change this setting for themselves.

Before you can choose your language settings, you have to set your preferred language. No translation options are shown when your language is set to English. You can't specify a preferred language for others; each person has to change this setting for themselves.

## Set your preferred language

1. Go to the Microsoft 365 admin center [https://admin.microsoft.com](https://go.microsoft.com/fwlink/p/?linkid=2024339), or home page, select the settings icon in the upper-right corner of the page.

1. Under **Language and time zone**, select **View all** to show the available options. Select your desired language from the drop-down menu, and then select **Save**. Microsoft 365 will try to refresh and display the new language. If that doesn't happen immediately or if it seems that it's taking too long, you can either refresh your browser or sign out and then sign back in.

## Machine translation in Service health dashboard

When your preferred language isn't set to English, the option to translate the post into your language is available.

To set Service health posts to automatically machine-translate and display in your preferred language, go to **Health > Service health** dashboard. You'll see a button to toggle automatic translation on or off. When this setting is off, posts are shown in English. When this setting is on, messages display in your preferred language. The setting you choose will persist for each visit.  

You also can toggle between seeing details for a specific issue in English and your preferred language in the issue details page that appears after you click the title of an issue.

## Related articles

- [Message center Preferences](../admin/manage/message-center.md?preserve-view=true&view=o365-worldwide#preferences)
- [How to check Windows release health on admin center](/windows/deployment/update/check-release-health)
