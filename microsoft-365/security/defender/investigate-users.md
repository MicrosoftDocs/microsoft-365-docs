---
title: Investigate users in Microsoft Defender XDR
description: Investigate users for an incident in the Microsoft Defender portal.
keywords: security, malware, Microsoft 365, M365, security center, monitor, report, identities, data, devices, apps, incident, analyze, response
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: diannegali
author: diannegali
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier2
ms.topic: conceptual
search.appverid: met150
ms.custom: seo-marvel-jun2020
ms.date: 08/04/2023
appliesto: Microsoft Defender XDR and Microsoft Sentinel in the Microsoft Defender portal
---

# Investigate users in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

The user entity page in the Microsoft Defender portal helps you in your investigation of user entities. The page has all the important information about each entity. If an alert or incident indicates that a user might be compromised or is suspicious, check and investigate the user profile.

You can find user entity information in the following views:

- Identities page
- Alerts queue
- Any individual alert/incident
- Devices page
- Activity log
- Advanced hunting queries
- Action center

Wherever user entities appear in these views, select the entity to view the **User** page, which displays more details about the user. For example, you can see the details of user accounts identified in the alerts of an incident in the Microsoft Defender portal at **Incidents & alerts > Incidents > *incident* > Assets > Users**.

:::image type="content" source="../../media/investigate-users/user-incident-assets.png" alt-text="The Users page for an incident in the Microsoft Defender portal.":::

When you investigate a specific user entity, you see the following tabs on its entity page:

