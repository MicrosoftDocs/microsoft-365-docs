---
title: "Assign or unassign licenses to a group in the Microsoft 365 admin center"
f1.keywords: NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: sinakassaw, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_licensing
- admindeeplinkMAC
search.appverid: MET150
description: "Learn how to assign or unassign licenses to groups in the Microsoft 365 admin center."
ms.date: 01/06/2025
---

# Assign or unassign licenses to a group in the Microsoft 365 admin center

If you have security groups, mail enabled groups, or Microsoft 365 groups, you can assign or unassign licenses for those groups on the **Licenses** page in the Microsoft 365 admin center. We refer to this as *group-based licensing*.

> [!NOTE]
> Some Microsoft services aren’t available in all locations. Before a license can be assigned to a user, the administrator must specify the  user’s location setting. For group-based licensing, any users without a specific location inherit the location of the tenant. If you have users in multiple locations, we recommend that you always set the user location as part of your user creation flow. For more information, see [Add users and assign licenses in Microsoft 365](../../admin/manage/assign-licenses-to-users.md).

## Before you begin

- You must be at least a License Administrator or User Administrator to assign licenses. Currently, Group Administrators can’t assign licenses. For more information, see [Microsoft 365 admin roles](../../admin/add-users/about-admin-roles.md).
- In addition to the steps described in this article, you can also use the Microsoft Graph PowerShell SDK to assign or unassign Microsoft 365 licenses to groups. For more information, see [Set-MgGroupLicense](/powershell/module/microsoft.graph.groups/set-mggrouplicense).
- Group-based licensing doesn't currently support nested groups (groups that contain other groups). If you assign licenses to a nested group, only users in the first-level group are assigned licenses.
- When you assign or modify licenses for a large group, like 100,000 users, it can affect performance. In certain high load situations, it might take a long time to process license changes for groups or membership changes to groups with existing licenses.

## Limitations of group-based licensing in the Microsoft 365 admin center

- You can assign licenses to a maximum of 20 groups at a time.
- When you select **Reprocess** to resolve issues with group license assignment, the feature attempts to reprocess licenses up to a maximum of 20 users at a time.
- The lists of users who were and who weren't successfully assigned licenses are paginated lists that display 999 users at a time. You must scroll to the bottom of the list to load the next set of users.

## Assign licenses to a group

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target=")blank">Microsoft 365 admin center</a> as at least a License Administrator.
2. Go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
3. On the **Subscriptions** tab, select the product that you want to assign licenses for.
4. On the **Licenses** page, select the **Groups** tab, then select **Assign licenses**.
5. In the details panel, search for the group that you want to assign licenses to, then select the name from the **Suggested groups** list.
6. To assign or remove access to specific items, select **Turn apps and services on or off**.
7. When you’re finished, select **Assign**, then select **Close**.

## Verify that the license assignment is finished

