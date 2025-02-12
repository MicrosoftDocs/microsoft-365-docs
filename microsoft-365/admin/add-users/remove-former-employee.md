---
title: "Remove a former employee - Overview"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/01/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- has-azure-ad-ps-ref
- azure-ad-ref-level-one-done
- adminvideo
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- AdminTemplateSet
- m365solution-removeemployee
- business_assist
description: "Block access to Microsoft 365 so a former employee can't sign in, secure organization data, and allow other employees to access their email and OneDrive data."
---

# Overview: Remove a former employee and secure data

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

A question we often get is, "What should I do to secure data and protect access when an employee leaves my organization?" This article series explains how to block access to Microsoft 365 so these users can't sign in to Microsoft 365, the steps you should take to secure organization data, and how to allow other employees to access email and OneDrive data.

## Before you begin

To complete the steps in this series, you use these Microsoft 365 capabilities and features.

|Product or component|Capability or feature|
|---|---|
|Microsoft 365 admin center|Convert mailbox, forward email, revoke access, remove user |
|Exchange admin center|Block user, block access to email, wipe device |
|OneDrive and SharePoint |Give access to other users |
|Outlook|Import pst files, add mailbox |
|Active Directory|Remove users in hybrid environments |

## Solution: Remove a former employee

> [!IMPORTANT]
> Although we've numbered the steps in this solution and you don't have to complete the solution using the exact order, we do recommend doing the steps this way.

:::image type="content" source="../../media/delete-user-account.png" alt-text="Screenshot: Steps for removing a former employee from your organization":::

<br>

****

|Step|Why do this|
|---|---|
|[Step 1 - Prevent a former employee from logging in and block access to Microsoft 365 services](remove-former-employee-step-1.md)|This blocks your former employee from logging in to Microsoft 365 and prevents the person from accessing Microsoft 365 services.|
|[Step 2 - Save the contents of a former employee's mailbox](remove-former-employee-step-2.md)|This is useful for the person who is going to take over the employee's work, or if there is litigation.|
|[Step 3 - Wipe and block a former employee's mobile device](remove-former-employee-step-3.md)|Removes your business data from the phone or tablet.|
|[Step 4 - Forward a former employee's email to another employee or convert to a shared mailbox](remove-former-employee-step-4.md)|This lets you keep the former employee's email address active. If you have customers or partners still sending email to the former employee's address, this gets them to the person taking over the work.|
|[Step 5 - Give another employee access to OneDrive and Outlook data](remove-former-employee-step-5.md)|If you only remove a user's license but don't delete the account, the content in the user's OneDrive will remain accessible to you even after 30 days. <p> Before you delete the account, you should give access of their OneDrive and Outlook to another user. After you delete an employee's account, the content in their OneDrive and Outlook is retained for **30** days. During that 30 days, however, you can restore the user's account, and gain access to their content. If you restore the user's account, the OneDrive and Outlook content will remain accessible to you even after 30 days.| 
|[Step 6 - Remove and delete the Microsoft 365 license from a former employee](remove-former-employee-step-6.md)|When you remove a license, you can assign it to someone else. Or, you can delete the license so you don't pay for it until you hire another person. <p> When you remove or delete a license, the user's old email, contacts, and calendar are retained for **30 days**, then permanently deleted. If you remove or delete a license but don't delete the account, the content in the user's OneDrive will remain accessible to you even after 30 days.|
|[Step 7 - Delete a former employee's user account](remove-former-employee-step-7.md)|This removes the account from your admin center. Keeps things clean. Emails to the former employee's user account will not be received.|

## Watch: Delete a user overview

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198203).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=f1196f82-611c-41c8-8cc1-98e70f591d5d]

## Does your organization use Active Directory?

If your organization synchronizes user accounts to Microsoft 365 from a local Active Directory environment, you must delete and restore those user accounts in your local Active Directory service. You can't delete or restore them in Microsoft 365.

To learn how to delete and restore user account in Active Directory, see [Delete a User Account](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753730(v=ws.11)).
  
If you're using Microsoft Entra ID, see the [Remove-MgUser](/powershell/module/microsoft.graph.users/remove-mguser) PowerShell cmdlet.
  
## Related content

[Restore a user](restore-user.md) (article)\
[Add a new employee to Microsoft 365](add-new-employee.md) (article)\
[Assign or unassign licenses for users in the Microsoft 365 admin center](../manage/assign-licenses-to-users.md) (article)\
[Remove-CalendarEvents](/powershell/module/exchange/remove-calendarevents)