- [Overview](#overview), including entity details, incident and alerts visual view, investigation priority, and scored timeline
- [Incidents and alerts](#incidents-and-alerts) tab
- [Observed in organization](#observed-in-organization) tab
- [Tmeline](#timeline) tab
- [Sentinel events](#sentinel-events) tab

> [!NOTE]
> The user page shows the Microsoft Entra organization as well as groups, helping you understand the groups and permissions associated with a user.

## Overview

### Entity details

The **Entity details** panel on the left side of the page provides information about the user, such as the Microsoft Entra identity risk level, the number of devices the user is signed in to, when the user was first and last seen, the user's accounts, groups that the user belongs to, contact information, and more. You see other details depending on the integration features you enabled.

### Visual view of incidents and alerts

This card includes all incidents and alerts associated with the user entity, grouped by severity.

### Investigation priority

This card includes the user entity's calculated investigation priority score breakdown, and a two-week trend for that score, including the percentile of the score in relation to the tenant.

### Active directory account controls

This card surfaces Microsoft Defender for Identity security settings that may need your attention. You can see important flags about the user's account settings, such as if the user can press enter to bypass the password, and if the user has a password that never expires, etc.

For more information, see [User Account Control flags](/windows/win32/adschema/a-useraccountcontrol).

### Scored activities

This card includes all activities and alerts contributing to the entity's investigation priority score over the last seven days.

### Organization tree

This section shows the user entity's place in the organizational hierarchy as reported by Microsoft Defender for Identity.

### Account tags

Microsoft Defender for Identity pulls tags out of Active Directory to give you a single interface for monitoring your Active Directory users and entities. Tags provide you with details from Active Directory about the entity, and include:

|Name | Description |
|-----|-------------|
| **New** | Indicates that the entity was created less than 30 days ago. |
| **Deleted** | Indicates that the entity was permanently deleted from Active Directory. |
| **Disabled** |  Indicates that the entity is currently disabled in Active Directory. The *disabled* attribute is an Active Directory flag that's available for user accounts, computer accounts, and other objects to indicate that the object is not currently in use. <br><br>When an object is disabled, it can't be used to sign in or perform actions in the domain.|
| **Enabled** | Indicates that the entity is currently enabled in Active Directory, indicating that the entity is currently in use, and can be used to sign in or perform actions in the domain.  |
| **Expired** |  Indicates that the entity is expired in Active Directory. When a user account is expired, the user is no longer able to log in to the domain or access any network resources. The expired account is essentially treated as if it were disabled, but with an explicit expiration date set. <br><br>Any services or applications that the user was authorized to access may also be affected, depending on how they are configured. |
| **Honeytoken** |   Indicates that the entity is manually tagged as a honeytoken. |
| **Locked** |  Indicates that the entity supplied the wrong password too many times, and is now locked. |
| **Partial** | Indicates that the user, device, or group is not in synch with the domain, and is partially resolved via a global catalog. In this case, some attributes aren't available. |
| **Unresolved** |  Indicates that the device doesn't resolve to a valid identity in the Active Directory forest. No directory information is available. |
| **Sensitive** |  Indicates that the entity is considered as sensitive. |

For more information, see [Defender for Identity entity tags in Microsoft Defender XDR](/defender-for-identity/entity-tags).

> [!NOTE]
> The organization tree section and the account tags are available when a Microsoft Defender for Identity license is available.

:::image type="content" source="../../media/investigate-users/user-incident-overview.png" alt-text="A specific user's page in the Microsoft Defender portal" lightbox="../../media/investigate-users/user-incident-overview.png":::

## Incidents and alerts

You can see all active incidents and alerts involving the user from the last six months in this tab. All the information from the main incidents and alerts queues is shown here. Select an incident or alert to [open the full investigation page](incidents-overview.md).

:::image type="content" source="../../media/investigate-users/user-incident-alertstab.png" alt-text="The user account's related alerts seen in the Alerts tab in the Microsoft Defender portal" lightbox="../../media/investigate-users/user-incident-alertstab.png":::

## Observed in organization

- **Devices**: this section shows all the devices the user entity signed into in the prior 180 days, indicating the most and least used.

- **Locations**: this section shows all the observed locations for the user entity in the last 30 days.

- **Groups**: this section shows all observed on-premises groups for the user entity, as reported by Microsoft Defender for Identity.

- **Lateral movement paths**: this section shows all profiled lateral movement paths from the on-premises environment, as detected by Defender for Identity.

> [!NOTE]
> Groups and lateral movement paths are available when a Microsoft Defender for Identity license is available.

Selecting the **Lateral movements** tab lets you view a fully dynamic and clickable map where you can see the lateral movement paths to and from a user. An attacker can use the path information to infiltrate your network.

The map provides a list of other devices or users an attacker can take advantage of to compromise a sensitive account. If the user has a sensitive account, you can see how many resources and accounts are directly connected.

The lateral movement path report, which can be viewed by date, is always available to provide information about the potential lateral movement paths discovered and can be customized by time. Select a different date using **View a different date** to view previous lateral movement paths found for an entity. The graph only displays if a potential lateral movement path has been found for an entity in the past two days.

:::image type="content" source="../../media/investigate-users/user-incident-observed.png" alt-text="The Observed in organization view showing device, group, location, and lateral movement paths for a user in the Microsoft Defender portal" lightbox="../../media/investigate-users/user-incident-observed.png":::

## Timeline

The timeline displays user activities and alerts observed from a user's identity in the last 30 days. It unifies the user's identity entries across Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Microsoft Defender for Endpoint workloads. By using the timeline, you can focus on activities a user performed or were performed on them in specific timeframes.

For users of the unified SOC platform to see alerts from Microsoft Sentinel based on data sources other than the ones in the previous paragraph, they can find these alerts and other information in the **Sentinel events** tab, [described below](#sentinel-events).

- **Custom time range picker:** You can choose a timeframe to focus your investigation on the last 24 hours, the last 3 days and so on. Or you can choose a specific timeframe by clicking on **Custom range**. For example:

  :::image type="content" source="../../media/image.png" alt-text="Screenshot that shows how to choose time frame." lightbox="../../media/image.png":::

- **Timeline filters:** In order to improve your investigation experience, you can use the timeline filters: Type (Alerts and/or user's related activities), Alert severity, Activity type, App, Location, Protocol. Each filter depends on the others, and the options in each filter (drop-down) only contains the data that is relevant for the specific user.

- **Export button:** You can export the timeline to a CSV file. Export is limited to the first 5000 records and contains the data as it displays in the UI (same filters and columns).

- **Customized columns:** You can choose which columns to expose in the timeline by selecting the **Customize columns** button. For example:

  :::image type="content" source="../../media/image2.png" alt-text="Screenshot that shows the user's image." lightbox="../../media/image2.png":::

### What data types are available?

The following data types are available in the timeline:

- A user's impacted alerts
- Active Directory and Microsoft Entra activities
- Cloud apps' events
- Device logon events
- Directory services changes

### What information is displayed?

The following information is displayed in the timeline:

- Date and time of the activity
- Activity/alert description
- Application that performed the activity
- Source device/IP address
- [MITRE ATT&CK](https://attack.mitre.org/) techniques
- Alert severity and status
- Country/region where the client IP address is geolocated
- Protocol used during the communication
- Target device (optional, viewable by customizing columns)
- Number of times the activity happened (optional, viewable by customizing columns)

For example:

:::image type="content" source="../../media/investigate-users/user-incident-timeline.png" alt-text="Screenshot of the Timeline tab." lightbox="../../media/investigate-users/user-incident-timeline.png":::

> [!NOTE]
> Microsoft Defender XDR can display date and time information using either your local time zone or UTC. The selected time zone will apply to all date and time information shown in the Identity timeline.
>
> To set the time zone for these features, go to **Settings** \> **Security center** \> **Time zone**.

## Sentinel events

If your organization onboarded Microsoft Sentinel to the Defender portal, this additional tab is on the user entity page. This tab imports the [User entity page from Microsoft Sentinel](/azure/sentinel/entity-pages).

### Sentinel timeline

This timeline shows alerts associated with the user entity. These alerts include those seen on the **Incidents and alerts** tab and those created by Microsoft Sentinel from third-party, non-Microsoft data sources.

This timeline also shows [bookmarked hunts](/azure/sentinel/bookmarks) from other investigations that reference this user entity, user activity events from external data sources, and unusual behaviors detected by Microsoft Sentinel's [anomaly rules](/azure/sentinel/soc-ml-anomalies).

### Insights

Entity insights are queries defined by Microsoft security researchers to help you investigate more efficiently and effectively. These insights automatically ask the big questions about your user entity, providing valuable security information in the form of tabular data and charts. The insights include data regarding sign-ins, group additions, anomalous events and more, and include advanced machine learning algorithms to detect anomalous behavior.

The following are some of the insights shown:

- User peers based on security groups membership.
- Actions by account.
- Actions on account.
- Event logs cleared by user.
- Group additions.
- Anomalously high office operation count.
- Resource access.
- Anomalously high Azure sign-in result count.
- UEBA insights.
- User access permissions to Azure subscriptions.
- Threat indicators related to user.
- Watchlist insights (Preview).
- Windows sign-in activity.

The insights are based on the following data sources:

- Syslog (Linux)
- SecurityEvent (Windows)
- AuditLogs (Microsoft Entra ID)
- SigninLogs (Microsoft Entra ID)
- OfficeActivity (Office 365)
- BehaviorAnalytics (Microsoft Sentinel UEBA)
- Heartbeat (Azure Monitor Agent)
- CommonSecurityLog (Microsoft Sentinel)

:::image type="content" source="../../media/investigate-users/user-incident-sentinel-events.png" alt-text="Screenshot of Sentinel events tab in user entity page.":::

## Remediation actions

From the Overview page, you can do these additional actions:

- Enable, disable, or suspend the user in Microsoft Entra ID
- Direct user to do certain actions such as require the user to sign in again or force password reset
- Reset investigation priority score for the user
- View Microsoft Entra account settings, related governance, the user's owned files, or the user's shared files

:::image type="content" source="../../media/investigate-users/user-incident-actions.png" alt-text="The actions for remediation for a user in the Microsoft Defender portal" lightbox="../../media/investigate-users/user-incident-actions.png":::

For more information, see [Remediation actions in Microsoft Defender for Identity](/defender-for-identity/remediation-actions).

## Next steps

As needed for in-process incidents, continue your [investigation](investigate-incidents.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
