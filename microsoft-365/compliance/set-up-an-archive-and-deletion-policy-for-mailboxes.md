---
title: "Customize an archive and deletion policy (MRM) for mailboxes"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- M365-security-compliance
- tier2
search.appverid:
- MOE150
- MED150
- MBS150
- BCS160
- MET150
ms.assetid: ec3587e4-7b4a-40fb-8fb8-8aa05aeae2ce
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkEXCHANGE
description: "How to create a custom messaging records management (MRM) archiving and deletion policy to automatically move items to a user's archive mailbox."
---

# Customize an archive and deletion policy for mailboxes in your organization

To retain and delete emails, we recommend you use [Microsoft 365 retention policies and retention labels](retention.md) rather than the older messaging records management (MRM) from Exchange Online. However, a valid reason to still use this older feature is to automatically move emails from a user's primary mailbox to their [archive mailbox](archive-mailboxes.md). You might also need to use MRM to apply retention and deletion settings to specific folders in the mailbox, rather than the entire mailbox.

Use this article as an example deployment for these two valid reasons to use MRM retention policies and retention tags. For all other retention and deletion scenarios, use Microsoft 365 retention policies and retention labels.

The configuration requires you to create an MRM retention policy that you then assign to mailboxes. This policy moves items to a user's archive mailbox after a specified period of time and also deletes items from the Deleted items folder after they reach a specific age limit.

The actual rules that determine what items are moved or deleted and when that happens are called retention tags. Retention tags are linked to an MRM retention policy, that in turn is assigned to a user's mailbox. A retention tag applies retention settings to individual messages and folders in a user's mailbox. It defines how long a message remains in the mailbox and what action is taken when the message reaches the specified retention age. When a message reaches its retention age, it's either moved to the user's archive mailbox or it's deleted.
  
The steps in this article set up an archiving and retention policy for a fictitious organization named Alpine House. Setting up this policy includes the following tasks:
  
- Enable an archive mailbox for every user in the organization. This procedure gives users more mailbox storage, and is required so that a retention policy can automatically move items to the archive mailbox. A user can also manually move items to their archive mailbox for archival storage.

