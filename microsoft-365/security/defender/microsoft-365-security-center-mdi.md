---
title: Microsoft Defender for Identity in Microsoft 365 Defender
description: Learn about changes from the Microsoft Defender for Identity to Microsoft 365 Defender
keywords: Getting started with Microsoft 365 Defender, Microsoft Defender for Identity, MDI
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: bagol
author: batamig
manager: raynew
ms.date: 06/07/2023
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

# Microsoft Defender for Identity in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)
- [Microsoft Defender for Identity](/defender-for-identity/)

Microsoft Defender for Identity is now part of Microsoft 365 Defender. The Microsoft 365 Defender portal allows security admins to perform their security tasks in one location. This will simplify workflows, and add the functionality of the other Microsoft 365 Defender services. Microsoft 365 Defender will be the home for monitoring and managing security across your Microsoft identities, data, devices, apps, and infrastructure. 

Microsoft Defender for Identity contributes identity focused information into the incidents and alerts that Microsoft 365 Defender presents. This information is key to providing context and correlating alerts from the other products within Microsoft 365 Defender.

## Converged experiences in Microsoft 365 Defender

[Microsoft 365 Defender](https://security.microsoft.com) combines security capabilities that protect, detect, investigate, and respond to email, collaboration, identity, and device threats, and now includes all functionality provided in the [classic Defender for Identity portal](/defender-for-identity/classic-workspace-portal). 

While they may not be in exactly same pages, much of your data is integrated into Microsoft 365 Defender pages so that you can view your data across all of your monitored entities.

The following sections describe enhanced Defender for Identity features found in Microsoft 365 Defender.

### Configuration and posture

|Area |Description  |
|---------|---------|
|**Global exclusions**     |   In Microsoft 365 Defender, use alert tuning to define global exclusions that can apply to all Defender for Identity security alerts, instead of having to configure the exclusion in each, individual detection exclusion. <br><br> For more information, see [Global excluded entities](/defender-for-identity/exclusions).     |
|**Manage action and directory service accounts**     |   By default, Microsoft 365 Defender is configured to use the *local system*. Therefore, you'll only need to configure action and directory service account settings if you want a specific user account to perform the user remediation actions.<br><br> For more information, see [Microsoft Defender for Identity action accounts](/defender-for-identity/manage-action-accounts).  |
|**Remove a learning period**     |  Some Defender for Identity alerts rely on learning periods to build a profile of patterns, and then distinguish between legitimate and suspicious activities. <br><br>Microsoft 365 Defender supports an advanced setting to control whether to see alerts during the learning period before that profile is fully built. Changing this setting results in an increased number of alerts, with some of them being for legitimate traffic and activities. <br><br>For more information see [Remove the learning period for alerts](/defender-for-identity/advanced-settings).       |
|**Custom permission roles**     |  Microsoft 365 Defender supports custom permission roles. <br><br>For more information, see  [Microsoft 365 Defender role-based access control (RBAC)](manage-rbac.md)      |
|**Microsoft Secure Score**     |  All security posture management assessments that were previously available from Microsoft Defender for Cloud Apps are now available in [Microsoft Secure Score](https://security.microsoft.com/securescore), in Microsoft 365 Defender. <br><br> For more information, see [Microsoft Defender for Identity's security posture assessments](/defender-for-identity/security-assessment).     |
|**API**     | Use any of the following Microsoft 365 Defender APIs with Defender for Identity: <br><br>- [Query activities via API](api-advanced-hunting.md) <br>- [Manage security alerts via API](api-incident.md) <br>- [Stream security alerts and activities to Microsoft Sentinel](streaming-api.md)<br><br>**Tip**: Microsoft 365 Defender only stores advanced hunting data for 30 days.  If you need longer retention periods, stream the activities to Microsoft Sentinel or another partner security information and event management (SIEM) system.         |
| **Onboarding** | Defender for Identity onboarding is now automatic for new customers, with no need to configure a workspace. <br><br>If you need to delete your instance, do so together with Microsoft support. |

### Investigation 


|Area |Description  |
|---------|---------|
|**Identity page**     |  The Microsoft 365 Defender identity details page provides data about each identity, such as: <br><br>- Any associated alerts <br>- Active Directory account control<br>- Risky lateral movement paths<br>- A timeline of activities and alerts<br>- Details about observed locations, devices and groups. <br><br>For more information, see [Investigate users in Microsoft 365 Defender](investigate-users.md). |
|**Device page**     | Microsoft 365 Defender alert evidence lists all devices and users connected to each suspicious activity.  Investigate further by selecting a specific device in an alert to access a device details page.  <br><br>For more information, see [Investigate devices in the Microsoft Defender for Endpoint Devices list](../defender-endpoint/investigate-machines.md). |
|**Advanced hunting**     |  Microsoft 365 Defender helps you proactively search for threats and malicious activity by using advanced hunting queries. These powerful queries can be used to locate and review threat indicators and entities for both known and potential threats. <br><br>Build custom detection rules from advanced hunting queries to help you proactively watch for events that might be indicative of breach activity and misconfigured devices. <br><br>For more information, see [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md).    |
|**Global search**     | Using the search bar at the top of the Microsoft 365 Defender page to search for any entity being monitored by Microsoft 365 Defender, including identities, endpoints, Office 365 data, and more. <br><br>Select results directly from the search drop-down, or select **All users** or **All devices** to see all entities associated with a given search term.  |
| **Lateral movement paths** | Microsoft 365 Defender provides lateral movement path data on the **Advanced hunting** page and the **Lateral movement paths** security assessment, in addition to the **Lateral movement paths** tab on the user details page. <br><br> For more information, see [Understand and investigate lateral movement paths (LMPs) with Microsoft Defender for Identity](/defender-for-identity/understand-lateral-movement-paths). |

### Detection and response

|Area |Description  |
|---------|---------|
| **Alert and incident correlation** |	Defender for Identity alerts are now included in Microsoft 365 Defender's alert queue, making them available to the automated incident correlation feature. <br><br>View all of your alerts in one place, and determine the scope of the breach even quicker than before. <br><br>For more information, see [Investigate Defender for Identity alerts in Microsoft 365 Defender](/defender-for-identity/manage-security-alerts). |
| **Alert exclusions and tuning** |	Microsoft 365 Defender's alert interface is more user friendly, and includes a search function and global exclusions, meaning you can exclude any entity from all alerts generated by Defender for Identity. <br><br>For more information, see [Configure Defender for Identity detection exclusions in Microsoft 365 Defender](/defender-for-identity/exclusions).|
| **Remediation actions** |	Defender for Identity remediation actions, such as disabling accounts or requiring password resets, are available from the Microsoft 365 Defender user details page. <br><br>For more information, see [Remediation actions in Microsoft Defender for Identity](/defender-for-identity/remediation-actions).



## Quick reference

The table below lists the changes in navigation between Microsoft Defender for Identity and Microsoft 365 Defender.

| **Defender for** Identity  | **Microsoft 365 Defender**                                   |
| -------------------------- | ------------------------------------------------------------ |
| **Timeline**                   |- Microsoft 365 Defender Alerts/Incidents queue                |
| **Reports**                    |- Lateral movement path and passwords exposed in cleartext reports are covered by the [Identity security posture assessments](/defender-for-identity/security-assessment#assessment-reports) (ISPM)<br><br>- Health issues are available in **Settings** -> **Identities** -> **Health issues**<br><br>- View a summary of alerts by exporting the alerts queue or from the **Advanced hunting** page, which provides 30 days of data<br><br>- Modify sensitive groups from the **Advanced hunting** page<br><br>**Tip**: Use the **Advanced hunting** page to create customized reports in Microsoft 365 Defender.                                    |
| **Identity page**                  | Microsoft 365 Defender user details page                             |
| **Device page**                | Microsoft 365 Defender device details page                           |
| **Group page**                 | Microsoft 365 Defender groups side pane                      |
| **Alert page**                 | Microsoft 365 Defender alert details page <br><br>**Tip**: Use [alert tuning](investigate-alerts.md#tune-an-alert) to optimize the alerts you see in Microsoft 365 Defender.                        |
| **Search**                     | Microsoft 365 Defender global search                                |
| **Health center**              | **Settings** -> **Identities** -> **Health issues** -> **Global / Sensor health issues**                            |
| **Entity activities**          | - **Advanced hunting** <br>- Device page > **Timeline** <br>- Identity page > **Timeline** tab                                             |
| **Settings**                   | **Settings** -> **Identities**                                       |
| **Users and accounts**         | **Assets** -> **Identities**                                         |
| **Identity security posture**  | [Microsoft Defender for Identity's security posture assessments](/defender-for-identity/security-assessment) |
| **Onboarding a new workspace** | **Settings** -> **Identities** (automatically)                       |
| **About** | **Settings > Identities > About** |


## Next steps

For more information, see:

- [Related videos for Microsoft Defender for Identity](https://www.microsoft.com/videoplayer/embed/RE4HcEU)
- [Microsoft 365 Defender](microsoft-365-defender.md)
- [Microsoft Defender for Identity](/defender-for-identity/)
