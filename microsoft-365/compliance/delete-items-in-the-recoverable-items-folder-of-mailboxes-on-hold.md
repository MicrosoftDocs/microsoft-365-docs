---
title: Delete items in the Recoverable Items folder of cloud mailbox's on hold
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: a85e1c87-a48e-4715-bfa9-d5275cde67b0
description: Learn how admins can delete items in a user's Recoverable Items folder for an Exchange Online mailbox, even if that mailbox is placed on legal hold.
ms.custom: seo-marvel-apr2020
---

# Delete items in the Recoverable Items folder of cloud-based mailboxes on hold

The Recoverable Items folder for an Exchange Online mailbox exists to protect from accidental or malicious deletions. It's also used to store items that are retained and accessed by compliance features, such as holds and eDiscovery searches. However, in some situations organizations might have data that's been unintentionally retained in the Recoverable Items folder that they must delete. For example, a user might unknowingly send or forward an email message that contains sensitive information or information that may have serious business consequences. Even if the message is permanently deleted, it might be retained indefinitely because a legal hold has been placed on the mailbox. This scenario is known as *data spillage* because data has been unintentionally *spilled* into Office 365. In these situations, you can delete items in a user's Recoverable Items folder for an Exchange Online mailbox, even if that mailbox is placed on hold with one of the different hold features in Office 365. These types of holds include Litigation Holds, In-Place Holds, eDiscovery holds, and retention policies created in the security and compliance center in Office 365 or Microsoft 365.
  
 This article explains how admins can delete items from the Recoverable Items folder for cloud-based mailboxes that are on hold. This procedure involves disabling access to the mailbox and disabling single item recovery, disabling the Managed Folder Assistant from processing the mailbox, temporarily removing the hold, deleting items from the Recoverable Items folder, and then reverting the mailbox to its previous configuration. Here's the process:
  
