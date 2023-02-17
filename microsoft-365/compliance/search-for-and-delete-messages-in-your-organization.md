---
title: "Search for and delete email messages in your organization"
description: "Use the search and purge feature in the Microsoft Purview compliance portal to search for and delete an email message from all mailboxes in your organization."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 09/12/2019
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
- content-search
search.appverid: 
- MOE150
- MET150
---

# Search for and delete email messages

> [!TIP]
>This article is for administrators. Are you trying to find items in your mailbox that you want to delete? See [Find a message or item with Instant Search](https://support.office.com/article/69748862-5976-47b9-98e8-ed179f1b9e4d).

You can use the Content search feature to search for and delete email messages from all mailboxes in your organization. This can help you find and remove potentially harmful or high-risk email, such as:

- Messages that contain dangerous attachments or viruses
- Phishing messages
- Messages that contain sensitive data

> [!TIP]
> If your organization has a Defender for Office 365 Plan 2 subscription, we recommend using the procedure detailed in [Remediate malicious email delivered in Office 365](/microsoft-365/security/office-365-security/remediate-malicious-email-delivered-office-365), rather than following the procedure described in this article.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

- The search and purge workflow described in this article doesn't delete chat messages or other content from Microsoft Teams. If the Content search that you create in Step 2 returns items from Microsoft Teams, those items won't be deleted when you purge items in Step 3. To search for and delete chat messages, see [Search and purge chat messages in Teams](ediscovery-search-and-delete-teams-chat-messages.md).
- To create and run a Content search, you have to be a member of the *eDiscovery Manager* role group or be assigned the *Compliance Search* role in the Microsoft Purview compliance portal. To delete messages, you have to be a member of the *Organization Management* role group or be assigned the *Search And Purge* role in the compliance portal For information about adding users to a role group, see [Assign eDiscovery permissions](ediscovery-assign-permissions.md).

  > [!NOTE]
  > The *Organization Management* role group exists in both Exchange Online and in the compliance portal. These are separate role groups that give different permissions. Being a member of *Organization Management* in Exchange Online does not grant the required permissions to delete email messages. If you aren't assigned the *Search And Purge* role in the compliance portal (either directly or through a role group such as *Organization Management*), you'll receive an error in Step 3 when you run the *New-ComplianceSearchAction* cmdlet with the message "A parameter cannot be found that matches parameter name 'Purge'".

- You have to use Security & Compliance PowerShell to delete messages. See [Step 1: Connect to Security & Compliance PowerShell](#step-1-connect-to-security--compliance-powershell) for instructions about how to connect.
- A maximum of 10 items per mailbox can be removed at one time. Because the capability to search for and remove messages is intended to be an incident-response tool, this limit helps ensure that messages are quickly removed from mailboxes. This feature isn't intended to clean up user mailboxes.
- The maximum number of mailboxes in a content search that you can use to delete items by doing a search and purge action is 50,000. If the search (that you create in [Step 2](#step-2-create-a-content-search-to-find-the-message-to-delete) searches more than 50,000 mailboxes, the purge action (that you create in Step 3) will fail. Searching more than 50,000 mailbox in a single search might typically happen when you configure the search to include all mailboxes in your organization. This restriction still applies even when less than 50,000 mailboxes contain items that match the search query. See the [More information](#more-information) section for guidance about using search permissions filters to search for and purge items from more than 50,000 mailboxes.
- The procedure in this article can only be used to delete items in Exchange Online mailboxes and public folders. You can't use it to delete content from SharePoint or OneDrive for Business sites.
- Email items in a review set in an eDiscovery (Premium) case can't be deleted by using the procedures in this article. That's because items in a review set are stored in an Azure Storage location, and not in the live service. This means they won't be returned by the content search that you create in Step 1. To delete items in a review set, you have to delete the eDiscovery (Premium) case that contains the review set. For more information, see [Close or delete an eDiscovery (Premium) case](ediscovery-close-or-delete-case.md).

## Step 1: Connect to Security & Compliance PowerShell

The first step is to connect to [Security & Compliance PowerShell](/powershell/exchange/scc-powershell) for your organization. For step-by-step instructions, see [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

## Step 2: Create a Content Search to find the message to delete

The second step is to create and run a Content search to find the message that you want to remove from mailboxes in your organization. You can create the search by using the [Microsoft Purview compliance portal](https://compliance.microsoft.com) or by running the **New-ComplianceSearch** and **Start-ComplianceSearch** cmdlets in Security & Compliance PowerShell. The messages that match the query for this search will be deleted by running the **New-ComplianceSearchAction -Purge** command in [Step 3](#step-3-delete-the-message). For information about creating a Content search and configuring search queries, see the following articles:

- [Content search in Office 365](ediscovery-content-search.md)
- [Keyword queries for Content search](ediscovery-keyword-queries-and-search-conditions.md)
- [New-ComplianceSearch](/powershell/module/exchange/New-ComplianceSearch)
- [Start-ComplianceSearch](/powershell/module/exchange/Start-ComplianceSearch)

> [!NOTE]
> The content locations that are searched in the Content search that you create in this step can't include SharePoint or OneDrive for Business sites. You can include only mailboxes and public folders in a Content search that will be used to email messages. If the Content search includes sites, you'll receive an error in Step 3 when you run the **New-ComplianceSearchAction** cmdlet.

### Tips for finding messages to remove

The goal of the search query is to narrow the results of the search to only the message or messages that you want to remove. Here are some tips:

- If you know the exact text or phrase used in the subject line of the message, use the **Subject** property in the search query.
- If you know that exact date (or date range) of the message, include the **Received** property in the search query.
- If you know who sent the message, include the **From** property in the search query.
- Preview the search results to verify that the search returned only the message (or messages) that you want to delete.
- Use the search estimate statistics (displayed in the details pane of the search in the compliance portal or by using the [Get-ComplianceSearch](/powershell/module/exchange/get-compliancesearch) cmdlet) to get a count of the total number of results.

Here are two examples of queries to find suspicious email messages.

- This query returns messages that were received by users between April 13, 2016 and April 14, 2016 and that contain the words "action" and "required" in the subject line.

  ```powershell
  (Received:4/13/2016..4/14/2016) AND (Subject:'Action required')
  ```

- This query returns messages that were sent by user@contoso.com and that contain the exact phrase "Update your account information" in the subject line.

  ```powershell
  (From:user@contoso.com) AND (Subject:"Update your account information")
  ```

Here's an example of using a query to create and start a search by running the **New-ComplianceSearch** and **Start-ComplianceSearch** cmdlets to search all mailboxes in the organization:

```powershell
$Search=New-ComplianceSearch -Name "Remove Phishing Message" -ExchangeLocation All -ContentMatchQuery '(Received:4/13/2016..4/14/2016) AND (Subject:"Action required")'
Start-ComplianceSearch -Identity $Search.Identity
```

## Step 3: Delete the message

After you've created and refined a Content search to return the messages that you want to remove, the final step is to run the **New-ComplianceSearchAction -Purge** command in Security & Compliance PowerShell to delete the message.

You can soft- or hard-delete the message. A soft-deleted message is moved to a user's Recoverable Items folder and retained until the deleted item retention period expires. Hard-deleted messages are marked for permanent removal from the mailbox and will be permanently removed the next time the mailbox is processed by the Managed Folder Assistant. If single item recovery is enabled for the mailbox, hard-deleted items will be permanently removed after the deleted item retention period expires. If a mailbox is placed on hold, deleted messages are preserved until the hold duration for the item expires or until the hold is removed from the mailbox.

> [!NOTE]
> As previously stated, items from Microsoft Teams that are returned by Content search are not deleted when you run the the **New-ComplianceSearchAction -Purge** command.

To run the following commands to delete messages, be sure that you're [connected to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

### Soft-delete messages

In the following example, the command soft-deletes the search results returned by a Content search named "Remove Phishing Message".

```powershell
New-ComplianceSearchAction -SearchName "Remove Phishing Message" -Purge -PurgeType SoftDelete
```

### Hard-delete messages

To hard-delete the items returned by the "Remove Phishing Message" content search, you would run this command:

```powershell
New-ComplianceSearchAction -SearchName "Remove Phishing Message" -Purge -PurgeType HardDelete
```

When you run the previous commands to soft- or hard-delete messages, the search specified by the  *SearchName*  parameter is the Content search that you created in Step 1.

For more information, see [New-ComplianceSearchAction](/powershell/module/exchange/New-ComplianceSearchAction).

## More information

- **How do you get status on the search and remove operation?**

  Run the **Get-ComplianceSearchAction** to get the status on the delete operation. The object that is created when you run the **New-ComplianceSearchAction** cmdlet is named using this format:  `<name of Content Search>_Purge`.

- **What happens after you delete a message?**

  A message that's deleted with the  `New-ComplianceSearchAction -Purge -PurgeType HardDelete` command is moved to the Purges folder and can't be accessed by the user. After the message is moved to the Purges folder, the message is retained for the duration of the deleted item retention period if single item recovery is enabled for the mailbox. (In Microsoft 365, single item recovery is enabled by default when a new mailbox is created.) After the deleted item retention period expires, the message is marked for permanent deletion and will be purged from Microsoft 365 the next time the mailbox is processed by the Managed Folder assistant.

  If you use the `New-ComplianceSearchAction -Purge -PurgeType SoftDelete` command, messages are moved to the Deletions folder in the user's Recoverable Items folder. It isn't immediately purged from Microsoft 365. The user can recover messages in the Deleted Items folder for the duration based on the deleted item retention period configured for the mailbox. After this retention period expires (or if user purges the message before it expires), the message is moved to the Purges folder and can no longer be accessed by the user. Once in the Purges folder, the message is retained for the duration based on the deleted item retention period configured for the mailbox if single items recovery is enabled for the mailbox. (In Microsoft 365, single item recovery is enabled by default when a new mailbox is created.) After the deleted item retention period expires, the message is marked for permanent deletion and will be purged from Microsoft 365 the next time that the mailbox is processed by the Managed Folder assistant.

- **What if you have to delete a message from more than 50,000 mailboxes?**

  As previously stated, you can perform a search and purge operation on a maximum of 50,000 mailboxes (even if less than 50,000 contain items that match the search query). If you have to do a search and purge operation on more than 50,000 mailboxes, consider creating temporary search permissions filters that reduce the number of mailboxes that would be searched to less than 50,000 mailboxes. For example, if your organization contains mailboxes in different departments, states, or countries, you can create a mailbox search permissions filter based on one of those mailbox properties to search a subset of mailboxes in your organization. After you create the search permissions filter, you would create the search (described in Step 1) and then delete the message (described in Step 3). Then you can edit the filter to search for and purge messages in a different set of mailboxes. For more information about creating search permissions filters, see [Configure permissions filtering for Content Search](ediscovery-permissions-filtering-for-content-search.md).

- **Will unindexed items included in the search results be deleted?**

  No, the  `New-ComplianceSearchAction -Purge command doesn't delete unindexed items.

- **What happens if a message is deleted from a mailbox that has been placed on In-Place Hold or Litigation Hold or is assigned to an Microsoft 365 retention policy?**

  After the message is purged and moved to the Purges folder, the message is retained until the hold duration expires. If the hold duration is unlimited, then items are retained until the hold is removed or the hold duration is changed.

- **Why is the search and remove workflow divided among different security and compliance center role groups?**

  As previously explained, a person has to be a member of the eDiscovery Manager role group or be assigned the Compliance Search management role to search mailboxes. To delete messages, a person has to be a member of the Organization Management role group or be assigned the Search And Purge management role. This makes it possible to control who can search mailboxes in the organization and who can delete messages.
