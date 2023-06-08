---
title: Use Azure Privileged Identity Management (PIM) in Microsoft Defender for Office 365 to limit admin access to cyber security tools.
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 1/31/2023
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
<!--A-->
# Privileged Identity Management (PIM) and why to use it with Microsoft Defender for Office 365

Privileged Identity Management (PIM) is an Azure feature that, once set up, gives users access to data for a limited period of time (sometimes called time-boxed period of time) so that a specific task can be done. This access is given 'just-in-time' to do the action that's required, and then revoked. PIM limits the access and time that user has to sensitive data, reducing exposure risk when compared to privileged administration accounts that have long-term access to data and other settings. So how can we use this feature (PIM) in conjunction with Microsoft Defender for Office 365?

> [!TIP]
> PIM access is scoped to the role and identity level and allows completion of multiple tasks. It's not to be confused with Privileged Access Management (PAM) which is scoped at a Task level.

## Steps to use PIM to grant just-in-time access to Defender for Office 365 related tasks

By setting up PIM to work with Defender for Office 365, admins create a process for a user to request access to take the actions they need. The user must *justify* the need for the elevation of their privileges.

In this example we will configure "Alex", a member of our security team who will have zero-standing access within Office 365, but can elevate to both a role required for normal day-to-day operations, such as [Threat Hunting](threat-explorer-threat-hunting.md) and then also to a higher level of privilege when less frequent but sensitive operations, such as [remediating malicious delivered email](remediate-malicious-email-delivered-office-365.md) is required.

> [!NOTE]
> This will walk you through the steps required to setup PIM for a Security Analyst who requires the ability to purge emails using Threat Explorer in Microsoft Defender for Office 365, but the same steps can be used for other RBAC roles within the Security, and Compliance portal. For example this process could be used for a information worker who requires day-to-day access in eDiscovery to perform searches and case work, but only occasionally needs the elevated right to export data from the tenant.

***Step 1***. In the Azure PIM console for your subscription, add the user (Alex) to the Azure Security Reader role and configure the security settings related to activation.

1. Sign into the [Azure AD Admin Center](https://aad.portal.azure.com/) and select  **Azure Active Directory** > **Roles and administrators**.
2. Select **Security Reader** in the list of roles and then **Settings** > **Edit**
3. Set the '**Activation maximum duration (hours)**' to a normal working day and 'On activation' to require **Azure MFA**.
4. As this is Alex's normal privilege level for day-to-day operations, we will Uncheck **Require justification on activation**' > **Update**.
5. Select **Add Assignments** > **No member selected** > select or type the name to search for the correct member.
6. Click the **Select** button to choose the member you need to add for PIM privileges > click **Next** > make no changes on the Add Assignment page (both assignment type *Eligible* and duration *Permanently Eligible* will be defaults) and **Assign**.

The name of your user (here 'Alex') will appear under Eligible assignments on the next page, this means they are able to PIM into the role with the settings configured earlier.

> [!NOTE]
> For a quick review of Privileged Identity Management see [this video](https://www.youtube.com/watch?v=VQMAg0sa_lE).

:::image type="content" source="../../media/pim-mdo-role-setting-details-for-security-reader-show-8-hr-duration.png" alt-text="The Role setting details - Security Reader page" lightbox="../../media/pim-mdo-role-setting-details-for-security-reader-show-8-hr-duration.png":::

***Step 2***. Create the required second (elevated) permission group for additional tasks and assign eligibility.

Using [Privileged Access groups](/azure/active-directory/privileged-identity-management/groups-features) we can now create our own custom groups and combine permissions or increase granularity where required to meet your organizational practices and needs.

### Create a role group requiring the permissions we need

In the Microsoft 365 Defender portal, create a custom role group that contains the permissions that we want.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Permissions** \> **Email & collaboration roles** \> **Roles**. Or, to go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.
2. On the **Permissions** page, click ![Create icon.](../../media/m365-cc-sc-create-icon.png) **Create**.
3. Name your group to reflect its purpose such as 'Search and Purge PIM'.
4. Don't add members, simply save the group and move on to the next part!

### Create the security group in Azure AD for elevated permissions

1. Browse back to the [Azure AD Admin Center](https://aad.portal.azure.com/) and navigate to **Azure AD** > **Groups** > **New Group**.
2. Name your Azure AD group to reflect its purpose, **no owners or members are required** right now.
3. Turn **Azure AD roles can be assigned to the group** to **Yes**.
4. Don't add any roles, members or owners, create the group.
5. Go back into the group you've just created, and select **Privileged Access** > **Enable Privileged Access**.
6. Within the group, select **Eligible assignments** > **Add assignments** > Add the user who needs Search & Purge as a role of **Member**.
7. Configure the **Settings** within the group's Privileged Access pane. Choose to **Edit** the settings for the role of **Member**.
8. Change the activation time to suit your organization. In this example require *Azure MFA*, *justification*, and *ticket information* before selecting **Update**.

### Nest the newly created security group into the role group

1. [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) and run the following command:

   ```powershell
   Add-RoleGroupMember "<Role Group Name>" -Member "<Azure Security Group>"`
   ```

## Test your configuration of PIM with Defender for Office 365

1. Login with the test user (Alex), who should have no administrative access within the [Microsoft 365 Defender portal](/microsoft-365/security/defender/overview-security-center) at this point.
2. Navigate to PIM, where the user can activate their day-to-day security reader role.
3. If you try to purge an email using Threat Explorer, you get an error stating you need additional permissions.
4. PIM a second time into the more elevated role, after a short delay you should now be able to purge emails without issue.

   :::image type="content" source="../../media/pim-mdo-add-the-search-and-purge-role-assignment-to-this-pim-role.PNG" alt-text="The Actions pane under the Email tab" lightbox="../../media/pim-mdo-add-the-search-and-purge-role-assignment-to-this-pim-role.PNG":::

Permanent assignment of administrative roles and permissions such as Search and Purge Role doesn't hold with the Zero Trust security initiative, but as you can see, PIM can be used to grant just-in-time access to the toolset required.

*Our thanks to Customer Engineer Ben Harris for access to the blog post and resources used for this content.*

<!--A-->
