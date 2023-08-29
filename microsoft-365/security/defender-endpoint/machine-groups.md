---
title: Create and manage device groups in Microsoft Defender for Endpoint
description: Create device groups and set automated remediation levels on them by confirming the rules that apply on the group
keywords: device groups, groups, remediation, level, rules, aad group, role, assign, rank
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Create and manage device groups

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Azure Active Directory
- Office 365
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

In an enterprise scenario, security operation teams are typically assigned a set of devices. These devices are grouped together based on a set of attributes such as their domains, computer names, or designated tags.

In Microsoft Defender for Endpoint, you can create device groups and use them to:

- Limit access to related alerts and data to specific Azure AD user groups with [assigned RBAC roles](rbac.md)
- Configure different auto-remediation settings for different sets of devices
- Assign specific remediation levels to apply during automated investigations
- In an investigation, filter the **Devices list** to specific device groups by using the **Group** filter.

You can create device groups in the context of role-based access (RBAC) to control who can take specific action or see information by assigning the device group(s) to a user group. For more information, see [Manage portal access using role-based access control](rbac.md).

> [!TIP]
> For a comprehensive look into RBAC application, read: [Is your SOC running flat with RBAC](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Is-your-SOC-running-flat-with-limited-RBAC/ba-p/320015).

As part of the process of creating a device group, you'll:

- Set the automated remediation level for that group. For more information on remediation levels, see [Use Automated investigation to investigate and remediate threats](automated-investigations.md).
- Specify the matching rule that determines which device group belongs to the group based on the device name, domain, tags, and OS platform. If a device is also matched to other groups, it's added only to the highest ranked device group.
- Select the Azure AD user group that should have access to the device group.
- Rank the device group relative to other groups after it's created.

> [!NOTE]
> A device group is accessible to all users if you don't assign any Azure AD groups to it.

## Create a device group

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Permissions** \> **Device groups**.

2. Click **Add device group**.

3. Enter the group name and automation settings and specify the matching rule that determines which devices belong to the group. See [How the automated investigation starts](automated-investigations.md#how-the-automated-investigation-starts).

    > [!TIP]
    > If you want to use tagging for grouping devices, see [Create and manage device tags](machine-tags.md).

4. Preview several devices that will be matched by this rule. If you're satisfied with the rule, click the **User access** tab.

5. Assign the user groups that can access the device group you created.

    > [!NOTE]
    > You can only grant access to Azure AD user groups that have been assigned to RBAC roles.

6. Click **Close**. The configuration changes are applied.

## Manage device groups

You can promote or demote the rank of a device group so that it's given higher or lower priority during matching. A device group with a rank of 1 is the highest ranked group. When a device is matched to more than one group, it's added only to the highest ranked group. You can also edit and delete groups.

> [!WARNING]
> Deleting a device group may affect email notification rules. If a device group is configured under an email notification rule, it will be removed from that rule. If the device group is the only group configured for an email notification, that email notification rule will be deleted along with the device group.

By default, device groups are accessible to all users with portal access. You can change the default behavior by assigning Azure AD user groups to the device group.

Devices that aren't matched to any groups are added to Ungrouped devices (default) group. You cannot change the rank of this group or delete it. However, you can change the remediation level of this group, and define the Azure AD user groups that can access this group.

> [!NOTE]
> Applying changes to device group configuration may take up to several minutes.

### Add device group definitions

Device group definitions can also include multiple values for each condition. You can set multiple tags, device names, and domains to the definition of a single device group.

1. Create a new device group, then select **Devices** tab.
2. Add the first value for one of the conditions.
3. Select `+` to add more rows of the same property type.

> [!TIP]
> Use the 'OR' operator between rows of the same condition type, which allows multiple values per property.
> You can add up to 10 rows (values) for each property type - tag, device name, domain.

For more information on linking to device groups definitions, see [Device groups - Microsoft 365 security](https://sip.security.microsoft.com/homepage).

## Related topics

- [Manage portal access using role-based based access control](rbac.md)
- [Create and manage device tags](machine-tags.md)
- [Get list of tenant device groups using Graph API](/graph/api/device-list-memberof)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
