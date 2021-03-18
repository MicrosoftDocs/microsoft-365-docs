---
title: "Configure email forwarding"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: ab5eb117-0f22-4fa7-a662-3a6bdb0add74
description: "Set up email forwarding to one or more email accounts using Office365."
---

# Configure email forwarding in Microsoft 365

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see [About the new Microsoft 365 admin center](../microsoft-365-admin-center-preview.md?preserve-view=true&view=o365-21vianet).

::: moniker-end

As the admin of an organization, you might have company requirements to set up email forwarding for a user's mailbox. Email forwarding lets you forward email messages sent to a user's mailbox to another user's mailbox inside or outside of your organization.

> [!IMPORTANT]
> You can use outbound spam filter policies to control automatic forwarding to external recipients. For more information, see [Control automatic external email forwarding in Microsoft 365](../../security/office-365-security/external-email-forwarding.md?preserve-view=true&view=o365-worldwide#how-the-outbound-spam-filter-policy-settings-work-with-other-automatic-email-forwarding-controls).

## Configure email forwarding

Before you set up email forwarding, note the following:

- Once you set up email forwarding, only **new** emails sent to the  *from*  mailbox will be forwarded.

- Email forwarding requires that the  *from*  account has a license. If you're setting up email forwarding because the user has left your organization, another option is to [convert their mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md). This way several people can access it. However, a shared mailbox cannot exceed 50GB.

You must be an Exchange administrator or Global administrator in Microsoft 365 to do these steps. For more information, see the topic [About admin roles](../add-users/about-admin-roles.md).

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> **[Active users](https://go.microsoft.com/fwlink/p/?linkid=834822)** page.

2. Select the name of the user whose email you want to forward to open the properties page.

3. On the **Mail** tab, select **Manage email forwarding**.

4. On the email forwarding page, select **Forward all emails sent to this mailbox**, enter the forwarding address, and choose whether you want to keep a copy of forwarded emails. If you don't see this option, make sure a license is assigned to the user account. Select **Save changes**.

    **To forward to multiple email addresses**, you can ask the user to set up a rule in Outlook to forward to the addresses. To learn more, see [Use rules to automatically forward messages](https://support.microsoft.com/office/45aa9664-4911-4f96-9663-ece42816d746).

     Or, in the admin center, [create a distribution group](../setup/create-distribution-lists.md), [add the addresses to it](add-user-or-contact-to-distribution-list.md), and then set up forwarding to point to the DL using the instructions in this article.

5. Don't delete the account of the user who's email you're forwarding or remove their license!  If you do, email forwarding will stop.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> **[Active users](https://go.microsoft.com/fwlink/p/?linkid=847686)** page.

2. Select the name of the user whose email you want to forward to open the properties page.

3. Expand **Mail settings**, and then in the **Email forwarding** section, select **Edit**.

4. On the email forwarding page, set the toggle to **On**, enter the forwarding address, and choose whether you want to keep a copy of forwarded emails. If you don't see this option, make sure a license is assigned to the user account. Select **Save**.

   **To forward to multiple email addresses**, you can ask the user to set up a rule in Outlook to forward to the addresses. To learn more, see [Use rules to automatically forward messages](https://support.microsoft.com/office/45aa9664-4911-4f96-9663-ece42816d746).

   Or, in the admin center, [create a distribution group](../setup/create-distribution-lists.md), [add the addresses to it](add-user-or-contact-to-distribution-list.md), and then set up forwarding to point to the DL using the instructions in this article.

5. Don't delete the account of the user who's email you're forwarding or remove their license!  If you do, email forwarding will stop.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> **[Active users](https://go.microsoft.com/fwlink/p/?linkid=850628)** page.

2. Select the name of the user whose email you want to forward to open the properties page.

3. Expand **Mail settings**, and then in the **Email forwarding** section, select **Edit**.

4. On the email forwarding page, set the toggle to **On**, enter the forwarding address, and choose whether you want to keep a copy of forwarded emails. If you don't see this option, make sure a license is assigned to the user account. Select **Save**.

   **To forward to multiple email addresses**, you can ask the user to set up a rule in Outlook to forward to the addresses. To learn more, see [Use rules to automatically forward messages](https://support.microsoft.com/office/45aa9664-4911-4f96-9663-ece42816d746).

   Or, in the admin center, [create a distribution group](../setup/create-distribution-lists.md), [add the addresses to it](add-user-or-contact-to-distribution-list.md), and then set up forwarding to point to the DL using the instructions in this article.

5. Don't delete the account of the user who's email you're forwarding or remove their license!  If you do, email forwarding will stop.

::: moniker-end