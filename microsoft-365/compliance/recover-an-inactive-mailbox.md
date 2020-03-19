---
title: "Recover an inactive mailbox"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 6/21/2018
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: 35d0ecdb-7cb0-44be-ad5c-69df2f8f8b25
description: "If a former employee returns to your organization, or if a new employee is hired to take on the job responsibilities of a departed employee, you can recover the contents of the inactive mailbox in Office 365. When you recover an inactive mailbox, it's converted to a new mailbox that contains the contents of the inactive mailbox. "
---

# Recover an inactive mailbox

An inactive mailbox (which is a type of soft-deleted mailbox) is used to preserve a former employee's email after he or she leaves your organization. If that employee returns to your organization or if another employee takes on the job responsibilities of the former employee, there are two ways that you can make the contents of the inactive mailbox available to a user: 
  
- **Recover an inactive mailbox** If the former employee returns to your organization, or if a new employee is hired to take on the job responsibilities of the former employee, you can recover the contents of the inactive mailbox. This method converts the inactive mailbox to a new, active mailbox that contains the contents of the inactive mailbox. After it's recovered, the inactive mailbox no longer exists. The procedures in this topic describe this method. 
    
- **Restore an inactive mailbox** If another employee takes on the job responsibilities of the former employee, or if another user needs access to the contents of the inactive mailbox, you can restore (or merge) the contents of the inactive mailbox to an existing mailbox. You can also restore the archive from an inactive mailbox. For the procedures for this method, see [Restore an inactive mailbox in Office 365](restore-an-inactive-mailbox.md).
    
