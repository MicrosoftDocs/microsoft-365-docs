---
title: "Upgrade distribution lists to Microsoft 365 Groups in Exchange Online"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkEXCHANGE
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 787d7a75-e201-46f3-a242-f698162ff09f
description: "Learn how to upgrade one or many distribution lists to Microsoft 365 Groups in Exchange Online, and how to use PowerShell to upgrade several distribution lists simultaneously."
---

# Upgrade distribution lists to Microsoft 365 Groups in Exchange Online

Upgrading a distribution list to a Microsoft 365 Group is a great way to improve the features and capabilities of groups in your organization. For more information, see [Why you should upgrade your distribution lists to groups in Outlook](https://support.microsoft.com/office/7fb3d880-593b-4909-aafa-950dd50ce188)

You can upgrade distribution lists one at a time, or several at the same time. You can use the Exchange admin center (EAC) or Exchange Online PowerShell.

## Upgrade one or many distribution list groups to Microsoft 365 Groups

You must be a global admin or Exchange admin to upgrade a distribution list. To upgrade to Microsoft 365 Groups, the distribution list must have a designated owner, and that owner must be a mailbox.

### Use the Classic EAC to upgrade one or many distribution list groups to Microsoft 365 Groups in Outlook

> [!NOTE]
> The procedures in this section are not available in the new EAC.

1. Go to the Exchange admin center > **Recipients** \> <a href="https://go.microsoft.com/fwlink/?linkid=2183233" target="_blank">**Groups**</a>.

   You'll see a notice indicating you have distribution lists (also called **distribution groups**) that are eligible to be upgraded to Microsoft 365 Groups.
   
   ![Select the Get started button.](../../media/8cf838b4-2644-401f-a366-08c1eea183eb.png)

1. Select one or more distribution lists (also called **distribution groups**) from the **groups** page.

   ![Select a distribution group.](../../media/2c303433-d60b-4100-a6ae-5809b03a8cdb.png)

1. Select the upgrade icon.

   ![Upgrade to Microsoft 365 Groups icon.](../../media/1e28cb3d-bff3-4be3-8329-1902d2d54720.png)

1. On the information dialog, select **Yes** to confirm the upgrade. The process begins immediately. Depending on the size and number of distribution lits you're upgrading, the process can take minutes or hours.

   If the distribution list can't be upgraded, a dialog appears saying so. See [Which distribution lists cannot be upgraded?](#which-distribution-lists-cant-be-upgraded).

1. If you're upgrading multiple distribution lists, use the drop-down list to filter which distribution lists have been upgraded. If the list isn't complete, wait a while longer and then select **Refresh** to see what's been successfully upgraded.

**Notes**:

- You won't get a notification when the upgrades are complete. Instead, see what's listed under **Available for upgrade** or **Upgraded DLs**.

- If you selected a distribution list for upgrade, but it's still appeared on the page as **Available to upgrade**, then it failed to upgrade. See [What to do if the upgrade doesn't work](#what-to-do-if-the-upgrade-doesnt-work).

- The digest email of a group might offer to let you upgrade any eligible distribution lists that you're the owner of. For more information about digest email, see [Have a group conversation in Outlook](https://support.microsoft.com/office/a0482e24-a769-4e39-a5ba-a7c56e828b22).

## What to do if the upgrade doesn't work

Distribution lists that fail to upgrade remain unchanged.

If one or more **eligible** distribution lists fail to be upgraded, do the following steps:

1. Use [this script](https://aka.ms/DLToM365Group) to scan for possible issues. Fix any issues reported by the script and try upgrading the distribution list one more time. 

2. If the script doesn't help, open a [Support ticket](../../business-video/get-help-support.md). The issue will need to be escalated to the Groups Engineering team.

## How to use Exchange Online PowerShell to upgrade several distribution lists at the same time

To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

### Upgrade a single distribution list

To upgrade a single distribution list, use the following syntax:

```PowerShell
Upgrade-DistributionGroup -DLIdentities <EmailAddress>
```

This example upgrade the distribution list marketing@contoso.com:

```PowerShell
Upgrade-DistributionGroup -DLIdentities marketing@contoso.com
```

For detailed syntax and parameter information, see [Upgrade-DistributionGroup](/powershell/module/exchange/upgrade-distributiongroup).

> [!NOTE]
> You can also upgrade a single distribution list to a Microsoft 365 group using the [New-UnifiedGroup](/powershell/module/exchange/new-unifiedgroup) cmdlet.

### Upgrade multiple distribution lists at the same time

To upgrade multiple distribution lists at the same time, use the following syntax:

```PowerShell
Upgrade-DistributionGroup -DLIdentities <EmailAddress1>,<EmailAddress2>,...
```

This example upgrades the specified distribution lists to Microsoft 365 Groups.

```powershell
Upgrade-DistributionGroup -DLIdentities marketing@contoso.com,finanace@contoso.com,hr@contoso.com
```

For detailed syntax and parameter information, see [Upgrade-DistributionGroup](/powershell/module/exchange/upgrade-distributiongroup).

### Upgrade all eligible distribution lists

Use either of the following methods to upgrade all eligible distribution lists to Microsoft 365 Groups:

- Upgrade all eligible distribution lists:

   ```PowerShell
   $All = Get-EligibleDistributionGroupForMigration -ResultSize unlimited
   $All | Foreach-Object {Upgrade-DistributionGroup -DLIdentities $_.PrimarySMTPAddress}
   ```

- Try to upgrade all distribution lists whether they're eligible or not:

   ```PowerShell
   $All Get-DistributionGroup -RecipientTypeDetails MailUniversalDistributionGroup -ResultSize unlimited
   $All | Foreach-Object {Upgrade-DistributionGroup -DLIdentities $_.PrimarySMTPAddress}
   ```

## FAQ about upgrading distribution lists to Microsoft 365 Groups in Outlook

### Which distribution lists can't be upgraded?

You can only upgrade cloud-managed, simple, non-nested distribution lists. The table below lists distribution lists that **CANNOT** be upgraded.

|Property|Eligible?|
|---|:---:|
|On-premises managed distribution list.|No|
|Nested distribution lists. Distribution list either has child groups or is a member of another group.|No|
|Distribution lists where one or more members are something other than a user mailbox, shared mailbox, team mailbox, or mail user. In other words, the **RecipientTypeDetails** value of any member of the distribution list is not **UserMailbox**, **SharedMailbox**, **TeamMailbox**, or **MailUser**.|No|
|Distribution list that has more than 100 owners.|No|
|Distribution list that only has members but no owner.|No|
|Distribution list that has alias containing special characters.|No|
|The distribution list is configured to be a forwarding address for a Shared mailbox.|No|
|The distribution list is part of **Sender Restriction** in another distribution list.|No|
|Mail-enabled security groups.|No|
|Dynamic distribution groups.|No|
|Distribution lists that were converted to **RoomLists**.|No|

### Check which distribution lists are eligible for upgrade

To check whether a specific distribution list is eligible for upgrade, run the following command:

```PowerShell
Get-DistributionGroup <EmailAddress> | Get-EligibleDistributionGroupForMigration
```

To see all distribution groups that are eligible for upgrade, run the following command:

```PowerShell
Get-EligibleDistributionGroupForMigration
```

### Who can run the upgrade scripts?

People with global admin or Exchange admin rights.

### Why is the contact card still showing a distribution list? What should I do to prevent an upgraded distribution list from showing up in my auto suggest list?

- **Outlook**: After you upgrade a ditribution list to a Microsoft 365 group, the user's local recipient cache (also known as the nick name cache) is not aware of the change. Do the steps in the following article to reset the user's local recipient cache: [Information about the Outlook AutoComplete list](/outlook/troubleshoot/contacts/information-about-the-outlook-autocomplete-list). 

  If you don't update the recipient cache, any email sent to the Microsoft 365 Group will be delivered successfully, but the following issues will remain:
  
  - The Group recipient will resolve as the distribution list instead of the Microsoft 365 Group.
  - The contact card will be the distribution list's contact instead of the Microsoft 365 Group's.

- **Outlook on the web**: Like Outlook, the distribution list will remain in the recipient cache. Follow the steps in this article to refresh the cache to see the Group's contact card: [Remove suggested name or email address from the Auto-Complete List](https://support.microsoft.com/office/9E1419D9-E88F-445B-B07F-F558B8A37C58).

### Do new group members get a welcome email in their inbox?

No. The setting to enable welcome messages is set to false by default. This setting affects both existing and new group members who may join after the migration is complete. If the group owner later allows guest users, guest users won't receive a welcome email in their Inbox. Guest members can continue working with the group.

### What if one or some of the DLs are not upgraded?

There are some cases in where eligible distribution lists can't be upgraded. For example:

- An admin has applied a **Group Email Address Policy**, and the distribution list doesn't meet the requirements of the policy.

- A distribution list has the **MemberJoinRestriction** or **MemberDepartRestriction** set to the value **Closed**.

- The creation of Microsoft 365 Group creation is limited as described in this article: [this article](/microsoft-365/solutions/manage-creation-of-groups).

  Use one of the following workarounds for this specific issue:

  - Ensure all owners of the distribution list are allowed to create Microsoft 365 Groups (i.e., the owners are member of the security group that is allowed to create Microsoft 365 Groups).

  - Temporarily replace the owner of the distribution list with a user who's allowed to create Microsoft 365 Groups.

### What happens to the DL if the upgrade from EAC fails?

The upgrade will happen only when the call is submitted to the server. If the upgrade fails, your distribution lists will remain and function as they used to.

### What happens to message approval (moderation) settings on distribution groups after upgrading?

The message approval (moderation) settings are preserved and continue to work fine after the distribution group is upgraded to a Microsoft 365 Group.

## Related content

[Compare groups](../create-groups/compare-groups.md) (article)\
[Explaining Microsoft 365 Groups to your users](../create-groups/explain-groups-knowledge-worker.md) (article)\
[Add or remove members from Microsoft 365 groups using the admin center](../create-groups/add-or-remove-members-from-groups.md)
