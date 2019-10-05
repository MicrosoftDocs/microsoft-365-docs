---
title: "Put an In-Place Hold on a soft-deleted mailbox in Exchange Online"
ms.author: markjjo
author: markjjo
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
ms.assetid: 421f72bd-dd43-4be1-82f5-0ae9ac43bd00
description: "Learn how to create an In-Place Hold for a soft-deleted mailbox to make it inactive and preserve its contents. Then you can use Microsoft eDiscovery tools to search the inactive mailbox."
---

# Put an In-Place Hold on a soft-deleted mailbox in Exchange Online

Learn how to create an In-Place Hold for a soft-deleted mailbox to make it inactive and preserve its contents. Then you can use Microsoft eDiscovery tools to search the inactive mailbox.
  
> [!NOTE]
> We've postponed the deadline for creating new In-Place Holds in Exchange Online (in Office 365 and Exchange Online standalone plans). But later this year or early next year, you won't be able to create new In-Place Holds in Exchange Online. As an alternative to using In-Place Holds, you can use [eDiscovery cases](https://go.microsoft.com/fwlink/?linkid=780738) or [retention policies](https://go.microsoft.com/fwlink/?linkid=827811) in the Security & Compliance Center. After we decommission new In-Place Holds, you'll still be able to modify existing In-Place Holds, and creating new In-Place Holds in Exchange Server 2013 and Exchange hybrid deployments will still be supported. And, you'll still be able to place mailboxes on Litigation Hold. 
  
You might have a situation where a person has left your organization, and their corresponding user account and mailbox were deleted. Afterwards, you realize there's information in the mailbox that needs to be preserved. What can you do? If the deleted mailbox retention period hasn't expired, you can put an In-Place Hold on the deleted mailbox (called a  soft-deleted mailbox ) and make it an inactive mailbox. An  *inactive mailbox*  is used to preserve a former employee's email after they have left your organization. The contents of an inactive mailbox are preserved for the duration of the In-Place Hold that was is placed on the soft-deleted mailbox when it was made inactive. After the mailbox is made inactive, you can search the mailbox by using In-Place eDiscovery in Exchange Online, Content Search in the Security & Compliance Center, or the eDiscovery Center in SharePoint Online. 
  
> [!NOTE]
> In Exchange Online, a soft-deleted mailbox is a mailbox that's been deleted but can be recovered within a specific retention period. The soft-deleted mailbox retention period in Exchange Online is 30 days. This means that the mailbox can be recovered (or made an inactive mailbox) within 30 days of being deleted. After 30 days, a soft-deleted mailbox is marked for permanent deletion and can't be recovered or made inactive. 
  
## Before you begin

- You have to use the **New-MailboxSearch** cmdlet in Windows PowerShell to put an In-Place Hold on a soft-deleted mailbox. You can't use the Exchange admin center (EAC) or the eDiscovery Center in SharePoint Online. 
    
- To learn how to use Windows PowerShell to connect to Exchange Online, see [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/p/?linkid=396554).
    
- Run the following command to get identity information about the soft-deleted mailboxes in your organization. 
    
  ```
  Get-Mailbox -SoftDeletedMailbox | FL Name,WhenSoftDeleted,DistinguishedName,ExchangeGuid,PrimarySmtpAddress
  ```

- For more information about inactive mailboxes, see [Overview of inactive mailboxes in Office 365](inactive-mailboxes-in-office-365.md).
    
## Put an In-Place Hold on a soft-deleted mailbox to make it an inactive mailbox

Use the **New-MailboxSearch** cmdlet to make a soft-deleted mailbox an inactive mailbox. For more information, see [New-MailboxSearch](http://technet.microsoft.com/library/74303b47-bb49-407c-a43b-590356eae35c.aspx).
  
1. Create a variable that contains the properties of the soft-deleted mailbox. 
    
   ```
   $SoftDeletedMailbox = Get-Mailbox -SoftDeletedMailbox -Identity <identity of soft-deleted mailbox>
   ```

    > [!IMPORTANT]
    > In the previous command, use the value of the **DistinguishedName** or **ExchangeGuid** property to identify the soft-deleted mailbox. These properties are unique for each mailbox in your organization, whereas it's possible that an active mailbox and a soft-deleted mailbox might have the same primary SMTP address. 
  
2. Create an In-Place Hold and place it on the soft-deleted mailbox. In this example, no hold duration is specified. This means items will be held indefinitely or until the hold is removed from the inactive mailbox.
    
   ```
   New-MailboxSearch -Name "InactiveMailboxHold" -SourceMailboxes $SoftDeletedMailbox.DistinguishedName -InPlaceHoldEnabled $true
    ```
   You can also specify a hold duration when you create the In-Place Hold. This example holds items in the inactive mailbox for approximately 7 years.
    
   ```
   New-MailboxSearch -Name "InactiveMailboxHold" -SourceMailboxes $SoftDeletedMailbox.DistinguishedName -InPlaceHoldEnabled $true -ItemHoldPeriod 2777
   ```

3. After a few moments, run one of the following commands to verify that the soft-deleted mailbox is an inactive mailbox.
    
   ```
   Get-Mailbox -InactiveMailboxOnly
   ```

    Or
    
   ```
   Get-Mailbox -InactiveMailboxOnly -Identity $SoftDeletedMailbox.DistinguishedName  | FL IsInactiveMailbox
   ```

## More information

After you make a soft-deleted mailbox an inactive mailbox, there are a number of ways you can manage the mailbox. For more information, see:
  
- [Change the hold duration for an inactive mailbox](change-the-hold-duration-for-an-inactive-mailbox.md)
    
- [Recover an inactive mailbox](recover-an-inactive-mailbox.md)
    
- [Restore an inactive mailbox](restore-an-inactive-mailbox.md)
    
- [Delete an inactive mailbox](delete-an-inactive-mailbox.md) (by removing the hold)
