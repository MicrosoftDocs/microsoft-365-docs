---
title: "Change a user name and email address"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 05/29/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- must-keep
ms.custom:
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- AdminTemplateSet
- adminvideo
- business_assist
description: "Learn how you can change a user's email address and display name."
---

# Change a user name and email address

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

You might need to change someone's email address and display name if, for example, they get married and their family name changes.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

You must be a [user administrator](/microsoft-365/admin/add-users/about-admin-roles?view=o365-worldwide#commonly-used-microsoft-365-admin-center-roles&preserve-view=true).

## Watch: Change a user's email address, display name or email alias

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198016).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=7b58656a-67db-457a-aa90-5c93334d4d28]

1. In the Microsoft 365 admin center, select **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.
1. Select the user from the list of active users.
1. Select **Manage username and email**.
1. Select the edit icon next to the username you want to change.
1. Change the display name, and select **Done**.

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).

## Change a user's email address

You must be a [user administrator](/microsoft-365/admin/add-users/about-admin-roles?view=o365-worldwide#commonly-used-microsoft-365-admin-center-roles&preserve-view=true).

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

1. Select the user's name, and then on the **Account** tab select **Manage username and email**.

1. In the first box, type the first part of the new email address. If you added your own domain to Microsoft 365, choose the domain for the new email alias by using the drop-down list. [Learn how to add a domain](../setup/add-domain.md).

1. Select **Done**.

> [!IMPORTANT]
> If you get an error message, see [Resolve error messages](#resolve-error-messages).

## Change a user's display name

You must be a [user administrator](/microsoft-365/admin/add-users/about-admin-roles?view=o365-worldwide#commonly-used-microsoft-365-admin-center-roles&preserve-view=true).

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

1. Select the user's name, and then on the **Account** tab select **Manage contact information**.

1. Update the user's name and contact information.

1. Select **Save changes**.

   If you get the error message "**We're sorry, the user couldn't be edited. Review the user information and try again**, see [Resolve error messages](#resolve-error-messages).

## Add an email alias

For more information on adding an email alias, see [Add another email alias for a Microsoft 365 business subscription user](../email/add-another-email-alias-for-a-user.md).

## Set the primary email address

You must be an [Exchange administrator](about-exchange-online-admin-role.md).

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

1. Select the user's name, and then on the **Account** tab select **Manage email aliases**.

1. If you're adding a new email address, under **Aliases**, in the blank box, type the first part of the new email address. If you added your own domain to Microsoft 365, choose the domain for the new email alias by using the drop-down list and select **Add**.

1. Under **Aliases**, select the ellipses (...) next to the desired alias and then select **Change to primary email** for the email address that you want to set as the primary email address for that person.

   > [!IMPORTANT]
   > You won't see this option to **Change to primary email** if you purchased Microsoft 365 from GoDaddy or another Partner service that provides a management console. Instead, sign in to the GoDaddy / partner's management console to set the primary alias.
   >
   > If you don't see the option, you don't have permissions to change a user's name and primary email address.

1. Select **Save changes**, then **Close**.

1. Give the person the following information:

   - This change could take a while.

   - Their new username. They need it to sign in to Microsoft 365.

   - If they're using Skype for Business Online, they must reschedule any Skype for Business Online meetings that they organized, and tell their external contacts to update their contact information.

   - If they're using OneDrive, the URL to this location has changed. If they have OneNote notebooks in their OneDrive, they might need to close and reopen them in OneNote. If they have shared files from their OneDrive, the links to the files might not work and the user can reshare.

   - If their password changed too, they're prompted to enter the new password on their mobile device, or it won't sync.

A person's previous primary email address is retained as an extra email address. **We strongly recommend that you don't remove the old email address.**

Some people might continue to send email to the person's old email address and deleting it might result in NDR failures. Microsoft automatically routes it to the new one. Also, don't reuse old SMTP email addresses and apply them to new accounts. This can also cause NDR failures or delivery to an unintended mailbox.

## Resolve error messages

### "A parameter cannot be found that matches parameter name 'EmailAddresses"

If you get the error message " **A parameter cannot be found that matches parameter name 'EmailAddresses**" it means that it's taking a bit longer to finish setting up your tenant, or your custom domain if you recently added one. The setup process can take up to 4 hours to complete. Wait a while so the setup process has time to finish, and then try again. If the problem persists, call [support](../../business-video/get-help-support.md) and ask them to do a full sync for you.

### "We're sorry, the user couldn't be edited. Review the user information and try again"

If you get the error message " **We're sorry, the user couldn't be edited. Review the user information and try again**." it means you aren't a member of the correct admin role and you don't have permissions to change the user name.

### What if the person's offline address book won't sync with the Global Address List?

If they're using Exchange Online or if their account is linked with your organization's on-premises Exchange environment, you might see this error when you try to change a username and email address: "This user is synchronized with your local Active Directory. Some details can be edited only through your local Active Directory."

This is due to the Microsoft Online Email Routing Address (MOERA). The MOERA is constructed from the person's  _userPrincipalName_ attribute in Active Directory and is automatically assigned to the cloud account during the initial sync and once created, it can't be modified or removed in Microsoft 365. Later, you can change the username in the Active Directory, but it doesn't change the MOERA and you might run into issues displaying the newly changed name in the Global Address List.

To fix this, sign in to the [Microsoft Graph PowerShell](/powershell/microsoftgraph/overview) with your Microsoft 365 administrator credentials and use the following syntax:

```powershell
Update-MgUser -UserId anne.wallace@contoso.com -UserPrincipalName anne.jones@contoso.com
```

> [!TIP]
> This changes the person's **userPrincipalName** attribute and has no bearing on their Microsoft Online Email Routing Address (MOERA) email address. It is best practice, however, to have the person's logon UPN match their primary SMTP address.

## Related content

[Add a domain](../setup/add-domain.md)
[Admins: Reset a password for one or more users](reset-passwords.md)
[Add another email address to a user](../email/add-another-email-alias-for-a-user.md)
[Create a shared mailbox](../email/create-a-shared-mailbox.md)