[Step 1: Collect information about the mailbox](#step-1-collect-information-about-the-mailbox)

[Step 2: Prepare the mailbox](#step-2-prepare-the-mailbox)

[Step 3: Remove all holds from the mailbox](#step-3-remove-all-holds-from-the-mailbox)

[Step 4: Remove the delay hold from the mailbox](#step-4-remove-the-delay-hold-from-the-mailbox)

[Step 5: Delete items in the Recoverable Items folder](#step-5-delete-items-in-the-recoverable-items-folder)

[Step 6: Revert the mailbox to its previous state](#step-6-revert-the-mailbox-to-its-previous-state)
  
> [!CAUTION]
> The procedures outlined in this article will result in data being permanently deleted (purged) from an Exchange Online mailbox. That means messages that you delete from the Recoverable Items folder can't be recovered and won't be available for legal discovery or other compliance purposes. If you want to delete messages from a mailbox that's placed on hold as part of a Litigation Hold, In-Place Hold, eDiscovery hold, or retention policy created in the security and compliance center, check with your records management or legal departments before removing the hold. Your organization might have a policy that defines whether a mailbox on hold or a data spillage incident takes priority.
  
## Before you delete items

- To create and run a Content Search, you have to be a member of the eDiscovery Manager role group or be assigned the Compliance Search management role. To delete messages, you have to be a member of the Organization Management role group or be assigned the Search And Purge management role. For information about adding users to a role group, see [Assign eDiscovery permissions in the Security & Compliance Center](./assign-ediscovery-permissions.md).

- The procedure described in this article isn't supported for inactive mailboxes. That's because you can't reapply a hold (or retention policy) to an inactive mailbox after you remove it. When you remove a hold from an inactive mailbox, it's changed to a normal soft-deleted mailbox and will be permanently deleted from your organization after it's processed by the Managed Folder Assistant.

- You can't perform this procedure for a mailbox that has been assigned retention settings with a policy that's locked by using Preservation Lock. That's because this lock prevents you from removing or excluding the mailbox from the policy and from disabling the Managed Folder Assistant on the mailbox. For more information about locking policies for retention,see [Use Preservation Lock to restrict changes to retention policies and retention label policies](retention-preservation-lock.md).

- If a mailbox isn't placed on hold (or doesn't have single item recovery enabled), you can delete the items from the Recoverable Items folder. For more information about how to do this, see [Search for and delete email messages in your organization](./search-for-and-delete-messages-in-your-organization.md).
  
## Step 1: Collect information about the mailbox

This first step is to collect selected properties from the target mailbox that will affect this procedure. Be sure to write down these settings or save them to a text file because you'll change some of these properties and then revert back to the original values in Step 6, after you delete items from the Recoverable Items folder. Here's a list of the mailbox properties you need to collect.
  
- *SingleItemRecoveryEnabled*  and  *RetainDeletedItemsFor*. If necessary, you'll disable single recovery and increase the deleted items retention period in Step 3.

- *LitigationHoldEnabled*  and  *InPlaceHolds*. You need to identify all the holds placed on the mailbox so that you can temporarily remove them in Step 3. See the [More information](#more-information) section for tips about how to identify the type hold that might be placed on a mailbox.

Additionally, you need to get the mailbox client access settings so you can temporarily disable them so the owner (or other users) can't access the mailbox during this procedure. Finally, you can get the current size and number of items in the Recoverable Items folder. After you delete items in the Recoverable Items folder in Step 5, you'll use this information to verify that items were removed.
  
1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). Be sure to use a user name and password for an administrator account that's been assigned the appropriate management roles in Exchange Online.

2. Run the following command to get information about single item recovery and the deleted item retention period.

    ```powershell
    Get-Mailbox <username> | FL SingleItemRecoveryEnabled,RetainDeletedItemsFor
    ```

   If single item recovery is enabled, you'll have to disable it in Step 2. If the deleted item retention period isn't set for 30 days (the maximum value in Exchange Online), then you can increase it in Step 2.

3. Run the following command to get the mailbox access settings for the mailbox.

    ```powershell
    Get-CASMailbox <username> | FL EwsEnabled,ActiveSyncEnabled,MAPIEnabled,OWAEnabled,ImapEnabled,PopEnabled
    ```

   You'll disable all of these access methods in Step 2.

4. Run the following command to get information about the holds and retention policies applied to the mailbox.

    ```powershell
    Get-Mailbox <username> | FL LitigationHoldEnabled,InPlaceHolds
    ```

   > [!TIP]
    > If there are too many values in the  *InPlaceHolds*  property and not all of them are displayed, you can run the  `Get-Mailbox <username> | Select-Object -ExpandProperty InPlaceHolds` command to display each value on a separate line.
  
5. Run the following command to get information about any organization-wide retention policies. 

    ```powershell
    Get-OrganizationConfig | FL InPlaceHolds
    ```

   If your organization has any organization-wide retention policies, you'll have to exclude the mailbox from these policies in Step 3. This may take 24 hours to replicate.

   > [!TIP]
    > If there are too many values in the  *InPlaceHolds*  property and not all of them are displayed, you can run the  `Get-OrganizationConfig | Select-Object -ExpandProperty InPlaceHolds` command to display each value on a separate line. 
  
6. Run the following command to determine if a delay hold is applied to the mailbox.

   ```powershell
   Get-Mailbox <username> | FL DelayHoldApplied,DelayReleaseHoldApplied
   ```

   If the value of the *DelayHoldApplied* or *DelayReleaseHoldApplied* property is set to **True**, a delay hold is applied to the mailbox and must be removed. For more information about delay holds, see [Step 4: Remove the delay hold from the mailbox](#step-4-remove-the-delay-hold-from-the-mailbox).

   If the value of either properties is set to **False**, a delay hold is not applied to the mailbox, and you can skip Step 4.

7. Run the following command to get the current size and total number of items in folders and subfolders in the Recoverable Items folder in the user's primary mailbox.

    ```powershell
    Get-MailboxFolderStatistics <username> -FolderScope RecoverableItems | FL Name,FolderAndSubfolderSize,ItemsInFolderAndSubfolders
    ```

   If the user's archive mailbox is enabled, run the following command to get the size and total number of items in folders and subfolders in the Recoverable Items folder in their archive mailbox. 

    ```powershell
    Get-MailboxFolderStatistics <username> -FolderScope RecoverableItems -Archive | FL Name,FolderAndSubfolderSize,ItemsInFolderAndSubfolders
    ```

   When you delete items in Step 5, you can choose to delete or not delete items in the Recoverable Items folder in the user's primary archive mailbox. If auto-expanding archiving is enabled for the mailbox, items in an auxiliary archive mailbox won't be deleted.
  
## Step 2: Prepare the mailbox

After collecting and saving information about the mailbox, the next step is to prepare the mailbox by performing the following tasks:
  
- **Disable client access to mailbox** so that the mailbox owner can't access their mailbox and make any changes to the mailbox data during this procedure.

- **Increase the deleted item retention period** to 30 days (the maximum value in Exchange Online) so that items aren't purged from the Recoverable Items folder before you can delete them in Step 5.

- **Disable single Item recovery** so that items won't be retained (for the duration of the deleted item retention period) after you delete them from the Recoverable Items folder in Step 5.

- **Disable the Managed Folder Assistant** so that it doesn't process the mailbox and retain the items that you delete in Step 5.

Perform the following steps in Exchange Online PowerShell.
  
1. Run the following command to disable all client access to the mailbox. The command syntax assumes that all client access methods were enabled on the mailbox.

    ```powershell
    Set-CASMailbox <username> -EwsEnabled $false -ActiveSyncEnabled $false -MAPIEnabled $false -OWAEnabled $false -ImapEnabled $false -PopEnabled $false
    ```

   > [!NOTE]
    > It might take up to 60 minutes to disable all client access methods to the mailbox. Note that disabling these access methods won't disconnect the mailbox owner if they are currently signed in. If the owner isn't signed in, they won't be able to access their mailbox after these access methods are disabled.
  
2. Run the following command to increase the deleted item retention period the maximum of 30 days. This assumes that the current setting is less than 30 days.

    ```powershell
    Set-Mailbox <username> -RetainDeletedItemsFor 30
    ```

3. Run the following command to disable single item recovery.

    ```powershell
    Set-Mailbox <username> -SingleItemRecoveryEnabled $false
    ```

   > [!NOTE]
    > It might take up to 60 minutes to disable single item recovery. Don't delete items in the Recoverable Items folder until this period has elapsed. 
  
4. Run the following command to prevent the Managed Folder Assistant from processing the mailbox. As previously explained, you can disable the Managed Folder Assistant only if a retention policy with a Preservation Lock is not applied to the mailbox. 

    ```powershell
    Set-Mailbox <username> -ElcProcessingDisabled $true
    ```

## Step 3: Remove all holds from the mailbox

The last step before you can delete items from the Recoverable Items folder is to remove all holds (that you identified in Step 1) placed on the mailbox. All holds must be removed so that items won't be retained after you delete them from the Recoverable Items folder. The following sections contain information about removing different types of holds on a mailbox. See the [More information](#more-information) section for tips about how to identify the type hold that might be placed on a mailbox. For more information, see [How to identify the type of hold placed on an Exchange Online mailbox](identify-a-hold-on-an-exchange-online-mailbox.md).
  
> [!CAUTION]
> As previously stated, check with your records management or legal departments before removing a hold from a mailbox. 
  
### Litigation Hold
  
Run the following command in Exchange Online PowerShell to remove a Litigation Hold from the mailbox.

```powershell
Set-Mailbox <username> -LitigationHoldEnabled $false
```

> [!NOTE]
> Similar to disabling the client access methods and single item recovery, it might take up to 60 minutes to remove the Litigation Hold. Don't delete items from the Recoverable Items folder until this period has elapsed. 
  
### In-Place Hold
  
Run the following command in Exchange Online PowerShell to identify the In-Place Hold that's placed on the mailbox. Use the GUID for the In-Place Hold that you identified in Step 1.

```powershell
Get-MailboxSearch -InPlaceHoldIdentity <hold GUID> | FL Name
```

After you identify the In-Place Hold, you can use the Exchange admin center (EAC) or Exchange Online PowerShell to remove the mailbox from the hold. For more information, see [Create or remove an In-Place Hold](/exchange/security-and-compliance/create-or-remove-in-place-holds).
  
### Retention policies applied to specific mailboxes
  
Run the following command in [Security & Compliance Center PowerShell](/powershell/exchange/exchange-online-powershell) to identify the retention policy that is applied to the mailbox. This command will also return any Teams conversation retention policies applied to a mailbox. Use the GUID (not including the `mbx` or `skp` prefix) for the retention policy that you identified in Step 1.

```powershell
Get-RetentionCompliancePolicy <retention policy GUID without prefix> | FL Name
```

After you identify the retention policy, go to the **Information governance** > **Retention** page in the Security & Compliance Center, edit the retention policy that you identified in the previous step, and remove the mailbox from the list of recipients that are included in the retention policy.
  
### Organization-wide retention policies
  
Organization-wide, Exchange-wide, and Teams-wide retention policies are applied to every mailbox in the organization. They are applied at the organization level (not the mailbox level) and are returned when you run the **Get-OrganizationConfig** cmdlet in Step 1. Run the following command in [Security & Compliance Center PowerShell](/powershell/exchange/exchange-online-powershell) to identify the organization-wide retention policies. Use the GUID (not including the  `mbx` prefix) for the organization-wide retention policies that you identified in Step 1.

```powershell
Get-RetentionCompliancePolicy <retention policy GUID without prefix> | FL Name
```

After you identify the organization-wide retention policies, go to the **Information governance** > **Retention** page in the Security & Compliance Center, edit each organization-wide retention policy that you identified in the previous step, and add the mailbox to the list of excluded recipients. Doing this will remove the user's mailbox from the retention policy.

### Retention labels

Whenever a user applies a label that's configured to retain content or retain and then delete content to any folder or item in their mailbox, the *ComplianceTagHoldApplied* mailbox property is set to **True**. When this happens, the mailbox is considered to be on hold, as if it was placed on Litigation Hold or assigned to a retention policy.

To view the value of the *ComplianceTagHoldApplied* property, run the following command in Exchange Online PowerShell:

```powershell
Get-Mailbox <username> |FL ComplianceTagHoldApplied
```

After you've identified that a mailbox is on hold because a retention label is applied to a folder or item, you can use the Content Search tool in the security and compliance center to search for labeled items by using the ComplianceTag search condition. For more information, see the "Search conditions" section in [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md#conditions-for-common-properties).

For more information about labels, see [Learn about retention policies and retention labels](retention.md).

### eDiscovery holds
  
Run the following commands in [Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell) to identify the hold associated with an eDiscovery case (called *eDiscovery holds*) that's applied to the mailbox. Use the GUID (not including the  `UniH` prefix) for the eDiscovery hold that you identified in Step 1. The second command displays the name of the eDiscovery case the hold is associated with; the third command displays the name of the hold.
  
```powershell
$CaseHold = Get-CaseHoldPolicy <hold GUID without prefix>
```

```powershell
Get-ComplianceCase $CaseHold.CaseId | FL Name
```

```powershell
$CaseHold.Name
```

After you've identified the name of the eDiscovery case and the hold, go to the **eDiscovery** \> **eDiscovery** page in the compliance center, open the case, and remove the mailbox from the hold. For more information about identifying eDiscovery holds, see the "eDiscovery holds" section in [How to identify the type of hold placed on an Exchange Online mailbox](identify-a-hold-on-an-exchange-online-mailbox.md#ediscovery-holds).
  
## Step 4: Remove the delay hold from the mailbox

After any type of hold is removed from a mailbox, the value of the *DelayHoldApplied* or *DelayReleaseHoldApplied* mailbox property is set to **True**. This occurs the next time the Managed Folder Assistant processes the mailbox and detects that a hold has been removed. This is called a *delay hold* and means the actual removal of the hold is delayed for 30 days to prevent data from being permanently deleted from the mailbox. (The purpose of a delay hold is to give admins an opportunity to search for or recover mailbox items that will be purged after a hold is removed.)  When a delay hold is placed on the mailbox, the mailbox is still considered to be on hold for an unlimited duration, as if the mailbox was on Litigation Hold. After 30 days, the delay hold expires, and Microsoft 365 will automatically attempt to remove the delay hold (by setting the *DelayHoldApplied* or *DelayReleaseHoldApplied* property to **False**) so that the hold is removed. For more information about a delay hold, see the "Managing mailboxes on delay hold" section in [How to identify the type of hold placed on an Exchange Online mailbox](identify-a-hold-on-an-exchange-online-mailbox.md#managing-mailboxes-on-delay-hold).

If the value of the *DelayHoldApplied* or *DelayReleaseHoldApplied* property is set to **True**, run one of the following commands to remove the delay hold:

```powershell
Set-Mailbox <username> -RemoveDelayHoldApplied
```

Or

```powershell
Set-Mailbox <username> -RemoveDelayReleaseHoldApplied
```

You must be assigned the Legal Hold role in Exchange Online to use the *RemoveDelayHoldApplied* or *RemoveDelayReleaseHoldApplied* parameter.

## Step 5: Delete items in the Recoverable Items folder

Now you're ready to actually delete items in the Recoverable Items folder by using the [New-ComplianceSearch](/powershell/module/exchange/new-compliancesearch) and [New-ComplianceSearchAction](/powershell/module/exchange/new-compliancesearchaction) cmdlets in Security & Compliance Center PowerShell.

To search for items that are located in the Recoverable Items folder, we recommend that you perform a *targeted collection*. This means you narrow the scope of your search only to items located in the Recoverable Items folder. You can do this by running the script in the [Use Content Search for targeted collections](use-content-search-for-targeted-collections.md) article. This script returns the value of the folder ID property for all the subfolders in the target Recoverable Items folder. Then you use the folder ID in a search query to return items located in that folder.

Here's an overview of the process to search for and delete items in a user's Recoverable Items folder:

1. Run the targeted collection script that returns the folder IDs for all folders in the target user's mailbox. The script connects to Exchange Online PowerShell and Security & Compliance PowerShell in the same PowerShell session. For more information, see [Run the script to get a list of folders for a mailbox](use-content-search-for-targeted-collections.md#step-1-run-the-script-to-get-a-list-of-folders-for-a-mailbox-or-site).

2. Copy the folder IDs for all subfolders in the Recoverable Items folder. Alternatively, you can redirect the output of the script to a text file.

   Here's a list and description of the subfolders in the Recoverable Items folder that you can search and delete items from:

   - **Deletions**: Contains soft-deleted items whose deleted item retention period has not expired. Users can recover soft-deleted items from this subfolder using the Recover Deleted Items tool in Outlook.

   - **Purges**: Contains hard-deleted items whose deleted item retention period has expired. Users can also hard-delete items by purging items from their Recoverable Items folder. If the mailbox is on hold, hard-deleted items are preserved. This subfolder isn't visible to end users.

   - **DiscoveryHolds**: Contains hard-deleted items that have been preserved by an eDiscovery hold or a retention policy. This subfolder isn't visible to end users.

   - **SubstrateHolds**: Contains hard-deleted items from Teams and other cloud-based apps that have been preserved by a retention policy or other type of hold. This subfolder isn't visible to end users.

3. Use the **New-ComplianceSearch** cmdlet (in Security & Compliance Center PowerShell) or use the Content search tool in the compliance center to create a content search that returns items from the target user's Recoverable Items folder. You can do this by including the FolderId in the search query for all subfolders that you want to search. For example, the following query returns all messages in the Purges and eDiscoveryHolds subfolders:

   ```text
   folderid:<folder ID of Purges subfolder> OR folderid:<folder ID of DiscoveryHolds subfolder>
   ```

   For more information and examples about running content searches that use the folder ID property, see [Use a folder ID or to perform a targeted collection](use-content-search-for-targeted-collections.md#step-2-use-a-folder-id-or-documentlink-to-perform-a-targeted-collection).

   > [!NOTE]
   > If you use the **New-ComplianceSearch** cmdlet to search the Recoverable Items folder, be sure to use **Start-ComplianceSearch** cmdlet to run the search.

4. After you've created a content search and validated that it returns the items that you wan to delete, use the `New-ComplianceSearchAction -Purge -PurgeType HardDelete` command (in Security & Compliance Center PowerShell) to permanently delete the items returned by the content search that you created in the previous step. For example, you can run a command similar to the following command:

   ```powershell
   New-ComplianceSearchAction -SearchName "RecoverableItems" -Purge -PurgeType HardDelete
   ```

5. A maximum of 10 items per mailbox are deleted when you run the previous command. That means you may have to run the `New-ComplianceSearchAction -Purge` command multiple times to delete all the items that you want to delete in the Recoverable Items folder. To delete additional items, you first have to remove the previous compliance search purge action. You do this by running the `Remove-ComplianceSearchAction` cmdlet. For example, to delete the purge action that was run in the previous step, run the following command:

   ```powershell
   Remove-ComplianceSearchAction "RecoverableItems_Purge"
   ```

   After you do this, you can create a new compliance search purge action to delete more items. You'll have to delete each purge action before creating a new one.

   To get a list of the compliance search actions, you can run the `Get-ComplianceSearchAction` cmdlet. Purge actions are identified by `_Purge` appended to the search name.

### Verify that items were deleted

To verify that you've successfully deleted items from the Recoverable Items folder of a mailbox, use **Get-MailboxFolderStatistics** cmdlet in Exchange Online PowerShell to check the size and number of items in Recoverable Items folder. You can compare these statistics with the ones you collected in Step 1.
  
Run the following command in to get the current size and total number of items in folders and subfolders in the Recoverable Items folder in the user's primary mailbox.
  
```powershell
Get-MailboxFolderStatistics <username> -FolderScope RecoverableItems | FL Name,FolderAndSubfolderSize,ItemsInFolderAndSubfolders
```

Run the following command to get the size and total number of items in folders and subfolders in the Recoverable Items folder in the user's archive mailbox.

```powershell
Get-MailboxFolderStatistics <username> -FolderScope RecoverableItems -Archive | FL Name,FolderAndSubfolderSize,ItemsInFolderAndSubfolders
```

## Step 6: Revert the mailbox to its previous state

The final step is to revert the mailbox back to its previous configuration. This means resetting the properties that you changed in Step 2 and reapplying the holds that you removed in Step 3. This includes:
  
- Changing the deleted item retention period back to its previous value. Alternatively, you can just leave this set to 30 days, the maximum value in Exchange Online.

- Re-enabling single Item recovery.

- Re-enabling the client access methods so that the owner can access their mailbox.

- Reapplying the holds and retention policies that you removed.

- Re-enabling the Managed Folder Assistant to process the mailbox.

> [!IMPORTANT]
> We recommend that you wait 24 hours after re-applying a hold or retention policy (and verifying that it's in place) before you re-enable the Managed Folder Assistant to process the mailbox.
  
Perform the following steps (in the specified sequence) in Exchange Online PowerShell.
  
1. Run the following command to change the deleted item retention period back to its original value. This assumes that the previous setting is less than 30 days; for example, 14 days.

    ```powershell
    Set-Mailbox <username> -RetainDeletedItemsFor 14
    ```

2. Run the following command to re-enable single item recovery.

    ```powershell
    Set-Mailbox <username> -SingleItemRecoveryEnabled $true
    ```

3. Run the following command to re-enable all client access methods to the mailbox.

    ```powershell
    Set-CASMailbox <username> -EwsEnabled $true -ActiveSyncEnabled $true -MAPIEnabled $true -OWAEnabled $true -ImapEnabled $true -PopEnabled $true
    ```

4. Reapply the holds that you removed in Step 3. Depending on the type of hold, use one of the following procedures.

    **Litigation Hold**

    Run the following command to re-enable a Litigation Hold for the mailbox.

    ```powershell
    Set-Mailbox <username> -LitigationHoldEnabled $true
    ```

    **In-Place Hold**

    Use the EAC (or Exchange Online PowerShell) to add the mailbox back to the In-Place Hold.

    **Retention policies applied to specific mailboxes**

    Use the Security & Compliance Center to add the mailbox back to the retention policy. Go to the **Information governance** > **Retention** page in the Security & Compliance Center, edit the retention policy, and add the mailbox back to the list of recipients that the retention policy is applied to.

    **Organization-wide Retention policies**

    If you removed an organization-wide or Exchange-wide retention policy by excluding it from the policy, then use the Security & Compliance Center to remove the mailbox from the list of excluded users. Go to the **Information governance** > **Retention** page in the Security & Compliance Center, edit the organization-wide retention policy, and remove the mailbox from the list of excluded recipients. Doing this will reapply the retention policy to the user's mailbox.

    **eDiscovery case holds**

    Use the Security & Compliance Center to add the mailbox back the hold that's associated with an eDiscovery case. Go to the **eDiscovery** > **eDiscovery** page, open the case, and add the mailbox back to the hold. 

5. Run the following command to allow the Managed Folder Assistant to process the mailbox again. As previously stated, we recommend that you wait 24 hours after reapplying a hold or retention policy (and verifying that it's in place) before you re-enable the Managed Folder Assistant.

    ```powershell
    Set-Mailbox <username> -ElcProcessingDisabled $false
    ```

6. To verify that the mailbox has been reverted back to its previous configuration, you can run the following commands and then compare the settings to the ones that you collected in Step 1.

    ```powershell
    Get-Mailbox <username> | FL ElcProcessingDisabled,InPlaceHolds,LitigationHoldEnabled,RetainDeletedItemsFor,SingleItemRecoveryEnabled
    ```

    ```powershell
    Get-CASMailbox <username> | FL EwsEnabled,ActiveSyncEnabled,MAPIEnabled,OWAEnabled,ImapEnabled,PopEnabled
    ```

## More information

Here's a table that describes how to identify different types of holds based on the values in the  *InPlaceHolds*  property when you run the **Get-Mailbox** or **Get-OrganizationConfig** cmdlets. For more detailed information, see [How to identify the type of hold placed on an Exchange Online mailbox](identify-a-hold-on-an-exchange-online-mailbox.md).

As previously explained, you have to remove all holds and retention policies from a mailbox before you can successfully delete items in the Recoverable Items folder.
  
| Hold type | Example value | How to identify the hold |
|:-----|:-----|:-----|
|Litigation Hold  <br/> | `True` <br/> |The  *LitigationHoldEnabled*  property is set to  `True`.  <br/> |
|In-Place Hold  <br/> | `c0ba3ce811b6432a8751430937152491` <br/> |The  *InPlaceHolds*  property contains the GUID of the In-Place Hold that's placed on the mailbox. You can tell this is an In-Place Hold because the GUID doesn't start with a prefix.  <br/> You can use the  `Get-MailboxSearch -InPlaceHoldIdentity <hold GUID> | FL` command in Exchange Online PowerShell to get information about the In-Place Hold on the mailbox.  <br/> |
| Retention policies in the Security & Compliance Center applied to specific mailboxes  <br/> | `mbxcdbbb86ce60342489bff371876e7f224` <br/> or  <br/>  `skp127d7cf1076947929bf136b7a2a8c36f` <br/> |When you run the **Get-Mailbox** cmdlet, the  *InPlaceHolds*  property also contains GUIDs of retention policies applied to the mailbox. You can identify retention policies because the GUID starts with the  `mbx` prefix. If the GUID of the retention policy starts with the  `skp` prefix, that indicates that the retention policy is applied to Skype for Business conversations.  <br/> To identity the retention policy that's applied to the mailbox, run the following command in Security & Compliance Center PowerShell: <br/> <br/>`Get-RetentionCompliancePolicy <retention policy GUID without prefix> | FL Name`<br/><br/>Be sure to remove the  `mbx` or  `skp` prefix when you run this command.  <br/> |
|Organization-wide retention policies in the Security & Compliance Center  <br/> |No value  <br/> or  <br/>  `-mbxe9b52bf7ab3b46a286308ecb29624696` (indicates that the mailbox is excluded from an organization-wide policy)  <br/> |Even if the  *InPlaceHolds*  property is empty when you run the **Get-Mailbox** cmdlet, there still might be one or more organization-wide retention policies applied to the mailbox.  <br/> To verify this, you can run the  `Get-OrganizationConfig | FL InPlaceHolds` command in Exchange Online PowerShell to get a list of the GUIDs for organization-wide retention policies. The GUID for organization-wide retention policies applied to Exchange mailboxes starts with the  `mbx` prefix; for example,  `mbxa3056bb15562480fadb46ce523ff7b02`.  <br/> To identity the organization-wide retention policy that's applied to the mailbox, run the following command in Security & Compliance Center PowerShell: <br/><br/> `Get-RetentionCompliancePolicy <retention policy GUID without prefix> | FL Name`<br/><br/>If a mailbox is excluded from an organization-wide retention policy, the GUID for the retention policy is displayed in the  *InPlaceHolds*  property of the user's mailbox when you run the **Get-Mailbox** cmdlet; it's identified by the prefix  `-mbx`; for example,  `-mbxe9b52bf7ab3b46a286308ecb29624696` <br/> |
|eDiscovery case hold in the Security & Compliance Center  <br/> | `UniH7d895d48-7e23-4a8d-8346-533c3beac15d` <br/> |The  *InPlaceHolds*  property also contains the GUID of any hold associated with an eDiscovery case in the Security & Compliance Center that might be placed on the mailbox. You can tell this is an eDiscovery case hold because the GUID starts with the  `UniH` prefix.  <br/> You can use the  `Get-CaseHoldPolicy` cmdlet in Security & Compliance Center PowerShell to get information about the eDiscovery case that the hold on the mailbox is associated with. For example, you can run the command  `Get-CaseHoldPolicy <hold GUID without prefix> | FL Name` to display the name of the case hold that's on the mailbox. Be sure to remove the  `UniH` prefix when you run this command.  <br/><br/> To identity the eDiscovery case that the hold on the mailbox is associated with, run the following commands:<br/><br/>`$CaseHold = Get-CaseHoldPolicy <hold GUID without prefix>`<br/><br/>`Get-ComplianceCase $CaseHold.CaseId | FL Name`
