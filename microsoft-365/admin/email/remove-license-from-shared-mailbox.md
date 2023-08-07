---
title: "Remove license from shared mailbox"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
ms.reviewer: sinakassaw, nicholak
manager: scotv
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom:
- commerce_licensing
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Remove a license from a shared mailbox to assign it to another user or return the license so you're not paying for it. "
ms.date: 06/13/2023
---

# Remove a license from a shared mailbox

Shared mailboxes usually don't require a license. Follow these instructions to remove a license from a shared mailbox so that you can either assign it to a user or return the license so that you aren't paying for a license you don't need.

> [!NOTE]
>
> An Exchange Online Plan 2 license is required in the following scenarios:
>
> - The shared mailbox has more than 50 GB of storage in use.
> - The shared mailbox uses in-place archiving.
> - The shared mailbox is placed in litigation hold.
> 
> For step-by-step instructions on how to assign licenses, see [Assign licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users). 


## Remove the license

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

 1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

   > [!NOTE]
   > You need to remove the license from the Active users page. You can't remove the license from the Shared mailbox page because licenses are user settings.
  
2. Select the shared mailbox.

3. One the **Licenses and Apps** tab, expand **Licenses** and uncheck the box for the license you want to remove.

4. Select **Save changes**.

5. When you return to the **Active users** page, the status of the shared mailbox will be **Unlicensed**.

6. You're still paying for the license. To stop paying for it, [remove the license from your subscription](../../commerce/licenses/buy-licenses.md).

## Related content

[About shared mailboxes](about-shared-mailboxes.md) (article)\
[Create a shared mailbox](create-a-shared-mailbox.md) (article)\
[Configure a shared mailbox](configure-a-shared-mailbox.md) (article)\
[Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md) (article)\
[Resolve issues with shared mailboxes](resolve-issues-with-shared-mailboxes.md) (article)
