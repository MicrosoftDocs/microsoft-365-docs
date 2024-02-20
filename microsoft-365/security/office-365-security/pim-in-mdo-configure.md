---
title: Use Azure Privileged Identity Management (PIM) in Microsoft Defender for Office 365 to limit admin access to cyber security tools.
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 2/20/2024
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: high
search.appverid:
  - MET150
ms.assetid: 56fee1c7-dc37-470e-9b09-33fff6d94617
ms.collection:
  - m365-security
  - tier1
ms.custom:
  - seo-marvel-apr2020
description: Learn to integrate Azure PIM in order to grant just-in-time, time limited access to users to do elevated privilege tasks in Microsoft Defender for Office 365, lowering risk to your data.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Privileged Identity Management (PIM) and why to use it with Microsoft Defender for Office 365

Privileged Identity Management (PIM) is an Azure feature that gives users access to data for a limited period of time (sometimes called a _time-boxed_ period of time). Access is given 'just-in-time' to take the required action, and then access is removed. PIM limits user access to sensitive data, which reduces risk as compared to traditional admin accounts with permanent access to data and other settings. So, how can we use this feature (PIM) with Microsoft Defender for Office 365?

> [!TIP]
> PIM access is scoped to the role and identity level to allow the completion of multiple tasks. In contrast, Privileged Access Management (PAM) is scoped at the task level.

## Steps to use PIM to grant just-in-time access to Defender for Office 365 related tasks

By setting up PIM to work with Microsoft Defender for Office 365, admins create a process for a user to _request and justify_ the elevated privileges that they need.

This article uses the scenario for a user named Alex on the security team. We can elevate Alex's permissions for the following scenarios:

- Permissions for normal day-to-day operations (for example, [Threat Hunting](threat-explorer-threat-hunting.md)).
- A temporary higher-level of privilege for less frequent, sensitive operations (for example, [remediating malicious delivered email](remediate-malicious-email-delivered-office-365.md)).

> [!TIP]
> Although article includes specific steps for the scenario as described, you can do the same steps for other permissions. For example, when an information worker requires day-to-day access in eDiscovery to perform searches and case work, but occasionally needs the elevated permissions to export data from the organization.

***Step 1***. In the Azure PIM console for your subscription, add the user (Alex) to the Azure Security Reader role and configure the security settings related to activation.

1. Sign in to the [Microsoft Entra Admin Center](https://aad.portal.azure.com/) and select **Microsoft Entra ID** \> **Roles and administrators**.
2. Select **Security Reader** in the list of roles and then **Settings** \> **Edit**
3. Set the '**Activation maximum duration (hours)**' to a normal working day and 'On activation' to require **Azure MFA**.
4. Because this is Alex's normal privilege level for day-to-day operations, Uncheck **Require justification on activation** \> **Update**.
5. Select **Add Assignments** \> **No member selected** \> select or type the name to search for the correct member.
6. Select the **Select** button to choose the member you need to add for PIM privileges \> select **Next** \> make no changes on the Add Assignment page (both assignment type _Eligible_ and duration _Permanently Eligible_ are defaults) and **Assign**.

The name of the user (Alex in this scenario) appears under Eligible assignments on the next page. This result means they're able to PIM into the role with the settings configured earlier.

> [!NOTE]
> For a quick review of Privileged Identity Management see [this video](https://www.youtube.com/watch?v=VQMAg0sa_lE).

:::image type="content" source="../../media/pim-mdo-role-setting-details-for-security-reader-show-8-hr-duration.png" alt-text="The Role setting details - Security Reader page" lightbox="../../media/pim-mdo-role-setting-details-for-security-reader-show-8-hr-duration.png":::

***Step 2***. Create the required second (elevated) permission group for other tasks and assign eligibility.

Using [Privileged Access groups](/entra/id-governance/privileged-identity-management/concept-pim-for-groups) we can now create our own custom groups and combine permissions or increase granularity where required to meet your organizational practices and needs.

### Create a role or role group with the required permissions

Use one of the following methods:

- [Create an Email & collaboration role group in the Microsoft Defender portal](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal):

Or

- Create a custom role in Microsoft Defender XDR Unified role based access control (RBAC). For information and instructions, see [Start using Microsoft Defender XDR Unified RBAC model](../defender/manage-rbac.md#start-using-microsoft-defender-xdr-unified-rbac-model).

For either method:

- Use a descriptive name (for example, 'Contoso Search and Purge PIM').
- Don't add members. Add the required permissions, save, and then go to the next step.

### Create the security group in Microsoft Entra ID for elevated permissions

1. Browse back to the [Microsoft Entra Admin Center](https://aad.portal.azure.com/) and navigate to **Microsoft Entra ID** \> **Groups** \> **New Group**.
2. Name your Microsoft Entra group to reflect its purpose, **no owners or members are required** right now.
3. Turn **Microsoft Entra roles can be assigned to the group** to **Yes**.
4. Don't add any roles, members, or owners, create the group.
5. Go back into the group you created, and select **Privileged Identity Management** \> **Enable PIM**.
6. Within the group, select **Eligible assignments** \> **Add assignments** \> Add the user who needs Search & Purge as a role of **Member**.
7. Configure the **Settings** within the group's Privileged Access pane. Choose to **Edit** the settings for the role of **Member**.
8. Change the activation time to suit your organization. This example requires _Microsoft Entra multifactor authentication_, _justification_, and _ticket information_ before selecting **Update**.

### Nest the newly created security group into the role group

> [!NOTE]
> This step is required only if you used an Email & collaboration role group in [Create a role or role group with the required permissions](#create-a-role-or-role-group-with-the-required-permissions). Defender XDR Unified RBAC supports direct permissions assignments to Microsoft Entra groups, and you can add members to the group for PIM.

1. [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) and run the following command:

   ```powershell
   Add-RoleGroupMember "<Role Group Name>" -Member "<Azure Security Group>"`
   ```

## Test your configuration of PIM with Defender for Office 365

1. Sign in with the test user (Alex), who should have no administrative access within the [Microsoft Defender portal](/microsoft-365/security/defender/overview-security-center) at this point.
2. Navigate to PIM, where the user can activate their day-to-day security reader role.
3. If you try to purge an email using Threat Explorer, you get an error stating you need more permissions.
4. PIM a second time into the more elevated role, after a short delay you should now be able to purge emails without issue.

   :::image type="content" source="../../media/pim-mdo-add-the-search-and-purge-role-assignment-to-this-pim-role.PNG" alt-text="The Actions pane under the Email tab" lightbox="../../media/pim-mdo-add-the-search-and-purge-role-assignment-to-this-pim-role.PNG":::

Permanent assignment of administrative roles and permissions doesn't align with the Zero Trust security initiative. Instead, you can use PIM to grant just-in-time access to the required tools.

*Our thanks to Customer Engineer Ben Harris for access to the blog post and resources used for this content.*
