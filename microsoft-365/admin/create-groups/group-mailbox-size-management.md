---
title: Microsoft 365 Group mailbox size management 
description: Learn about the group mailbox size management in Microsoft 365.
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: ITPro
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
search.appverid: 
ms.reviewer: rahulnayak
ms.date: 08/03/2022
---

# Microsoft 365 group mailbox size management 

Each Microsoft 365 group comes equipped with a dedicated mailbox that stores the emails received on the group. The group mailbox is also used by applications like SharePoint Online, Viva Engage, Teams etc. The group mailbox is equipped with initial storage quota of 50 GB. If the group mailbox quota is reached, people sending emails to the group receive a non-delivery report. Hence, it’s a good practice to remove the older content from group mailboxes, to ensure the group mailbox doesn’t reach its quota. 

The following ways help you understand how the quota calculation works, best practices or proactive approach taken to ensure the group mailbox doesn't reach its quota. And the course of action to be performed if the group mailbox as reached or exceeded its quota.

## Proactive approach to keep group mailbox size in check 

You can create retention policies to ensure older email from groups are removed automatically upon reaching the specified time limit. For more information, on steps to create retention policy for Microsoft 365 Group, see [Create and configure retention policies](/microsoft-365/compliance/create-retention-policies). The retention policies take longer work cycle to clean up the data, hence must be applied during the creation of a group mailbox. The retention policies can't be used as tool to immediately flush or remove the data from a group mailbox.

## To monitor the group mailbox size: 

Use the following command to check the current quota assigned for the group mailbox:

```PowerShell
Get-Mailbox -GroupMailbox <groupname> |ft ProhibitSendReceiveQuota,ProhibitSendQuota,IssueWarningQuota 
```

And use the following command to check the current size of the group mailbox:

```PowerShell
Get-MailboxStatistics <groupname> | ft TotalDeletedItemSize,TotalItemSize 
```

## Steps to follow when the group mailbox has reached its limit:  

As mentioned earlier, the group mailbox is used for various applications to store data. Once the group mailbox as reached its quota, it's important to identify the folders occupying more data and take the appropriate action. 

1. Start with the following command to confirm that the group mailbox quota has exceeded: 

   ```PowerShell
   Get-MailboxStatistics <groupname> |ft TotalItemSize,TotalDeletedItemSize 
   ```

   The group mailbox is distributed in various `TargetQuota`, namely System, Recoverable and User. The folders matching `TargetQuota` “User” is the only one considered in the calculation of the group quota.  

1. Use the following command to verify the folder size that’s occupying User data: 

   ```PowerShell
   Get-MailboxFolderStatistics <groupname> | where { $_.TargetQuota -like 'User' } | ft Name,FolderPath,FolderType,FolderSize 

   Get-MailboxFolderStatistics <groupname> -FolderScope NonIPMRoot | where { $_.TargetQuota -like 'User' } | ft Name,FolderType,*size* 
   ```
1. Check the folders quota or size.

1. If the folder consuming the space is `SharePointWebPartsConnectorMessages`, as mentioned in [Use the Connector web part](https://support.microsoft.com/en-us/office/use-the-connector-web-part-db0756aa-f78f-4b74-8b19-be5dca0420e1?ns=spostandard&version=16&syslcid=1033&uilcid=1033&appver=spo160&helpid=wssenduser_useconnectorwebpart_fl862286&ui=en-us&rs=en-us&ad=us) then do the following:

   1. Disable the connector if not used. 

   1. Wait for the messages to be cleared by default in 90 days. 

1. If there's no special folder occupying the group mailbox size, [apply the group mailbox retention policy,](/microsoft-365/compliance/create-retention-policies) and wait for retention policy to clean up the emails from group mailbox.

