---
title: "Set up Audit (Premium) in Microsoft 365"
description: "This article describes how to set up Audit (Premium) so you can perform forensic investigations when user accounts are compromised or to investigation other security-related incidents."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 05/03/2021
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance
- m365solution-audit
- m365solution-scenario
- highpri
- audit
ms.custom: admindeeplinkMAC
search.appverid: 
- MOE150
- MET150
---

# Set up Microsoft Purview Audit (Premium)

If your organization has a subscription and end-user licensing that supports Audit (Premium), perform the following steps to set up and use the additional capabilities in Audit (Premium).

![Workflow to set up Audit (Premium).](../media/audit-premium-workflow.png)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Step 1: Set up Audit (Premium) for users

Audit (Premium) features such as the ability to log crucial events such as MailItemsAccessed and Send require an appropriate E5 license assigned to users. Additionally, the Advanced Auditing app/service plan must be enabled for those users. To verify that the Advanced Auditing app is assigned to users, perform the following steps for each user:

1. In the Microsoft 365 admin center, go to **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>, and select a user.

2. On the user properties flyout page, select **Licenses and apps**.

3. In the **Licenses** section, verify that the user is assigned an E5 license or is assigned an appropriate add-on license. For a list of licenses that support Audit (Premium), see [Audit (Premium) licensing requirements](audit-solutions-overview.md#audit-premium-1).

4. Expand the **Apps** section, and verify that the **Microsoft 365 Advanced Auditing** checkbox is selected.

5. If the checkbox isn't selected, select it, and then select **Save changes.**

   The logging of audit records for MailItemsAccessed and Send will begin within 24 hours. You have to perform Step 3 to start logging of two other Audit (Premium) events: SearchQueryInitiatedExchange and SearchQueryInitiatedSharePoint.

Also, if you've customized the mailbox actions that are logged on user mailboxes or shared mailboxes, any new Audit (Premium) events released by Microsoft won't be automatically audited on those mailboxes. For information about changing the mailbox actions that are audited for each logon type, see the "Change or restore mailbox actions logged by default" section in [Manage mailbox auditing](audit-mailboxes.md#change-or-restore-mailbox-actions-logged-by-default).

## Step 2: Enable Audit (Premium) events

You have to enable two Audit (Premium) events (SearchQueryInitiatedExchange and SearchQueryInitiatedSharePoint) to be logged when users perform searches in Exchange Online and SharePoint Online. To enable these two events to be audited for users, run the following command (for each user) in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Set-Mailbox <user> -AuditOwner @{Add="SearchQueryInitiated"}
```

In a multi-geo environment, you must run the previous **Set-Mailbox** command in the forest where the user's mailbox is located. To identify the user's mailbox location, run the following command: 

```powershell
Get-Mailbox <user identity> | FL MailboxLocations
```

If the command to enable the auditing of search queries was previously run in a forest that's different than the one the user's mailbox is located in, then you must remove the SearchQueryInitiated value from the user's mailbox by running `Set-Mailbox -AuditOwner @{Remove="SearchQueryInitiated"}` and then add it to the user's mailbox in the forest where the user's mailbox is located.

## Step 3: Set up audit retention policies

In additional to the default policy that retains Azure AD, Exchange, OneDrive, and SharePoint audit records for one year, you can create additional audit log retention policies to meet the requirements of your organization's security operations, IT, and compliance teams. For more information, see [Manage audit log retention policies](audit-log-retention-policies.md).

## Step 4: Search for Audit (Premium) events

Now that you have Audit (Premium) set up for your organization, you can search for crucial Audit (Premium) events and other activities when conducting forensic investigations. After completing Step 1 and Step 2, you can search the audit log for Audit (Premium) events and other activities during forensic investigations of compromised accounts and other types of security or compliance investigations. For more information about conducting a forensics investigation of compromised user accounts by using the MailItemsAccessed Audit (Premium) event, see [Use Audit (Premium) to investigate compromised accounts](audit-log-investigate-accounts.md).