After you assign licenses to a group, you should check to make sure that the licenses were successfully assigned. The **Groups** tab on the **License** details page shows the status of the task for each group you assigned licenses to. You can use this page to find groups that have errors that must be resolved. For more information, see [Find users with license errors in the group](#find-users-with-license-errors-in-the-group).

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page, and select the product that you assigned the group to.
2. On the **Licenses** details page, select the **Groups** tab. The **Status** column shows the license assignment status for each group. The following list describes the group statuses:
    - **All licenses assigned:** The licenses were successfully assigned to every person in the group.
    - **In progress:** The licenses are still being assigned to some members of the group.
    - **Errors &amp; issues:** There was an error in assigning licenses to at least one member of the group.

## Manage group-based licensing errors

This section tells how to identify if users have licensing errors. It describes the different types of errors that can happen during group license assignment, and includes steps for how to resolve the errors.

### Find users with license errors in the group

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. On the **Subscriptions** tab, select the product that you want to view licenses for.
3. On the **Licenses** page, select the **Groups** tab.
4. Select a group with the **Error** status. The side panel opens and contains two tabs:
    - **Successfully assigned** lists all users to whom licenses were successfully assigned.
    - **Actions needed** lists all users for whom errors occurred during license assignment. The <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page. column indicates the problem encountered.
5. To fix an error, see the following sections for steps to resolve specific issues.

### Not enough licenses

**Issue:** There aren’t enough licenses for all members of the group. You can either buy more licenses or free up unused licenses from users and groups.

> [!NOTE]
> You must be at least a Billing Administrator to buy more licenses.

**Resolution:** Buy more licenses.

1. Select the check boxes for users without licenses. You can select up to 20 users at a time.
2. Select **Purchase license**.
3. In the dialog box, select **Yes** to confirm that you want to buy licenses for the selected users.
4. In the **Manage product licenses** side panel, select **Buy**, then select **Done**. The new licenses are automatically assigned to the selected users. You can also select **Reprocess** to manually assign the licenses.

**Resolution:** Free up unused licenses. You can use the **Licenses** page to see which users and groups are using which licenses, and then unassign the licenses.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page, then select a product.
2. To unassign licenses, select either the **Users** or **Groups** tab, then select the check boxes of the users or groups to unassign licenses from. The list on the **Users** tab includes users who have licenses assigned directly or through one or more groups.
3. Select **Unassign licenses**.
4. In the **Unassign licenses** box, select **Unassign**.
5. On the **Groups** tab, select the group with the error.
6. In the details pane, select the **Actions needed** tab.
7. Select the users who are missing licenses, then select **Reprocess**.

### Conflicting service plans

**Issue:** One of the products specified in the group contains a service plan that conflicts with another service plan already assigned to the user via a different product. Some service plans can't be assigned to the same user as another, related service plan.

**Resolution:** Remove conflicting service plans.

1. On the **Actions needed** tab, select the user’s check box, then select **Edit user**.
2. In the user details panel, make changes to the assigned licenses and apps to remove conflicting plans.
3. Select **Save changes**, then close the details panel.
4. Select **Reprocess** to reattempt license assignment.

### Missing dependent service plans

**Issue:** One of the products assigned to the group contains a service plan that must be enabled for another service plan in another product to function.

**Resolution:** Make sure that the required plan is still assigned to users through some other method, or that the dependent services are disabled for those users.

1. On the **Actions needed** tab, select the user’s check box, then select **Edit user**.
2. In the user details panel, select or deselect one or more licenses or apps to remove conflicting plans.  
3. Select **Save changes**, then close the panel.
4. Select **Reprocess** to reattempt license assignment.

### Duplicate proxy address

**Issue:** If you use Exchange Online, some users in your organization might have the same proxy address value. When group-based licensing tries to assign a license to such a user, it fails and displays a **Proxy address violation** issue.

**Resolution:** To view more details about this message, select the user’s check box, then select **View error details**. For more information, see [Proxy address conflict when adding an email address in Exchange Online](/exchange/troubleshoot/email-alias/proxy-address-being-used).

### User usage location not specified

**Issue:** Some Microsoft services aren't available in all locations because of local laws and regulations. Before you can assign licenses to a group, each user must have the Location property specified.

**Resolution:** Update the user's location.

1. On the **Actions needed** tab, select the user’s check box, then select **Edit user**.
2. In the user details panel, select a location from the **Select location** drop-down list.
3. Select **Save changes**, then close the details panel.
4. Select **Reprocess** to reattempt license assignment.

### Other

**Issue:** Refers to all other technical issues related to group based license assignment.

**Resolution:** To view more details about this message, select the user’s check box, then select **View error details**.

## Unassign licenses from a group

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. On the **Subscriptions** tab, select the product that you want to unassign licenses for.
3. On the **Licenses** page, select the **Groups** tab.
4. Select the check box next to the group that you want to unassign, then select **Unassign licenses**.
5. In the pop-up window, select **Unassign**.

## Related content

[Assign or unassign licenses for users in the Microsoft 365 admin center](../../admin/manage/assign-licenses-to-users.md) (article)\
[Buy or remove licenses for a Microsoft business subscription](../../commerce/licenses/buy-licenses.md)
