---
title: "Remove a former employee - Overview"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
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
search.appverid:
- BCS160
- MET150
- MOE150
description: "Follow this checklist to remove an employee from Microsoft 365 and secure data. "
---

# Remove or Delete a former employee

Watch a short video about removing an employee. <br><br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FOfR] 

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](https://support.microsoft.com/office/6ab4bbcd-79cf-4000-a0bd-d42ce4d12816).

To prevent an employee from logging in:

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the box next to the user's name, and then select **Reset password**.
3. Enter a new password, and then select **Reset**. (Don't send it to them.)
4. Select the user's name to go to their properties pane, and on the **Account** tab, select **Initiate sign-out**.

> [!NOTE]
> You need to be a global administrator to initiate sign-out.

Within an hour - or after they leave the current Microsoft 365 page they are on - they're prompted to sign in again. An access token is good for an hour, so the timeline depends on how much time is left on that token, and whether they navigate out of their current webpage.
  
> [!IMPORTANT]
> If the user is in Outlook on the web, just clicking around in their mailbox, they may not be kicked out immediately. As soon as they select a different tile, such as OneDrive, or refresh their browser, the sign-out is initiated.
  
To use PowerShell to sign out a user immediately, see [Revoke-AzureADUserAllRefreshToken](/powershell/module/azuread/revoke-azureaduserallrefreshtoken) cmdlet.
  
For more information about how long it takes to get someone out of email, see [What you need to know about terminating an employee's email session](#what-you-need-to-know-about-terminating-an-employees-email-session).

## Overview of all the steps to remove an employee and secure data

A question we often get is, "What should I do to protect data when an employee leaves the organization?" This article explains how to block access to Microsoft 365 and the steps you should take to secure your data.
  
> [!NOTE]
> If you are a global administrator you can delete the employee, forward their email, choose what to do with their OneDrive content using the new guided experience. For more information, see [Global admin: Delete a user](remove-former-employee.md). However, we recommend completing all of the additional steps listed here to ensure the employee doesn't have access to your company's data. 
  
Here's a quick overview. Each step is explained in detail in this article.
  
|||
|:-----|:-----|
|**Step** <br/> |**Why do this** <br/> |
|1. [Save the contents of a former employee's mailbox](#save-the-contents-of-a-former-employees-mailbox) <br/> |This is useful for the person who is going to take over the employee's work, or if there is litigation.  <br/> |
|2. [Forward a former employee's email to another employee or convert to a shared mailbox](#forward-a-former-employees-email-to-another-employee-or-convert-to-a-shared-mailbox) <br/> |This lets you keep the former employee's email address active. If you have customers or partners still sending email to the former employee's address, this gets them to the person taking over the work.  <br/> |
|3. [Wipe and block a former employee's mobile device](#wipe-and-block-a-former-employees-mobile-device) <br/> |Removes your business data from the phone or tablet.  <br/> |
|4. [Block a former employee's access to Microsoft 365 data](#block-a-former-employees-access-to-microsoft-365-data)<br/> |It prevents the person from accessing their old Microsoft 365 mailbox and data.  <br/><br/> **Tip**: When you block a user's access, you're still paying for their license. To stop paying for it, delete the license from your subscription (step 5).  |
|5. [Move the employee's OneDrive content](get-access-to-and-back-up-a-former-user-s-data.md) <br/> |If you only remove a user's license but don't delete the account, the content in the user's OneDrive will remain accessible to you even after 30 days.  <br/><br/> Before you delete the account, you should move the content of their OneDrive to another location that's easy for you to access. After you delete an employee's account, the content in their OneDrive is retained for **30** days. During that 30 days, however, you can restore the user's account, and gain access to their OneDrive content. If you restore the user's account, the OneDrive content will remain accessible to you even after 30 days.  <br/> |
|5a. What if the person used their personal computer to access OneDrive and SharePoint?  <br/> |If they used a personal computer instead of a company-issued computer to download files from OneDrive and SharePoint, there's no way for you to wipe those files they stored.  <br/><br/> They continue to have access to any files that were synced to their computer.  <br/> |
|6. [Remove and delete the Microsoft 365 license from a former employee](#remove-and-delete-the-microsoft-365-license-from-a-former-employee)<br/> |When you remove a license, you can assign it to someone else. Or, you can delete the license so you don't pay for it until you hire another person.  <br/><br/> When you remove or delete a license, the user's old email, contacts, and calendar are retained for **30 days**, then permanently deleted. If you remove or delete a license but don't delete the account, the content in the user's OneDrive will remain accessible to you even after 30 days.  <br/> |
|7. [Delete a former employee's user account](#delete-a-former-employees-user-account)<br/> |This removes the account from your admin center. Keeps things clean.  <br/> |
