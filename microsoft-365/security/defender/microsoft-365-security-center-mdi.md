---
title: Microsoft Defender for Identity in The Microsoft Defender portal
description: Learn about changes from Microsoft Defender for Identity to The Microsoft Defender portal.
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: bagol
author: batamig
manager: raynew
ms.date: 02/14/2024
audience: ITPro
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
ms.collection: 
- m365-security 
- tier2
ms.custom: admindeeplinkDEFENDER, defender-for-identity
---

# Microsoft Defender for Identity in The Microsoft Defender portal

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender XDR](microsoft-365-defender.md)
- [Microsoft Defender for Identity](/defender-for-identity/)

Microsoft Defender for Identity is now part of The Microsoft Defender portal, the home for monitoring and managing security across your Microsoft identities, data, devices, apps, and infrastructure. The Microsoft Defender portal allows security admins to perform their security tasks in one location, which simplifies workflows and integrating functionality from other Microsoft Defender XDR services.

Microsoft Defender for Identity contributes identity focused information into the incidents and alerts that The Microsoft Defender portal presents. This information is key to providing context and correlating alerts from the other products within Microsoft Defender XDR.

<a name='converged-experiences-in-microsoft-365-defender'></a>

## Converged experiences in The Microsoft Defender portal

The [Microsoft Defender portal](https://security.microsoft.com) combines security capabilities that protect, detect, investigate, and respond to email, collaboration, identity, and device threats, and now includes all functionality provided in the [legacy, classic Defender for Identity portal](/previous-versions/defender-for-identity).

While data placement might differ from the classic Defender for Identity portal, your data is now integrated into The Microsoft Defender portal pages so that you can view your data across all of your monitored entities.

The following sections describe enhanced Defender for Identity features found in The Microsoft Defender portal.

> [!NOTE]
> Customers using the classic Defender for Identity portal are now [automatically redirected to The Microsoft Defender portal](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/leveraging-the-convergence-of-microsoft-defender-for-identity-in/ba-p/3856321), with no option to revert back to the classic portal.


### Configuration and posture

|Area |Description  |
|---------|---------|
|**Global exclusions**     |   Global exclusions allow you to define certain entities, such as IP addresses, devices, or domains, to be excluded across all Defender for Identity detections. For example, if you only exclude a device, the exclusion applies only to detections that have a *device* identification as part of the detection. <br><br> For more information, see [Global excluded entities](/defender-for-identity/exclusions).  |
|**Manage action and directory service accounts**     |  You might want to respond to compromised users by disabling their accounts or resetting their password. When you take either of these actions, The Microsoft Defender portal is configured by default to use the *local system* account. Therefore, you'll only need to configure action and directory service account settings if you want to have more control, and define a different user account to perform user remediation actions.<br><br> For more information, see [Microsoft Defender for Identity action accounts](/defender-for-identity/manage-action-accounts).      |
|**Custom permission roles**     |  The Microsoft Defender portal supports custom permission roles. <br><br>For more information, see  [Microsoft Defender XDR role-based access control (RBAC)](manage-rbac.md)      |
|**Microsoft Secure Score**     | Defender for Identity security posture assessments is available in [Microsoft Secure Score](https://security.microsoft.com/securescore). Each assessment is a downloadable report with instructions for use and tools to build an action plan for remediating or resolving the issue. Filter Microsoft Secure Score by **Identity** to view Defender for Identity assessments. <br><br> For more information, see [Microsoft Defender for Identity's security posture assessments](/defender-for-identity/security-assessment).     |
|**API**     | Use any of the following Microsoft Defender XDR APIs with Defender for Identity: <br><br>- [Query activities via API](api-advanced-hunting.md) <br>- [Manage security alerts via API](api-incident.md) <br>- [Stream security alerts and activities to Microsoft Sentinel](streaming-api.md)<br><br>**Tip**: The Microsoft Defender portal only stores advanced hunting data for 30 days.  If you need longer retention periods, stream the activities to Microsoft Sentinel or another partner security information and event management (SIEM) system.         |
| **Onboarding** | Defender for Identity onboarding is now automatic for new customers, with no need to configure a workspace. <br><br>If you need to delete your instance, open a Microsoft support case. |

### Investigation 


|Area |Description  |
|---------|---------|
| **Identities** area| In The Microsoft Defender portal, expand the **Identities** area to view a **Dashboard** of graphs and widgets with commonly used data, a **Health issues** page, listing all health issues for your Defender for Identity deployment, and a **Tools** page, with links to commonly used tools and documentation. <br><br>For more information, see [View the ITDR dashboard](/defender-for-identity/dashboard) and [Defender for Identity health issues](/defender-for-identity/health-alerts). |
|**Identity page**     |  The Microsoft Defender portal identity details page provides inclusive data about each identity, such as: <br><br>- Any associated alerts <br>- Active Directory account control<br>- Risky lateral movement paths<br>- A timeline of activities and alerts<br>- Details about observed locations, devices, and groups. <br><br>For more information, see [Investigate users in The Microsoft Defender portal](investigate-users.md). |
|**Device page**     | The Microsoft Defender portal alert evidence lists all devices and users connected to each suspicious activity.  Investigate further by selecting a specific device in an alert to access a device details page.  <br><br>For more information, see [Investigate devices in the Microsoft Defender for Endpoint Devices list](../defender-endpoint/investigate-machines.md). |
|**Advanced hunting**     |  The Microsoft Defender portal helps you proactively search for threats and malicious activity by using advanced hunting queries. These powerful queries can be used to locate and review threat indicators and entities for both known and potential threats. <br><br>Build custom detection rules from advanced hunting queries to help you proactively watch for events that might be indicative of breach activity and misconfigured devices. <br><br>For more information, see [Proactively hunt for threats with advanced hunting in the Microsoft Defender portal](advanced-hunting-overview.md).    |
|**Global search**     | Use the search bar at the top of the Microsoft Defender portal page to search for any entity being monitored by Microsoft Defender XDR, including identities, endpoints, Office 365 data, Active Directory groups (Preview), and more. <br><br>Select results directly from the search drop-down, or select **All users** or **All devices** to see all entities associated with a given search term.  |
| **Lateral movement paths** | The Microsoft Defender portal provides lateral movement path data on the **Advanced hunting** page and the **Lateral movement paths** security assessment, in addition to the **Lateral movement paths** tab on the user details page. <br><br> For more information, see [Understand and investigate lateral movement paths (LMPs) with Microsoft Defender for Identity](/defender-for-identity/understand-lateral-movement-paths). |

### Detection and response

|Area |Description  |
|---------|---------|
| **Alert and incident correlation** |Defender for Identity alerts is now included in the Microsoft Defender portal's alert queue, making them available to the automated incident correlation feature. <br><br>View all of your alerts in one place, and determine the scope of the breach even quicker than before. <br><br>For more information, see [Investigate Defender for Identity alerts in the Microsoft Defender portal](/defender-for-identity/manage-security-alerts). |
| **Alert exclusions** |The Microsoft Defender portal's alert interface is more user friendly, and includes a search function and global exclusions, meaning you can exclude any entity from all alerts generated by Defender for Identity. <br><br>For more information, see [Configure Defender for Identity detection exclusions in Microsoft Defender XDR](/defender-for-identity/exclusions).|
| **Alert  tuning** |Alert tuning, previously known as *alert suppression*, allows you to adjust and optimize your alerts. Alert tuning reduces false positives, allowing your SOC teams to focus on high-priority alerts, and improves threat detection coverage across your system.<br><br> In Microsoft Defender XDR, create rule conditions based on evidence types, and then apply your rule on any rule type that matches your conditions. For more information, see [Tune an alert](investigate-alerts.md#tune-an-alert).|
| **Remediation actions** |Defender for Identity remediation actions, such as disabling accounts or requiring password resets, are available from the Microsoft Defender portal user details page. <br><br>For more information, see [Remediation actions in Microsoft Defender for Identity](/defender-for-identity/remediation-actions).



## Quick reference

The following table lists the changes in navigation between Microsoft Defender for Identity and the Microsoft Defender portal.

| **Defender for** Identity  | **The Microsoft Defender portal**                                   |
| -------------------------- | ------------------------------------------------------------ |
| **Timeline**                   |- Microsoft Defender portal Alerts/Incidents queue                |
| **Reports**                    |The following types of reports are available from the **Reports** > **Identities** > **Report management** page in the Microsoft Defender portal, either for immediate download or scheduled for a periodic email delivery: <br><br>- A summary report of alerts and health issues you should take care of. <br>- A list of each time a modification is made to sensitive groups. <br>- A list of source computer and account passwords that are detected as being sent in clear text.<br>- A list of the sensitive accounts exposed in lateral movement paths. <br><br>For more information, see [Report management](/defender-for-identity/reports).  |
| **Identity page**                  | Microsoft Defender portal user details page                             |
| **Device page**                | Microsoft Defender portal device details page                           |
| **Group page**                 | Microsoft Defender portal groups side pane                      |
| **Alert page**                 | Microsoft Defender portal alert details page <br><br>**Tip**: Use [alert tuning](investigate-alerts.md#tune-an-alert) to optimize the alerts you see in the Microsoft Defender portal.                        |
| **Search**                     | Microsoft Defender portal global search                                |
| **Health issues**              | Microsoft Defender portal **Identities > Health issues**                          |
| **Entity activities**          | - **Advanced hunting** <br>- Device page > **Timeline** <br>- Identity page > **Timeline** tab  <br>- **Group** pane > **Timeline** tab                                           |
| **Settings**                   | **Settings** -> **Identities**                                       |
| **Users and accounts**         | **Assets** -> **Identities**                                         |
| **Identity security posture**  | [Microsoft Defender for Identity's security posture assessments](/defender-for-identity/security-assessment) |
| **Onboarding a new workspace** | **Settings** -> **Identities** (automatically)                       |
| **About** | **Settings > Identities > About** |


## Next steps

For more information, see:

- [Related videos for Microsoft Defender for Identity](https://www.microsoft.com/videoplayer/embed/RE4HcEU)
- [Microsoft Defender XDR](microsoft-365-defender.md)
- [Microsoft Defender for Identity](/defender-for-identity/)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
