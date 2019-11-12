---
title: "Search for and delete messages - Admin help"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 8c36bb03-e716-4fdd-9958-4aa7a2a1db42
description: "Administrators can use the Search-Mailbox cmdlet to search user mailboxes and then delete messages from a mailbox."
---

# Search for and delete messages - Admin help
  
Administrators can use the **Search-Mailbox** cmdlet to search user mailboxes and then delete messages from a mailbox. 
  
To search and delete messages in one step, run the **Search-Mailbox** cmdlet with the  _DeleteContent_ switch. However, when you do this, you can't preview search results or generate a log of messages that will be returned by the search, and you may inadvertently delete messages that you didn't intend to. To preview a log of the messages found in the search before they're deleted, run the **Search-Mailbox** cmdlet with the  _LogOnly_ switch. 
  
As an additional safeguard, you can first copy the messages to another mailbox by using the  _TargetMailbox_ and  _TargetFolder_ parameters. By doing this, you retain a copy of the deleted messages in case you need to access them again. 
  
## Before you begin

- Estimated time to complete: 10 minutes. The actual time may vary depending on the size of the mailbox and the search query.
    
- You can't use the Exchange admin center (EAC) to perform these procedures. You must use the Shell.
    
- You need to be assigned both of the following management roles to search for and delete messages in users' mailboxes:
    
  - **Mailbox Search**- This role allows you to search for messages across multiple mailboxes in your organization. Administrators aren't assigned this role by default. To assign yourself this role so that you can search mailboxes, add yourself as a member of the Discovery Management role group. See [Add a User to the Discovery Management Role Group](https://technet.microsoft.com/library/729e09d8-614b-431f-ae04-ae41fb4c628e.aspx).
    
  - **Mailbox Import Export** - This role allows you to delete messages from a user's mailbox. By default, this role isn't assigned to any role group. To delete messages from users' mailboxes, you can add the Mailbox Import Export role to the Organization Management role group. For more information, see the "Add a role to a role group" section in [Manage Role Groups](https://technet.microsoft.com/library/ab9b7a3b-bf67-4ba1-bde5-8e6ac174b82c.aspx) . 
    
- If the mailbox from which you want to delete messages has single item recovery enabled, you must first disable the feature. For more information, see [Enable or disable single item recovery for a mailbox](https://technet.microsoft.com/library/2e7f1bcd-8395-45ad-86ce-22868bd46af0.aspx).
    
- If the mailbox from which you want to delete messages is placed on hold, we recommend that you check with your records management or legal department before removing the hold and deleting the mailbox content. After you obtain approval, follow the steps listed in the topic [Clean Up the Recoverable Items Folder](https://technet.microsoft.com/library/82c310f8-de2f-46f2-8e1a-edb6055d6e69.aspx).
    
- You can search a maximum of 10,000 mailboxes using the **Search-Mailbox** cmdlet. If you're an Exchange Online organization and have more than 10,000 mailboxes, you can use the Compliance Search feature (or the corresponding **New-ComplianceSearch** cmdlet) to search an unlimited number of mailboxes. Then you can use the **New-ComplianceSearchAction** cmdlet to delete the messages returned by a compliance search. For more information, see [Search for and delete email messages from your Office 365 organization](https://go.microsoft.com/fwlink/p/?LinkId=786856).
    
- If you include a search query (by using the  *SearchQuery*  parameter), the **Search-Mailbox** cmdlet will return a maximum of 10,000 items in the search results. Therefore if you include a search query, you might have to run the **Search-Mailbox** command multiple times to delete more than 10,000 items. 
    
- The user's archive mailbox will also be searched when you run the **Search-Mailbox** cmdlet. Similarly, items in the primary archive mailbox will be deleted when you use the **Search-Mailbox** cmdlet with the  _DeleteContent_ switch. To prevent this, you can include the  *DoNotIncludeArchive*  switch.
    
## Search messages and log the search results

This example searches April Stewart's mailbox for messages that contain the phrase "Your bank statement" in the Subject field and logs the search results in the SearchAndDeleteLog folder of the administrator's mailbox. Messages aren't copied to or deleted from the target mailbox.
  
```
Search-Mailbox -Identity "April Stewart" -SearchQuery 'Subject:"Your bank statement"' -TargetMailbox administrator -TargetFolder "SearchAndDeleteLog" -LogOnly -LogLevel Full
```

This example searches all mailboxes in the organization for messages that have any type of attached file that contains the word "Trojan" in the filename and sends a log message to the administrator's mailbox.
  
```
Get-Mailbox -ResultSize unlimited | Search-Mailbox -SearchQuery attachment:trojan* -TargetMailbox administrator -TargetFolder "SearchAndDeleteLog" -LogOnly -LogLevel Full
```

For detailed syntax and parameter information, see [Search-Mailbox](https://technet.microsoft.com/library/9ee3b02c-d343-4816-a583-a90b1fad4b26.aspx).
  
 
## Search and delete messages

This example searches April Stewart's mailbox for messages that contain the phrase "Your bank statement" in the Subject field and deletes the messages from the source mailbox without copying the search results to another folder. As previously explained, you need to be assigned the Mailbox Import Export management role to delete messages from a user's mailbox.
  
> [!IMPORTANT]
> When you use the **Search-Mailbox** cmdlet with the  _DeleteContent_ switch, messages are permanently deleted from the source mailbox. Before you permanently delete messages, we recommend that you either use the  _LogOnly_ switch to generate a log of the messages found in the search before they're deleted or copy the messages to another mailbox before deleting them from the source mailbox. 
  
```
Search-Mailbox -Identity "April Stewart" -SearchQuery 'Subject:"Your bank statement"' -DeleteContent
```

This example searches April Stewart's mailbox for messages that contain the phrase "Your bank statement" in the Subject field, copies the search results to the folder AprilStewart-DeletedMessages in the mailbox BackupMailbox, and deletes the messages from April's mailbox.
  
```
Search-Mailbox -Identity "April Stewart" -SearchQuery 'Subject:"Your bank statement"' -TargetMailbox "BackupMailbox" -TargetFolder "AprilStewart-DeletedMessages" -LogLevel Full -DeleteContent
```

This example searches all mailboxes in the organization for messages with the subject line "Download this file", and then permanently deletes them. 
  
```
Get-Mailbox -ResultSize unlimited | Search-Mailbox -SearchQuery 'Subject:"Download this file"' -DeleteContent
```

For detailed syntax and parameter information, see [Search-Mailbox](https://technet.microsoft.com/library/9ee3b02c-d343-4816-a583-a90b1fad4b26.aspx).

## Using the -LogLevel Full parameter

In some of the previous examples, the  _LogLevel_ parameter, with the  `Full` value is used to log detailed information about the results returned by the **Search-Mailbox** cmdlet. When you included this parameter, an email message is created and sent to the mailbox specified by the  _TargetMailbox_ parameter. The log file (which is a CSV-formatted file named Search Results.csv) is attached to this email message, and will be located in the folder specified by the  _TargetFolder_ parameter. The log file contains a row for each message that's included in the search results when you run the **Search-Mailbox** cmdlet. 
