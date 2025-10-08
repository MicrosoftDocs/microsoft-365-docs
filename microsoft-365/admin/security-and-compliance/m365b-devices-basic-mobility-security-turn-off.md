---
title: "Turn off Basic Mobility and Security enforcement"
f1.keywords: NOCSH
ms.author: chrisda
author: chrisda
manager: orspodek
ms.date: 08/14/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
- trust-pod
ms.custom: 
- AdminSurgePortfolio
- basic-mobility-security
description: "Learn how to effectively disable Basic Mobility and Security."
appliesto:
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-basic" target="_blank">Microsoft 365 Business Basic</a>
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-standard" target="_blank">Microsoft 365 Business Standard</a>
---

# Turn off Basic Mobility and Security enforcement

You can't completely turn off or disable Basic Mobility and Security in your organization after you [enable](m365b-devices-basic-mobility-security-set-up.md) and [configure](m365b-devices-basic-mobility-security-policies-configure.md#create-policies-in-basic-mobility-and-security) it. But you can remove the enforcement of Basic Mobility and Security on devices in your organization by using either of the following methods:

- **Remove security group assignments from all Basic Mobility and Security policies**: This method works up to a certain point, because a policy must be assigned to at least one security group. You have the following options:
  - Create a new security group with no members and assign all policies to that group. For security group creation instructions, see [Create, edit, or delete a security group](../email/create-edit-or-delete-a-security-group.md).
  - Assign the policy to no one (select **We'll save this policy, but it won't be applied to any devices in your organization**).
- **Remove all Basic Mobility and Security policies**: This option works up to a certain point, because you can't remove the last remaining policy in the organization. You have the following options:
  - Create a new security group with no members and assign the last remaining policy to that group. For security group creation instructions, see [Create, edit, or delete a security group](../email/create-edit-or-delete-a-security-group.md).
  - Assign the last remaining policy to no one (select **We'll save this policy, but it won't be applied to any devices in your organization**).
  - Create a new policy with no restrictions assigned to no one or an empty security group, and then remove all other policies.

The rest of this article describes how to use these methods to effectively disable Basic Mobility and Security enforcement in an organization.

For more information about Basic Mobility and Security, see [Overview of Basic Mobility and Security in Microsoft 365 for business](m365b-devices-basic-mobility-security-overview.md).

> [!IMPORTANT]
> Be aware of the effect on user devices when you turn off Basic Mobility and Security enforcement. For example, email profiles and cached email might be removed. For more information, see [What happens when you delete a policy or remove a user from a policy?](m365b-devices-basic-mobility-security-policies-configure.md#what-happens-when-you-delete-a-policy-or-remove-a-user-from-a-policy).

## What do you need to know before you begin?

- You open the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): Membership in the **Global Administrator**<sup>\*</sup> or **Compliance Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

    > [!IMPORTANT]
    > <sup>\*</sup> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

- You can't use a delegated admin account to manage Basic Mobility and Security. For more information about delegated administration, see [Partners: Offer delegated administration](https://support.microsoft.com/office/partners-offer-delegated-administration-26530dc0-ebba-415b-86b1-b55bc06b073e).

- Questions? See the [Basic Mobility and Security FAQ](m365b-devices-basic-mobility-security-overview.md#basic-mobility-and-security-faq).

## Remove security group assignments from all Basic Mobility and Security policies

1. On the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>, select the **Policies** tab.

2. On the **Policies** tab, select a policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

3. In the details flyout, select **Edit deployment** in the **Deployment** section.

4. In the **Edit deployment** flyout that opens, make one of the following selections:
   - Remove any existing groups below the **Include these groups** box, start typing the name of the designated security group with no members in the box, and then select it when it appears.
   - Select **We'll save this policy, but it won't be applied to any devices in your organization**

   When you're finished on the **Edit deployment** flyout, select **Save**.

5. Back on the details flyout, select **Close**.

Repeat these steps as many times as necessary.

## Remove all Basic Mobility and Security policies

1. On the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>, select the **Policies** tab.

2. On the **Policies** tab, select the policy to remove by selecting the check box next to the name.

3. Select :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Delete selected policies**.

4. Select **Yes** in the warning dialog that opens.

5. Repeat the previous steps until only one policy remains, then do one of the following steps:
   - Create a new policy with no restrictions assigned to no one or an empty security group. After you create this policy, remove the last remaining "real" policy. For policy creation instructions, see [Create policies in Basic Mobility and Security](m365b-devices-basic-mobility-security-policies-configure.md#create-policies-in-basic-mobility-and-security).
   - Assign the last remaining policy to no one or an empty security group as described in the [Remove security group assignments from all Basic Mobility and Security device policies](#remove-security-group-assignments-from-all-basic-mobility-and-security-policies) section.