See the [More information](#more-information) section for more details about the differences between recovering and restoring an inactive mailbox, and for a description of what happens when an inactive mailbox is recovered.
  
> [!NOTE]
> We've postponed the deadline for creating new In-Place Holds to make a mailbox inactive. But at some point in the future, you won't be able to create new In-Place Holds in Exchange Online. At that time, only Litigation Holds and Office 365 retention policies can be used to create an inactive mailbox. However, existing inactive mailboxes that are on In-Place Hold will still be supported, and you can continue to manage the In-Place Holds on inactive mailboxes. This includes changing the duration of an In-Place Hold and permanently deleting an inactive mailbox by removing the In-Place Hold. 
  
## Before you begin

- You have to use Exchange Online PowerShell to restore an inactive mailbox. You can't use the Exchange admin center (EAC). For step-by-step instructions, see [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/?linkid=396554).
    
- Run the following command to get identity information for the inactive mailboxes in your organization. 

    ```powershell
    Get-Mailbox -InactiveMailboxOnly | FL Name,DistinguishedName,ExchangeGuid,PrimarySmtpAddress
    ```

    Use the information returned by this command to recover a specific inactive mailbox.

## Recover an inactive mailbox

Use the **New-Mailbox** cmdlet with the  *InactiveMailbox*  parameter to recover an inactive mailbox. 
  
1. Create a variable that contains the properties of the inactive mailbox. 
    
    ```powershell
    $InactiveMailbox = Get-Mailbox -InactiveMailboxOnly -Identity <identity of inactive mailbox>
    ```

    > [!IMPORTANT]
    > In the previous command, use the value of the **DistinguishedName** or **ExchangeGUID** property to identify the inactive mailbox. These properties are unique for each mailbox in your organization, whereas it's possible that an active and an inactive mailbox might have the same primary SMTP address. 
  
2. This example uses the properties obtained in the previous command and recovers the inactive mailbox to an active mailbox for the user Ann Beebe. Be sure that the values specified for the  *Name*  and  *MicrosoftOnlineServicesID*  parameters are unique within your organization. 

    ```powershell
    New-Mailbox -InactiveMailbox $InactiveMailbox.DistinguishedName -Name annbeebe -FirstName Ann -LastName Beebe -DisplayName "Ann Beebe" -MicrosoftOnlineServicesID Ann.Beebe@contoso.com -Password (ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force) -ResetPasswordOnNextLogon $true
    ```

    The primary SMTP address for the recovered inactive mailbox will have the same value as the one specified by the  *MicrosoftOnlineServicesID*  parameter. 
    
After you recover an inactive mailbox, a new user account is also created. You have to activate this user account by assigning a license. To assign a license in the Microsoft 365 admin center, see [Assign or unassign licenses for Office 365 for business](https://go.microsoft.com/fwlink/p/?LinkId=276798).
  
## More information

- **What's the main difference between recovering and restoring an inactive mailbox?** When you recover an inactive mailbox, the mailbox is basically converted to a new mailbox, the contents and folder structure of the inactive mailbox are retained, and the mailbox is linked to a new user account. After it's recovered, the inactive mailbox no longer exists, and any changes made to the content in the new mailbox will affect the content that was originally on hold in the inactive mailbox. Conversely, when you restore an inactive mailbox, the contents are merely copied to another mailbox. The inactive mailbox is preserved and remains an inactive mailbox. Any changes made to the content in the target mailbox won't affect the original content held in the inactive mailbox. The inactive mailbox can still be searched by using In-Place eDiscovery, its contents can be restored to another mailbox, or it can be recovered or deleted at a later date. 
    
- **What happens when you recover an inactive mailbox?** When you recover an inactive mailbox, the following things occur: 
    
  - Litigation Hold (if it was enabled for the inactive mailbox) is removed.
    
  - In-Place Holds are removed. This means that the inactive mailbox is removed as a source mailbox from any In-Place Hold or In-Place eDiscovery searches. 
    
  - The inactive mailbox is removed from any Office 365 retention policies that where applied to it.
    
  - The single item recovery period (which is defined by the **RetainDeletedItemsFor** mailbox property) is set to 30 days. Typically, when a new mailbox is created in Exchange Online, this retention period is set to 14 days. Setting this to the maximum value of 30 days gives you more time to recover any data that's been permanently deleted (or purged) from the inactive mailbox. You can also disable single item recovery or set the single item recovery period back to the default of 14 days. For more information, see [Enable or disable single item recovery for a mailbox](https://go.microsoft.com/fwlink/?linkid=856769).
    
  - Retention hold is enabled, and the retention hold duration is set to 30 days. This means that the default Exchange retention policy and any organization-wide or Exchange-wide Office 365 retention policies that are assigned to the new mailbox won't be processed for 30 days. This gives the returning employee or the new owner of the recovered inactive mailbox time to manage the old messages. Otherwise, the Exchange or Office 365 retention policy might delete old mailbox items (or move items to the archive mailbox, if it's enabled) that have expired based on the settings configured for the Exchange or Office 365 retention policies. After 30 days, the retention hold expires, the **RetentionHoldEnabled** mailbox property is set to **False**, and the Managed Folder Assistant starts processing the policies assigned to the mailbox. If you don't need this additional time, you can just remove the retention hold. Alternatively, you can increase the duration of the retention hold by using the **Set-Mailbox -EndDateForRetentionHold** command. For more information, see [Place a mailbox on retention hold](https://go.microsoft.com/fwlink/?linkid=856300).
    
- **Put a hold on the recovered mailbox if you need to preserve the original state of the inactive mailbox.** To prevent the new mailbox owner or retention policy from permanently deleting any messages from the recovered inactive mailbox, you can place the mailbox on Litigation Hold For more information, see [Place a mailbox on Litigation Hold](https://go.microsoft.com/fwlink/?linkid=856286).
    
- **What user ID can you use when recovering an inactive mailbox?** When you recover an inactive mailbox, the value that you specify for the  *MicrosoftOnlineServicesID*  parameter can be different from the original one that was associated with the inactive mailbox. You can also use the original user ID. But as previously stated, make sure that the values used for  *Name*  and  *MicrosoftOnlineServicesID*  are unique within your organization when you recover the inactive mailbox. 
    
- **What if the mailbox retention period for the inactive mailbox hasn't expired?** If an inactive mailbox was soft-deleted less than 30 days ago, you can't use the **New-Mailbox -InactiveMailbox** command to recover it. You have to recover it by restoring the corresponding user account. For more information, see [Delete or restore users](https://go.microsoft.com/fwlink/p/?LinkId=279162).
    
- **How do you know if the soft-deleted mailbox retention period for an inactive mailbox has expired?** Run the following command. 
    
    ```powershell
    Get-Mailbox -InactiveMailboxOnly <identity of inactive mailbox> | FL ExternalDirectoryObjectId
  ```

    If there isn't a value for the **ExternalDirectoryObjectId** property, the mailbox retention period has expired, and you can recover the inactive mailbox by running the **New-Mailbox -InactiveMailbox** command. If there is a value for the **ExternalDirectoryObjectId** property, the soft-deleted mailbox retention period hasn't expired and you have to recover the mailbox by restoring the user account. See [Delete or restore users](https://go.microsoft.com/fwlink/p/?LinkId=279162)
    
- **Consider enabling the archive mailbox after you recover an inactive mailbox.** This lets the returning user or new employee move old messages to the archive mailbox. And when the retention hold expires, the archive policy that is part of the default Exchange retention policy assigned to Exchange Online mailboxes will move items that are two years or older to the archive mailbox. If you don't enable the archive mailbox, items older than two years will remain in the user's primary mailbox. For more information, see [Enable archive mailboxes](enable-archive-mailboxes.md).
 
