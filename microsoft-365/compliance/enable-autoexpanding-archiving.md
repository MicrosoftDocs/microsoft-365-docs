---
title: "Enable auto-expanding archiving"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier2
- purview-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: e2a789f2-9962-4960-9fd4-a00aa063559e
description: "For administrators: Learn how to enable auto-expanding archiving, which provides your users with additional storage for their Exchange Online mailboxes. You can enable auto-expanding archiving for your entire organization or just for specific users."
ms.custom: seo-marvel-apr2020
---

# Enable auto-expanding archiving

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

You can use the Exchange Online auto-expanding archiving feature to enable additional storage space for archive mailboxes. When auto-expanding archiving is turned on, additional storage space is automatically added to a user's archive mailbox until it reaches the storage limit of 1.5 TB. You can turn on auto-expanding archiving for everyone in your organization or just for specific users. For more information about auto-expanding archiving, see [Learn about auto-expanding archiving](autoexpanding-archiving.md).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you enable auto-expanding archiving

- Understand the following restrictions: 

    - After you turn on auto-expanding archiving for your organization or for a specific user, it can't be turned off. Administrators also can't adjust the storage quota for auto-expanding archiving.
    
    - Auto-expanding archiving prevents you from recovering or restoring an [inactive mailbox](inactive-mailboxes-in-office-365.md#what-are-inactive-mailboxes). That means if you enable auto-expanding archiving for a mailbox and the mailbox is made inactive at a later date, you won't be able to [recover the inactive mailbox](recover-an-inactive-mailbox.md) (by converting it to an active mailbox) or [restore it](restore-an-inactive-mailbox.md) (by merging the contents to an existing mailbox). 
        
        If auto-expanding archiving is enabled on an inactive mailbox, the only way to recover data is by using the Content search tool in the Microsoft Purview compliance portal to export the data from the mailbox and import to another mailbox. For more information, see the [Inactive mailboxes and auto-expanding archives](inactive-mailboxes-in-office-365.md#inactive-mailboxes-and-auto-expanding-archives).

- You must be a global administrator in your organization or a member of the Organization Management role group in your Exchange Online organization to enable auto-expanding archiving. Alternately, you have to be a member of a role group that's assigned the Mail Recipients role to enable auto-expanding archiving for specific users.

- A user's mailbox must already be [enabled for archive](enable-archive-mailboxes.md) before you can enable auto-expanding archiving.

- After you turn on auto-expanding archiving, an archive mailbox is converted to an auto-expanding archive when the archive mailbox (including the Recoverable Items folder) reaches 90 GB. It can take up to 30 days for the additional storage space to be provisioned.

- Auto-expanding archiving also supports shared mailboxes.

- You can't use the Exchange admin center or the Microsoft Purview compliance portal to enable auto-expanding archiving. You must use Exchange Online PowerShell.

## Enable auto-expanding archiving for your entire organization

You can enable auto-expanding archiving for your entire organization. After you turn it on, auto-expanding archiving will be enabled for existing user mailboxes and for new user mailboxes that are created. When you create user mailboxes, be sure to enable the user's main archive mailbox so the auto-expanding archiving feature works for the new user mailbox.
  
1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)

2. Run the following command in Exchange Online PowerShell to enable auto-expanding archiving for your entire organization.

    ```powershell
    Set-OrganizationConfig -AutoExpandingArchive
    ```

## Enable auto-expanding archiving for specific users

Instead of enabling auto-expanding archiving for every user in your organization, you can enable it only for specific users. You might do this because only some users might have a need for a large archive storage capacity.
  
When you enable auto-expanding archiving for a specific user and the user's mailbox in on hold or assigned to a retention policy, the following two configurations changes are made:
  
- The storage quota for the user's primary archive mailbox is increased by 10 GB (from 100 GB to 110 GB). The archive warning quota is also increased by 10 GB (from 90 GB to 100 GB).

- The storage quota for the Recoverable Items folder in the user's primary mailbox is increased by 10 GB (also from 100 GB to 110 GB). The Recoverable Items warning quota is also increased by 10 GB (from 90 GB to 100 GB). These changes are applicable only if the mailbox in on hold or assigned to a retention policy.

This additional space is added to prevent any storage issues that may occur before the auto-expanding archive is provisioned. Additional storage space  *is not*  added when you enable auto-expanding archiving for your entire organization, as described in the previous section.
  
1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)

2. Run the following command in Exchange Online PowerShell to enable auto-expanding archiving for a specific user. As previously explained, the user's archive mailbox (main archive) must be enabled before you can turn on auto-expanding archiving for that user.

    ```powershell
    Enable-Mailbox <user mailbox> -AutoExpandingArchive
    ```

> [!IMPORTANT]
> In an Exchange hybrid deployment, you can't use the **Enable-Mailbox -AutoExpandingArchive** command to enable auto-expanding archiving for a specific user whose primary mailbox is on-premises and whose archive mailbox is cloud-based. To enable auto-expanding archiving for cloud-based archive mailboxes in an Exchange hybrid deployment, you have to run the **Set-OrganizationConfig -AutoExpandingArchive** command in Exchange Online PowerShell to enable auto-expanding archiving for the entire organization. If a user's primary and archive mailboxes are both cloud-based, then you can use the **Enable-Mailbox -AutoExpandingArchive** command to enable auto-expanding archiving for that specific user.
  
