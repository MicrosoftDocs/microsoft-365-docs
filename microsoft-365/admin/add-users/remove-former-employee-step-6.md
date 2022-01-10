---
title: "Step 6 - Remove and delete the Microsoft 365 license from a former employee"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- m365solution-removeemployee
search.appverid:
- BCS160
- MET150
- MOE150
description: "Follow these steps to remove the Microsoft 365 license from a former employee."
---

# Step 6 - Remove the Microsoft 365 license from a former employee

If you don't want to pay for a license after someone leaves your organization, you need to remove their Microsoft 365 license and then delete it from your subscription. You can assign a license to another user if you don't delete it.
  
When you remove the license, all that user's data is held for 30 days. You can [access](get-access-to-and-back-up-a-former-user-s-data.md) the data, or [restore](restore-user.md) the account if the user comes back. After 30 days, all the user's data (except for documents stored on SharePoint Online) is permanently deleted from Microsoft 365 and can't be recovered.

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to block, and then select the **Licenses and Apps** tab.
3. Clear the check boxes for the license(s) you want to remove, and then select **Save changes**.

**To reduce the number of licenses you're paying for** until you hire another person, do the following steps:

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page, and select the **Products** tab.
2. Select the subscription from which you want to remove licenses.
3. On the details page, select **Remove licenses**.
4. In the **Remove licenses** pane, under New quantity, in the **Total licenses** box, enter the total number of licenses that you want for this subscription. For example, if you have 25 licenses and you want to remove one of them, enter 24.
5. Select **Save**.

When you [add another person](add-users.md) to your business, you'll be prompted to buy a license at the same time, with just one step!

For more information about managing user licenses for Microsoft 365 for business, see [Assign licenses to users in Microsoft 365 for business](../manage/assign-licenses-to-users.md), and [Unassign licenses from users in Microsoft 365 for business](../manage/remove-licenses-from-users.md).
  
## How the deleted employee account affects Skype for Business

When you remove a user's license from Office 365, the PSTN calling number associated with the user will be released. You can assign it to another user.
  
If the user belongs to a queue group, they will no longer be a viable target of the call queue agents. So, we recommend also removing the user from the groups associated with the call queue.

## Set up call forwarding to people in your organization

If you need to set up call forwarding for the terminated employee's phone number, the call forwarding setting under calling policies can set up forwarding where incoming calls can be forwarded to other users or can ring another person at the same time. For more information, see [Calling policies in Microsoft Teams](/microsoftteams/teams-calling-policy).
