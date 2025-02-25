---
title: "Add another email alias for a user"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 01/06/2025
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
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- AdminTemplateSet
- business_assist
description: "Learn how you can add more than one email address, called an email alias to users in your Microsoft 365 organization."
---

# Add another email alias for a Microsoft 365 business subscription user
  
A primary email address in Microsoft 365 is usually the email address a user was assigned when their account was created. When the user sends email to someone else, their primary email address is what typically appears in the  *From*  field in email apps. They can also have more than one email address associated with their Microsoft 365 for business account. These additional addresses are called aliases. You can create up to 400 aliases for a user. No additional fees or licenses are required. This article is for Microsoft 365 administrators who have business subscriptions. It's not for home users.

For example, Jenna at your organization has the email address jenna@contosoco.com, but she also wants to receive email at jen@contosoco.com because some people refer to her by that name. You can create aliases for her so that email sent to both email addresses go to Jenna's inbox.
  
If you want multiple people to manage email sent to a single email address like info@contoso.com or sales@contoso.com, create a shared mailbox. Learn more at [Create a shared mailbox](create-a-shared-mailbox.md).

> [!NOTE]
> This article is for Microsoft 365 administrators who have business subscriptions. It's not for home users.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

You must be a member of the user administrator role to add email aliases to a user. For more info, see [About admin roles in the Microsoft 365 admin center](../add-users/about-admin-roles.md).

## Add email aliases to a user

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active Users** page, select the user you want to manage.

1. Under **Aliases** and select **Manage username and email**. You won't see this option if the person doesn't have a license assigned to them.

3. On the **Manage username and email** page, add the new alias in the **Username** field, select a domain and choose **Add**.

    > [!TIP]
    > The email alias must end with a domain from the drop-down list. To add another domain name to the list, see [Add a domain to Microsoft 365](../setup/add-domain.md).
  
4. When you're done, choose **Save changes**. It usually takes about 24 hours for the new aliases to update.

5. The user will now have a primary address and an alias. For example, all mail sent to jenna@contoso.com, and her alias, jen@contoso.com, will go to Jenna's inbox. **When the user replies, the *From* address will depend on her Outlook client. Outlook on the web will use the alias at which the email was received. Outlook desktop will use her primary email alias.**

### Sending email from the proxy address easily

Your users can now send from their aliases when using Outlook on the web. When the `Set-OrganizationConfig -SendFromAliasEnabled $true` cmdlet is set, users within the organization will get access to a list of checkboxes where each entry corresponds to an alias in their Outlook settings. Selecting an alias will make it appear in the **From** dropdown in the **Compose** form.

## Troubleshooting

### Did you get "A parameter cannot be found that matches parameter name EmailAddresses" message?

If you get this error message it means that it's taking a bit longer to finish setting up your tenant, or your custom domain if you recently added one. The setup process can take up to 4 hours to complete. Wait a while so the setup process has time to finish, and then try again. If the problem persists, call Support and they will do a full sync for you.

### Did you get "This user is synchronized with your local Active Directory. Some details can be edited only through your local Active Directory" message?

If you get this error message, it means that you need to add the alias in your on-premises Active Directory. Open Active Directory Users and Computers (ADUC) and select the user account you would like to edit. Select **Properties** > **Attribute Editor** > **proxyAddresses** (if not visible, under ADUC's  **View** menu, enable **Advanced Features**). Next, add the required alias, which should start with the all-lowercase prefix "smtp:" (for example, `smtp:jsmith@contoso.com`). Lastly, wait for the changes to sync to Microsoft Entra ID.

### Did you purchase your subscription from GoDaddy or another Partner?

If you purchased your subscription from GoDaddy or another Partner, to set the new alias as the primary, you can't set the new alias in the Microsoft 365 admin center. You must go to the GoDaddy/partner management console.
  
## Related content

[Send email from a different address](https://support.microsoft.com/office/ccba89cb-141c-4a36-8c56-6d16a8556d2e) (article)

[Change a user name and email address](../add-users/change-a-user-name-and-email-address.md) (article)

[Configure email forwarding in Microsoft 365](configure-email-forwarding.md) (article)
