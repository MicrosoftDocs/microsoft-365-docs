---
title: "Enable archive mailboxes for Microsoft 365"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.ArchivingHelp'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MOE150
- MET150
ms.assetid: 268a109e-7843-405b-bb3d-b9393b2342ce
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkCOMPLIANCE
- admindeeplinkEXCHANGE
description: "Learn how to enable or disable archive mailboxes to support your organization's message retention, eDiscovery, and hold requirements."
---

# Enable archive mailboxes in the Microsoft Purview compliance portal

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Archiving in Microsoft 365 (also called *In-Place Archiving*) provides users with more mailbox storage space. For more information, see [Learn about archive mailboxes](archive-mailboxes.md).

Use the information in this article to enable or disable an archive mailbox in the Microsoft Purview compliance portal, or by using PowerShell. Also learn how to run an automated diagnostic check on a user's archive mailbox to identify any problems and suggested resolutions.

## Get the necessary permissions

You must be assigned the Mail Recipients role in Exchange Online to enable or disable archive mailboxes. By default, this role is assigned to the Recipient Management and Organization Management role groups on the **Permissions** page in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>. 

If you don't see the **Archive** page in the Microsoft Purview compliance portal, ask your administrator to assign you the necessary permissions.

## Enable an archive mailbox

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> and sign in.

2. In the left pane of the compliance portal, select **Data lifecycle management** > **Archive**.

   On the **Archive** page, the  **Archive mailbox** column identifies whether an archive mailbox is enabled or disabled for each user.

   > [!NOTE]
   > The **Archive** page shows a maximum of 500 users. Use the search box if you can't immediately see the name of the user you want.

3. In the list of mailboxes, select the user to enable their mailbox for archive, and then select the **Enable archive** option:
    
   ![Enable archive option for a selected user.](../media/enable-archive-option.png)
    
   A warning is displayed saying that if you enable the archive mailbox, items in the user's mailbox that are older than the archiving policy assigned to the mailbox will be moved to the new archive mailbox. The default archive policy that is part of the retention policy assigned to Exchange Online mailboxes moves items to the archive mailbox two years after the date the item was delivered to the mailbox or created by the user. For more information, see [Learn about archive mailboxes](archive-mailboxes.md).

5. Select **Enable** to confirm.

   It might take a few moments to create the archive mailbox. When it's created, **Enabled** is displayed in the **Archive mailbox** column for the selected user, although you might need to refresh the page to see the change of status.

## Disable an archive mailbox

Similarly to how you enable an archive mailbox, you can use the **Archive** page in the Microsoft Purview compliance portal to disable a user's archive mailbox. This time, select the **Disable archive** option after you select the user.

After you disable an archive mailbox, you can reconnect it to the user's primary mailbox within 30 days of disabling it. In this case, the original contents of the archive mailbox are restored. After 30 days, the contents of the original archive mailbox are permanently deleted and can't be recovered. So if you re-enable the archive more than 30 days after disabling it, a new archive mailbox is created.

The default archive policy assigned to users' mailboxes moves items to the archive mailbox two years after the date the item is delivered. If you disable a user's archive mailbox, no action will be taken on mailbox items and they'll remain in the user's primary mailbox.

## Use Exchange Online PowerShell to enable or disable archive mailboxes

You can also use Exchange Online PowerShell to enable archive mailboxes. The primary reason to use PowerShell is that you can quickly enable the archive mailbox for all users in your organization.

The first step is to connect to Exchange Online PowerShell. For instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

After you're connected to Exchange Online, you can run the commands in the following sections to enable or disable archive mailboxes.

### Enable archive mailboxes

Run the following command to enable the archive mailbox for a single user.

```powershell
Enable-Mailbox -Identity <username> -Archive
```

Run the following command to enable the archive mailbox for all users in your organization (whose archive mailbox is currently not enabled).

```powershell
Get-Mailbox -Filter {ArchiveGuid -Eq "00000000-0000-0000-0000-000000000000" -AND RecipientTypeDetails -Eq "UserMailbox"} | Enable-Mailbox -Archive
```

### Disable archive mailboxes

Run the following command to disable the archive mailbox for a single user.

```powershell
Disable-Mailbox -Identity <username> -Archive
```

Run the following command to disable the archive mailbox for all users in your organization (whose archive mailbox is currently enabled).

```powershell
Get-Mailbox -Filter {ArchiveGuid -Ne "00000000-0000-0000-0000-000000000000" -AND RecipientTypeDetails -Eq "UserMailbox"} | Disable-Mailbox -Archive
```

## Run diagnostics on archive mailboxes

You can run an automated diagnostic check on a user's archive mailbox to identify any problems and suggested resolutions.

To run the diagnostic check, click the button below. 

> [!div class="nextstepaction"]
> [Run Tests: Archive Mailbox](https://aka.ms/PillarArchiveMailbox)

![Run diagnostics on an archive mailbox.](../media/ArchiveMailboxDiagnostics.png)

A flyout page opens in the Microsoft 365 admin center. Enter the email address of the mailbox you want to check and click **Run Tests**.

> [!NOTE]
> You must be a Microsoft 365 global admin to use the archive mailbox diagnostic check. Also, this feature isn't available in Microsoft 365 Government clouds, Microsoft 365 operated by 21Vianet, or Microsoft 365 Germany.

## Instructions for end users

Explain to users how their archive mailbox works, and how they can interact with it in Outlook on Windows, macOS, and the web. The most effective documentation will be customized for your organization. But for basic instructions, see [Manage email storage with online archive mailboxes](https://prod.support.services.microsoft.com/en-us/office/manage-email-storage-with-online-archive-mailboxes-1cae7d17-7813-4fe8-8ca2-9a5494e9a721).

## Next steps

Consider enabling [auto-expanding archiving](autoexpanding-archiving.md) for additional storage space. For instructions, see [Enable auto-expanding archiving](enable-autoexpanding-archiving.md).