## Verify that auto-expanding archiving is enabled

To verify that auto-expanding archiving is enabled for your organization, run the following command in Exchange Online PowerShell.

```powershell
Get-OrganizationConfig | FL AutoExpandingArchiveEnabled
```

A value of  `True` indicates that auto-expanding archiving is enabled for the organization. 
  
To verify that auto-expanding archiving is enabled for a specific user, run the following command in Exchange Online PowerShell.
  
```powershell
Get-Mailbox <user mailbox> | FL AutoExpandingArchiveEnabled
```

A value of  `True` indicates that auto-expanding archiving is enabled for the user.
  
To determine if auto-expanding archiving is enabled for inactive mailboxes, run the following command in Exchange Online PowerShell.
  
```powershell
Get-Mailbox -InactiveMailboxOnly | FL UserPrincipalName,AutoExpandingArchiveEnabled
```

A value of  `True` indicates that auto-expanding archiving is enabled for the inactive mailbox. A value of `False` indicates that auto-expanding archiving isn't enabled.

Keep the following things in mind after you enable auto-expanding archiving:
  
- If you run the **Set-OrganizationConfig -AutoExpandingArchive** command to enable auto-expanding archiving for your organization, you don't have to run the **Enable-Mailbox -AutoExpandingArchive** on individual mailboxes. Running the **Set-OrganizationConfig** cmdlet to enable auto-expanding archiving for your organization doesn't change the  *AutoExpandingArchiveEnabled*  property on user mailboxes to `True`.

- Similarly, the values for the  *ArchiveQuota*  and  *ArchiveWarningQuota*  mailbox properties aren't changed when you enable auto-expanding archiving. In fact, when you enable auto-expanding archiving for a user mailbox and the  *AutoExpandingArchiveEnabled*  property is set to  `True`, the  *ArchiveQuota*  and  *ArchiveWarningQuota*  properties are ignored. Here's an example of these mailbox properties after auto-expanding archiving is enabled for a user's mailbox. 

    ![ArchiveQuota and ArchiveWarningQuota properties are ignored after you enable auto-expanding archiving.](../media/6a1c1b69-5c4c-4267-aac8-53577667f03e.png)

## More information

- You can also use PowerShell to enable archive mailboxes. For example, you can run the following command in Exchange Online PowerShell to enable archive mailboxes for all users whose archive mailbox isn't already enabled.

    ```powershell
    Get-Mailbox -Filter {ArchiveStatus -Eq "None" -AND RecipientTypeDetails -eq "UserMailbox"} | Enable-Mailbox -Archive
    ```

- Auto-expanding archiving is supported for cloud-based archive mailboxes in an Exchange hybrid deployment for users who have an on-premises primary mailbox. However, after auto-expanding archiving is enabled for a cloud-based archive mailbox, you can't off-board that archive mailbox back to the on-premises Exchange organization. Auto-expanding archiving isn't supported for on-premises mailboxes in any version of Exchange Server.

- For a list of Outlook clients that users can use to access items in the additional storage area in their archive mailbox, see the "Outlook requirements for accessing items in an auto-expanded archive" section in [Learn about auto-expanding archiving](autoexpanding-archiving.md#outlook-requirements-for-accessing-items-in-an-auto-expanded-archive).

- As previously explained, 10 GB is added to the storage quota of the user's primary archive mailbox (and to the Recoverable Items folder if the mailbox is on hold) when you run the **Enable-Mailbox -AutoExpandingArchive** command. This provides additional storage until the auto-expanded storage space is provisioned (which can take up to 30 days). This additional storage space isn't added when you run the **Set-OrganizationConfig -AutoExpandingArchive** to enable auto-expanding archiving for all mailboxes in your organization. If you enabled auto-expanding archiving for the entire organization, but need to add the additional 10 GB of storage space for a specific user, you can run the **Enable-Mailbox -AutoExpandingArchive** command on that mailbox. You will receive an error saying that auto-expanding archiving has already been enabled, but the additional storage space will be added to the mailbox.

> [!IMPORTANT]
> Auto-expanding archiving is supported only for mailboxes used by individual users or for shared mailboxes with a growth rate that doesn't exceed 1 GB per day. Using journaling, transport rules, or auto-forwarding rules to copy messages to an archive mailbox for the purposes of archiving is not permitted. A user's archive mailbox is intended for just that user. Microsoft reserves the right to deny additional archiving in instances where a user's archive mailbox is used to store archive data for other users or in other cases of inappropriate use.

## Next steps

Make sure you prepare end users for the changes they can expect after enabling their mailbox for auto-expanding archives.  For a brief overview of the client experience, see the "What gets moved to the additional archive storage space?" section in [Learn about auto-expanding archiving](https://learn.microsoft.com/en-us/microsoft-365/compliance/autoexpanding-archiving?view=o365-worldwide#what-gets-moved-to-the-additional-archive-storage-space).
