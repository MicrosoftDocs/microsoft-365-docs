---
title: "Change a user name and email address"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 10/28/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
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

This article describes how administrators can update a user's name and email address in Microsoft 365. If you're a Microsoft 365 admin for your organization, you might need to change someone's email address or display name if, for example, they change their name.

If you're a business user and you want to update your information in Microsoft 365, you might need your administrator to make changes for you.

> [!NOTE]
> If you're using a personal Microsoft account and you need to update your information, see [Get help with your Microsoft account](https://support.microsoft.com/en-us/account-billing/get-help-with-your-microsoft-account-ace6f3b3-e2d3-aeb1-6b96-d2e9e7e52133).

## Before you begin

You must have an appropriate role, such as [user administrator](/microsoft-365/admin/add-users/about-admin-roles#commonly-used-microsoft-365-admin-center-roles) to perform the tasks described in this article.

## Watch: Change a user's email address, display name, or email alias

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198016). If you found this video helpful, check out the [complete training series for small businesses and people who are new to Microsoft 365](../../business-video/index.yml).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=7b58656a-67db-457a-aa90-5c93334d4d28]

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Users** > **Active users**.

1. Select the user from the list of active users.

1. To change the user's email address or user name, select **Manage username and email**. Select the edit icon, and then change the user's name or email address. Select **Save changes**.

1. To change the user's display name, select **Manage contact information**. Select the edit icon, and then change the user's name or contact information. Select **Save changes**.

1. Close the user's panel.

## Change a user's email address

You must be a [user administrator](/microsoft-365/admin/add-users/about-admin-roles?view=o365-worldwide#commonly-used-microsoft-365-admin-center-roles&preserve-view=true).

::: moniker range="o365-worldwide"

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to the **Users** > **Active users** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to the **Users** > **Active users** page.

::: moniker-end

1. Select the user's name. On the **Account** tab, select **Manage username and email**.

1. In the **Username**, edit the information. Then, make sure the correct domain is selected in the **Domains** box. If you need to add a domain, see [Add a domain to Microsoft 365](/microsoft-365/admin/setup/add-domain).

1. Select **Done**.

> [!IMPORTANT]
> If you get an error message, see [Resolve error messages](#resolve-error-messages).

## Change a user's display name

You must be a [user administrator](/microsoft-365/admin/add-users/about-admin-roles?view=o365-worldwide#commonly-used-microsoft-365-admin-center-roles&preserve-view=true).

::: moniker range="o365-worldwide"

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to the **Users** > **Active users** page.
::: moniker-end

::: moniker range="o365-21vianet"

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to the **Users** > **Active users** page.

::: moniker-end

1. Select the user's name. On the **Account** tab, select **Manage contact information**.

1. Update the user's name and contact information, including their display name.

1. Select **Save changes**.

   If you get the error message "**We're sorry, the user couldn't be edited. Review the user information and try again**, see [Resolve error messages](#resolve-error-messages).

## Add an email alias

For more information on adding an email alias, see [Add another email alias for a Microsoft 365 business subscription user](../email/add-another-email-alias-for-a-user.md).

## Resolve error messages

### "A parameter cannot be found that matches parameter name 'EmailAddresses"

If you get the error message "A parameter cannot be found that matches parameter name 'EmailAddresses'", it means that it's taking a bit longer to finish setting up your tenant, or your custom domain if you recently added one. The setup process can take up to four hours. Wait a while so the setup process has time to finish, and then try again. If the problem persists, contact [support](../../business-video/get-help-support.md) and ask them to do a full sync for you.

### "We're sorry, the user couldn't be edited. Review the user information and try again"

If you get the error message "We're sorry, the user couldn't be edited. Review the user information and try again.", it means you aren't a member of the correct admin role and you don't have permissions to change the user name.

### What if the person's offline address book won't sync with the Global Address List?

If they're using Exchange Online or if their account is linked with your organization's on-premises Exchange environment, you might see this error when you try to change a username and email address: "This user is synchronized with your local Active Directory. Some details can be edited only through your local Active Directory."

This error is due to the Microsoft Online Email Routing Address (MOERA). The MOERA is constructed from the person's  _userPrincipalName_ attribute in Active Directory and is automatically assigned to the cloud account during the initial sync. Once created, you can't modify or remove it in Microsoft 365. Later, you can change the username in the Active Directory, but it doesn't change the MOERA and you might run into issues displaying the newly changed name in the Global Address List.

To fix this issue, sign in to the [Microsoft Graph PowerShell](/powershell/microsoftgraph/overview) with your Microsoft 365 administrator credentials and use the following syntax:

```powershell
Update-MgUser -UserId anne.wallace@contoso.com -UserPrincipalName anne.jones@contoso.com
```

> [!TIP]
> This change affects the person's **userPrincipalName** attribute and has no bearing on their Microsoft Online Email Routing Address (MOERA) email address. It's a best practice, however, to have the person's sign-in UPN match their primary SMTP address.

## Related content

[Add a domain](../setup/add-domain.md)
[Admins: Reset a password for one or more users](reset-passwords.md)
[Add another email address to a user](../email/add-another-email-alias-for-a-user.md)
[Create a shared mailbox](../email/create-a-shared-mailbox.md)
[Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) (YouTube)