- Create two custom retention tags to do the following actions:
    
    - Automatically move items that are 3 years old to the user's archive mailbox. Moving items to the archive mailbox frees up space in a user's primary mailbox.
    
    - Automatically delete items that are 5 years old from the Deleted Items folder. This also frees up space in the user's primary mailbox. User's will have the opportunity to recover these items if necessary. See the footnote in the [More information](#more-information) section for more details. 

- Create a new retention policy and add the new custom retention tags to it. Additionally, you'll add a built-in retention tag that can't be achieved with a recommended Microsoft 365 retention label because it also moves items to the archive mailbox. It's a personal tag for archiving after 1 year that users can assign to items in their mailbox when they want a shorter archive period than their default of 3 years.

You can follow some or all of the steps in this article to set up an archive and deletion policy for mailboxes in your own organization. We recommend that you test this process on a few mailboxes before implementing it on all mailboxes in your organization.

> [!NOTE]
> Instructions in this article use the [Microsoft Purview compliance portal](microsoft-365-compliance-center.md) and the [new Exchange admin center](/exchange/features-in-new-eac).

## Before you set up an archive and deletion policy

- You must be a global administrator in your organization to perform the steps in this article.

- When you create a new user account and assign the user an Exchange Online license, a mailbox is automatically created for the user. When the mailbox is created, it's automatically assigned a default retention policy, named Default MRM Policy. In this article, you'll create a new MRM retention policy and then assign it to user mailboxes, replacing the Default MRM policy. A mailbox can have only one MRM retention policy assigned to it at any one time.

- To learn more about retention tags and MRM retention policies in Exchange Online, see [Retention tags and retention policies](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies).

## Step 1: Enable archive mailboxes for users

The first step is to ensure each user in your organization has an archive mailbox. A user's archive mailbox must be enabled so that a retention tag with a "Move to Archive" retention action can move the item after the retention age expires.

For instructions to enable archive mailboxes, see [Enable archive mailboxes in Microsoft 365](enable-archive-mailboxes.md).
  
> [!NOTE]
> You can enable archive mailboxes any time during this process, just as long as they're enabled at some point before you complete the process. If an archive mailbox isn't enabled, no action is taken on any items that have an archive or deletion policy assigned to it.

## Step 2: Create new retention tags for the archive and deletion policies

In this step, you'll create the two custom retention tags that were previously described.
  
- Alpine House 3 Year Move to Archive (custom archive policy)

- Alpine House Deleted Items 5 Years Delete and Allow Recovery (custom tag for the Deleted Items folder)

To create new retention tags, you'll use the [Microsoft Purview compliance portal](microsoft-365-compliance-center.md).
  
1. Go to the [Microsoft Purview compliance portal](https://compliance.microsoft.com/) and sign in using your credentials.
  
2. In the compliance portal, go to **Solutions** \> **Data lifecycle management** \> **Exchange (legacy)** > **MRM Retention tags**
    
    A list of the retention tags for your organization is displayed.

### Create a custom archive default policy tag
  
First, you'll create a custom archive default policy tag (DPT) that will move items to the archive mailbox after 3 years.
  
1. On the **MRM Retention tags** page, select **+ New tag**, and then on the **Name your tag** page, type a name for the new retention tag, and an optional description that explains the purpose of the custom retention tag.
    
    For our example scenario, we'll name this tag "Alpine House 3 Year Move to Archive".

2. On the **Define how the tag will be applied** page, select **Automatically to entire mailbox (default)**.

2. On the **Define retention settings** page, complete the following fields: 
  
   1. **When items reaches the following age (in days)** Enter the duration of the retention period. For this scenario, items will be moved to the archive mailbox after 1095 days (3 years). 

   2. For the **Retention Action** Select **Move item to archive** to move items to the archive mailbox when the retention period expires.

4. Select **Next**, and then review and submit to create the custom archive DPT.

The new archive DPT is displayed in the list of retention tags.

### Create a custom retention policy tag for the Deleted Items folder
  
The second retention tag to create is a custom retention policy tag (RPT) for the Deleted Items folder. This tag will delete items in the Deleted Items folder after 5 years, and provides a recovery period when users can use the Recover Deleted Items tool to recover an item.

1. Back on the **MRM Retention tags** page, select **+ New tag**, and on the **Name your tag** page, type a name for the new retention tag, and an optional description that explains the purpose of the custom retention tag.
    
    For our example scenario, we'll name this tag "Alpine House Deleted Items 5 Years Delete and Allow Recovery".

2. On the **Define how the tag will be applied** page, select **Automatically to default folder** and then for the **Apply tag to this folder** option, select **Deleted items**.

3. On the **Define retention settings** page, complete the following fields: 
  
   1. **When items reaches the following age (in days)** Enter the duration of the retention period. For this scenario, items will be deleted after 1825 days (5 years).

   2. For the **Retention Action** Select **Delete and allow recovery** to delete items when the retention period expires, but allow users to recover a deleted item within the deleted item retention period (which by default is 14 days).

4. Select **Next**, and then review and submit to create the custom deletion DPT.

The new RPT is displayed in the list of retention tags.

## Step 3: Create a new retention policy

After you create the custom retention tags, the next step is to create a new retention policy and add the retention tags. You'll add the two custom retention tags that you created in Step 2, and the built-in tags that were mentioned in the first section. In Step 4, you'll assign this new retention policy to user mailboxes.
  
1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Data lifecycle management** \> **Exchange (legacy)** > **MRM Retention policies**.

2. On the **MRM Retention policies** page, select **New policy**.

3. In the **Name** box, type a name for the new retention policy; for example, **Alpine House Archive and Deletion Policy**.

4. Select **+ Add tag**.
    
    A list of the retention tags in your organization is displayed, which includes the custom tags that you created in Step 2.

5. Add the 3 retention tags that are described in more detail in the [More information](#more-information) section:
    
    - **Alpine House 3 Year Move to Archive** - the custom archive default policy tag created in step 2 of these instructions
    - **Alpine House Deleted Items 5 Years Delete and Allow Recovery** - the custom tag for the Deleted Items folder created in step 2 of these instructions
    - **Personal 1 year move to archive** - a built-in tag that's preconfigured
    
    To add these retention tags, select them, and then select **Add**.

7. Back on the **Configure your policy** page, select **Next** to review and submit the new policy.

The new retention policy is displayed in the list. Select it to display the retention tags linked to it in the details pane.

## Step 4: Assign the new retention policy to user mailboxes

When a new mailbox is created, a retention policy named Default MRM policy is assigned to it by default. In this step, you'll replace this retention policy by assigning the new retention policy that you created in Step 3 to the user mailboxes in your organization. 

Replacement is required because a mailbox can have only one MRM retention policy assigned to it at a time. This step assumes that you'll assign the new policy to all mailboxes in your organization.

To follow these steps, make sure you use the [new Exchange admin center](/exchange/features-in-new-eac), rather than the classic version.
  
1. Sign in to the new [Exchange admin center (EAC)](https://admin.exchange.microsoft.com/), and go to **Recipients** > **Mailboxes**.

    A list of all user mailboxes in your organization is displayed.

2. Select all the mailboxes by selecting the box for **Display name**. 

3. Select the **Mailbox policies** option.

4. In the **Mailbox policies** flyout pane, under **Retention Policy**, select the retention policy that you created in Step 3; for example, **Alpine House Archive and Retention Policy**.

5. Select **Save** to save the new retention policy assignment.

6. To verify that the new retention policy was assigned to mailboxes:

   1. Select a mailbox on the **Mailboxes** page.

   2. On the mailbox properties page for the selected user, select **Mailbox**.
    
    The name of the new policy assigned to the mailbox is displayed for the **Retention policy**.

## (Optional) Step 5: Run the Managed Folder Assistant to apply the new settings

After you apply the new retention policy to mailboxes in Step 4, it can take up to 7 days in Exchange Online for the new retention settings to be applied to the mailboxes. This is because a process called the *Managed Folder Assistant* processes mailboxes at least once every 7 days. Instead of waiting for the Managed Folder Assistant to run, you can force this to happen by running the **Start-ManagedFolderAssistant** cmdlet in Exchange Online PowerShell.

 **What happens when you run the Managed Folder Assistant?** It applies the settings in the retention policy by inspecting items in the mailbox and determining whether they're subject to retention. It then stamps items subject to retention with the appropriate retention tag, and then takes the specified retention action on items past their retention age.
  
Here are the steps to connect to Exchange Online PowerShell, and then run the Managed Folder Assistant on every mailbox in your organization.

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
  
2. Run the following two commands to start the Managed Folder Assistant for all user mailboxes in your organization.

    ```powershell
    $Mailboxes = Get-Mailbox -ResultSize Unlimited -Filter {RecipientTypeDetails -eq "UserMailbox"}
    ```

    ```powershell
    $Mailboxes.Identity | Start-ManagedFolderAssistant
    ```

That's it! You've set up an archive and deletion policy for the Alpine House organization.

### More information about the Managed Folder Assistant

As previously stated, the Managed Folder Assistant processes mailboxes at least once every 7 days. So it's possible that a mailbox can be processed by the Managed Folder Assistant more frequently. Also, admins can't predict the next time a mailbox is processed by the Managed Folder Assistant, which is one reason why you might want to run it manually. 

However, if you want to temporarily prevent the Managed Folder Assistant from applying the new retention settings to a mailbox, you can run the `Set-Mailbox -ElcProcessingDisabled $true` command to temporarily disable the Managed Folder Assistant from processing a mailbox. 

To re-enable the Managed Folder Assistant for a mailbox, run the `Set-Mailbox -ElcProcessingDisabled $false` command. 

Finally, if a mailbox user has a disabled account, items aren't moved to the archive mailbox for that mailbox.
  
## (Optional) Step 6: Make the new retention policy the default for your organization

In Step 4, you have to assign the new retention policy to existing mailboxes. But you can configure Exchange Online so that the new retention policy is assigned to new mailboxes that are created in the future. 

You do this by using Exchange Online PowerShell to update your organization's default mailbox plan. A *mailbox plan* is a template that automatically configures properties on new mailboxes.  In this optional step, you can replace the current retention policy that's assigned to the mailbox plan (by default, the Default MRM Policy) with the MRM retention policy that you created in Step 3. After you update the mailbox plan, the new MRM retention policy will be assigned to new mailboxes.

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Run the following command to display information about the mailbox plans in your organization.

    ```powershell
    Get-MailboxPlan | Format-Table DisplayName,RetentionPolicy,IsDefault
    ```
    
    Note the mailbox plan that's set as the default.

3. Run the following command to assign the new MRM retention policy that you created in Step 3 (for example, **Alpine House Archive and Retention Policy**) to the default mailbox plan. This example assumes the name of the default mailbox plan is **ExchangeOnlineEnterprise**.
    
    ```powershell
    Set-MailboxPlan "ExchangeOnlineEnterprise" -RetentionPolicy "Alpine House Archive and Retention Policy"
    ```

4. You can rerun the command in step 2 to verify that the MRM retention policy assigned to the default mailbox plan was changed.

## More information

- The retention age of mailbox items is calculated from the date of delivery. Or from the date of creation for items such as draft messages that aren't sent but are created by the user. When the Managed Folder Assistant processes items in a mailbox, it stamps a start date and an expiration date for all items that have retention tags with the Delete and Allow Recovery or Permanently Delete retention action. Items that have an archive tag are stamped with a move date.

- The following table provides more information about each retention tag for the custom MRM retention policy in this article.

    | Retention tag | What this tag does | Built-in or custom? | Type |
    |:-----|:-----|:-----|:-----|
    |Alpine House 3 Year Move to Archive  <br/> |Moves items that are 1095 days (3 years) old to the archive mailbox.  <br/> |Custom (See [Step 2: Create new retention tags for the archive and deletion policies](#step-2-create-new-retention-tags-for-the-archive-and-deletion-policies))  <br/> |Default Policy Tag (archive); this tag is automatically applied to the entire mailbox.  <br/> |
    |Alpine House Deleted Items 5 Years Delete and Allow Recovery  <br/> |Deletes items from the Deleted Items folder that are 5 years old. Users can recover these items for up 14 days after they're deleted. See the next list entry for more information. <br/> |Custom (See [Step 2: Create new retention tags for the archive and deletion policies](#step-2-create-new-retention-tags-for-the-archive-and-deletion-policies))  <br/> |Retention Policy Tag (Deleted Items); this tag is automatically applied to items in the Deleted items folder.  <br/> |
    |Personal 1 year move to archive  <br/> |Moves items to the archive mailbox after 1 year.  <br/> |Built-in  <br/> |Personal; this tag can be applied by users.   |
    
    
- Users can use the Recover Deleted Items tool in Outlook and Outlook on the web (formerly known as Outlook Web App) to recover a deleted item within the deleted item retention period, which by default is 14 days in Exchange Online. An administrator can use Exchange Online PowerShell to increase the deleted item retention period to a maximum of 30 days. For more information, see: [Recover deleted items in Outlook for Windows](https://support.office.com/article/49e81f3c-c8f4-4426-a0b9-c0fd751d48ce) and [Change the deleted item retention period for a mailbox in Exchange Online](/exchange/recipients-in-exchange-online/manage-user-mailboxes/change-deleted-item-retention).
  
