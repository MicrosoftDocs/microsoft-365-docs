---
title: "Limit who can invite guests"
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 06/19/2024
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection:
- highpri
- Tier1
- SPO_Content
- M365-collaboration
- m365solution-securecollab
- m365solution-scenario
- m365initiative-externalcollab
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to limit who can invite guests to your organization.
---

# Limit who can invite guests

You can limit who in your organization can invite guests. Guest accounts can be used for sharing teams, SharePoint sites, files, and folders with people outside your organization.

If your business processes require that you limit who can invite guests, or if you want users to complete training before they're able to invite guests, you can limit who can invite guests to your organization by using the Guest inviter role in Microsoft Entra ID.

## Create a security group for people allowed to invite guests

The first step is to create a security group for the users who will be allowed to invite guests. Be sure to configure this group to allow a Microsoft Entra role, and then assign it the Guest inviter role.

To create a security group for guest inviters
1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) using a Security Administrator account.

1. Expand **Groups** and then select **All groups**.
1. Select **New group**.
1. Choose **Security** for the **Group type**.
1. Type a **Group name.** 
1. Optionally, add a description for the group.
1. For **Microsoft Entra roles can be assigned to the group**, choose **Yes**.
1. Add group owners and members.
1. Under **Roles**, select **No roles selected**.
1. Search for and select the **Guest inviter** role, and then choose **Select**.
1. Select **Create**, and confirm that you want a group to which roles can be assigned. Your group is created and ready for you to add members.

## Configure external collaboration settings

Once you've created the security group and added the users who you want to be able to invite guests, the next step is to configure the Microsoft Entra external collaboration settings to only allow users with the Guest inviter role to invite guests.

Note that Global Administrators can always invite guests regardless of this setting.

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

To configure Microsoft Entra ID to limit guest invites to the Guest inviter role
1. In the [Microsoft Entra admin center](https://entra.microsoft.com), expand **External identities**, and then select **External collaboration settings**.
1. Under **Guest invite settings**, choose **Only users assigned to specific admin roles can invite guests**.
1. Select **Save**.

## Related topics

[Allow only users in specific security groups to share externally in SharePoint and OneDrive](/sharepoint/manage-security-groups)

[Configure external collaboration settings](/entra/external-id/external-collaboration-settings-configure)
