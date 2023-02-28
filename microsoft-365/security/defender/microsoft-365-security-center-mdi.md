---
title: Microsoft Defender for Identity in Microsoft 365 Defender
description: Learn about changes from the Microsoft Defender for Identity to Microsoft 365 Defender
keywords: Getting started with Microsoft 365 Defender, Microsoft Defender for Identity, NDI
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: diannegali
author: diannegali
manager: dansimp
ms.date: 07/06/2022
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

Microsoft Defender for Identity  contributes identity focused information into the incidents and alerts that Microsoft 365 Defender presents. This information is key to providing context and correlating alerts from the other products within Microsoft 365 Defender.

## Quick reference

The table below lists the changes in navigation between Microsoft Defender for Identity and Microsoft 365 Defender.

| **Defender for** Identity  | **Microsoft 365 Defender**                                   |
| -------------------------- | ------------------------------------------------------------ |
| Timeline                   | Microsoft 365 Defender Alerts/Incidents queue                |
| Reports                    | Will remain in the [classic Defender for Identity portal](/defender-for-identity/classic-workspace-portal). <br> Customized reports can be created in the Microsoft 365 Defender portal using   [Advanced hunting](#advanced-hunting-new).               |
| User page                  | Microsoft 365 Defender User page                             |
| Device page                | Microsoft 365 Defender Device page                           |
| Group page                 | Microsoft 365 Defender groups side pane                      |
| Alert page                 | Microsoft 365 Defender Alert page                            |
| Search                     | Microsoft 365 Defender Search                                |
| Health center              | Settings -> Identities -> Sensors                            |
| Entity Activities          | Advanced hunting <br> Device timeline <br> Identity timeline                                             |
| Settings                   | Settings -> Identities                                       |
| Users and accounts         | Assets -> Identities                                         |
| Identity security posture  | [Microsoft Defender for Identity's security posture assessments](/defender-for-identity/security-assessment) |
| Onboarding a new Workspace | Settings -> Identities (automatically)                       |

## What's changed

### Defender for Identity settings

To access the Microsoft Defender for Identity configuration settings, in [Microsoft 365 Defender](https://security.microsoft.com), go to **Settings** and then **Identities**.

### Defender for Identity security posture

All the identity security posture management assessments that were previously accessible in Defender for Cloud Apps are now available in Microsoft Secure Score, which can be found at <https://security.microsoft.com/securescore> in the [Microsoft 365 Defender portal](https://security.microsoft.com). For more information, see  [Microsoft Defender for Identity's security posture assessments](/defender-for-identity/security-assessment).

### Global search

Global search in Microsoft 365 Defender (using the search bar at the top of the page) allows security teams to look for any entity being monitored by Microsoft 365 Defender, be it identity, endpoint, Office 365 data, and more. Results can be interacted with directly from the search drop-down, or security teams can choose to select **All users** or **All devices**  to see all entities associated with that search term.

### Onboarding and administration

The onboarding process is now automatic for new customers, with no need to manually configure a workspace. Additionally, all the admin features are available under the **Identities** menu in Microsoft 365 Defender's Settings.

### Alerting and incident correlation

Defender for Identity alerts are now included in Microsoft 365 Defender's alert queue, making them available to the auto incident correlation feature. This ensures that all alerts are available in one place, and that the scope of a breach can be determined quicker than before. For more information, see [Defender for Identity security alerts in Microsoft 365 Defender](/defender-for-identity/manage-security-alerts).

### Advanced hunting (new)

You can now proactively search for threats and malicious activity by using advanced hunting queries. These powerful queries can be used to locate and review threat indicators and entities for both known and potential threats.

Custom detection rules can be built from advanced hunting queries to help you proactively watch for events that might be indicative of breach activity and misconfigured devices. For more information, see [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md).

### Alert exclusions (updated)

The alert interface is more user friendly, including adding a useful search function. Additionally, it now includes global exclusions. This means that any entity can be excluded from all alerts generated by Defender for Identity, helping with any testing scenarios you may have. For more information, see [Configure Defender for Identity detection exclusions in Microsoft 365 Defender](/defender-for-identity/exclusions).

### Entity profiles

Defender for Identity data is now included in the Microsoft 365 User and Device entity profiles.

### Remediation actions (new)

Defender for Identity remediation actions, such as disabling accounts or requiring password resets, can now be taken from the Microsoft 365 Defender User page. For more information, see [Remediation actions in Microsoft Defender for Identity](/defender-for-identity/remediation-actions).

### Lateral movement paths

In addition to the **Lateral movement paths** tab on the user page, lateral movement paths can also be discovered via the **Advanced hunting** feature and the Lateral Movement paths security assessment. For more information, see [Microsoft Defender for Identity Lateral Movement Paths (LMPs)](/defender-for-identity/understand-lateral-movement-paths).

## Related videos

- [New for Microsoft Defender for Identity](https://www.microsoft.com/videoplayer/embed/RE4HcEU)

## Related information

- [Microsoft 365 Defender](microsoft-365-defender.md)
