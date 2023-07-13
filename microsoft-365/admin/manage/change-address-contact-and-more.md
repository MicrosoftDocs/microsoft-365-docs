---
title: "Change your organization's address, technical contact, and more"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: tugu, jmueller
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- commerce_billing
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
search.appverid: MET150
description: "Make changes to your organization profile, such as organization name, address, phone, technical contact, and email."
ms.date: 02/11/2022
---

# Change your organization's address, technical contact, and more
  
You can make changes to your organization profile, such as your organization name, address, phone, and technical contact. **You must be a global admin to update this information.**
  
To change the address associated with your bill or subscription, see [Change your billing addresses for Microsoft 365 for business](../../commerce/billing-and-payments/change-your-billing-addresses.md).

## Change organization settings for Cloud PCs

By default, new Cloud PCs are created with the Windows 11 operating system and the Standard User account type. To change these default settings, use the following steps:

1. Sign in to the Microsoft 365 admin center with a Global admin account.
2. Go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Org settings**</a> page.
3. On the **Services** tab, select **Windows 365**.
4. Select your preferred operating system and account type, then select **Save**.

Organization settings only apply to newly-created Cloud PCs. When these settings are changed, they won't change the OS or account type of existing Cloud PCs.

## Edit organization information

> [!IMPORTANT]
> You can't change the country or region for your subscription. That's because the country or region where your organization is headquartered determines which services are available to you, the taxes and billing currency, and the location of the data center. To change your organization's country or region, sign up for a new account, choose the desired country or region, and purchase a new subscription.

To change other information on your company's profile page:
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Org settings**</a> page.
2. On the **Organization profile** tab, select **Organization information**.
3. Update your organization's information, then select **Save changes**. Be sure to fill in all required fields marked with an * to enable saving your changes.

> [!NOTE]
> SharePoint Online and OneDrive have a 256-character limit on Windows PCs. If you exceed the character limit, you receive an error message when you try to do anything within the synchronized document libraries, like creating folders or renaming documents.

An explanation of each field is provided below.

## What do these fields mean?

|**Field**  |**Description**  |
|---------|---------|
|Name  <br/>   | The name entered here is the organization's name. See [Change the organization's name](./change-address-contact-and-more.md#change-the-organizations-name) for more information on where this is used.  <br/>  |
|Address, City, State/Province, Postal code  <br/>     | The address entered here is what you will see on your bill, under Sold To: The Sold To address on your bill is the same as your organization address on your profile page (see [Understand your bill or invoice for Microsoft 365 for business](../../commerce/billing-and-payments/understand-your-invoice2.md).  <br/>        |
|Country or region  <br/>    | This is the country or region where the company is headquartered. The selected country or region determines which services are available to you, the taxes and billing currency for your country or region, and the location of the data center closest to you (see [About license restrictions](https://www.microsoft.com/microsoft-365/business/microsoft-office-license-restrictions)).<br/>NOTE: Once selected, the country or region cannot be changed. If you want to change the selection, you'll have to cancel your subscription and sign up again. For help with this process, [contact support](../get-help-support.md).        |
|Phone  <br/>     | This is the primary number for your company. It's usually the number of your company headquarters.  <br/>        |
|Technical contact  <br/> |This is the email address for the primary technical person who administers your Microsoft 365 subscription. This is the person who will receive communications about Microsoft 365 service status.  <br/> |
|Preferred language  <br/> |The preferred language determines the language for all communications that are sent from Microsoft to your organization. When you sign up, this setting determines the language used by SharePoint Online, which your users see on your team site. If you change the language preference setting after you sign up, all future communications are sent in the most recent language selected.  <br/> NOTE: The language used by SharePoint Online can't be changed.           |

## Change the organization's name

The organization's name is used throughout Microsoft 365, including but not limited to:  
* Azure Active Directory Sign-in dialogs and multifactor authentication prompts. This includes multifactor authentication prompts provided by the Microsoft Authenticator app on iOS and Android devices. 
 * If your users have set up other Microsoft accounts with their business or school email address, they may see the organization name on the sign-in page. This helps them distinguish between their work or school account and their other accounts, so they can identify which one to use when they sign in.
* Viva Engage navigation
  * In Viva Engage, the organization name is used as the name of the home Engage network, and this shows up in the left navigation.  
* OneDrive Sync
  * The organization name is shown in File Explorer on Windows and Finder on Mac. 
    * On Windows, in File Explorer, in the navigation pane, the blue cloud icon for OneDrive for your Microsoft 365 tenant is labeled "OneDrive - \<organization name\>" (for example, "OneDrive - Contoso").  
    * When a user syncs a SharePoint library, it shows up in File Explorer under a node in the left navigation that bears a blue office building icon and the organization name.
  * The organization name is used in file paths:
    * The file path for the root of the OneDrive for that user defaults to C:\users\<username>\OneDrive - \<organization Name>\
    * The file path for SharePoint libraries that get synced is  C:\users\<username>\<organization Name>\
    * The file path for the Documents Known Folder is C:\users\<username>\OneDrive - \<organization Name>\Documents
    * The file path for the Pictures Known Folder is C:\users\<username>\OneDrive - \<organization Name>\Pictures
    * The file path for the Desktop Known Folder is C:\users\<username>\OneDrive - \<organization Name>\Desktop
  * The organization name is shown in:
    * The OneDrive activity center
    * The tooltip of the OneDrive cloud icon
    * the OneDrive settings window, on the Accounts tab
  *  Currently, updating the organization name does not update it for configured clients. 
*  Microsoft Teams
    * Tenant Switcher in Teams displays the organization name when a user participates in Teams in more than one tenant.
    * Organizations that are under a certain size (get an organization-wide team created automatically)[../../microsoftteams/create-an-org-wide-team]. That team gets its name from the organization's name, but the team name does not change if the organization's Name field value changes.
*  OneNote:  End users may have a notebook named in this pattern: \<first name>@\<organization name>.
*  Windows desktop applications for Word, Excel, and PowerPoint: The File Save and File Open screens display the organization name.  
*  Mobile apps such as Word, Excel, PowerPoint, OneNote, Outlook, and the Microsoft 365 App may display the organization name on various screens, especially ones that let you pick files from Microsoft 365 services such as SharePoint and OneDrive.
*  Power Platform: The default environment takes its name from the organization name. The organization name (referred to as the TenantName in [this article](../../power-platform/guidance/adoption/secure-default-environment#rename-the-default-environment)) is the default environment name, but can be changed, though that is a manual step after a tenant rename.

Note that only Microsoft Teams will automatically detect the change to the organization name and reflect the change in the tenant switcher. Any teams, such as an organization-wide team named with the company name, will not update. 
None of the other applications pick up the name change automatically. Mobile apps may require you to sign out and sign back in or reinstall them before they will display the new name. 
[This script](/office/troubleshoot/activation/reset-office-365-proplus-activation-state) can help you force Office desktop applications to pick up the new name, but it forces the user to sign back into the Ofice desktop apps again.

If you change the organization name, OneDrive Sync will not automatically update the organization name it uses. The OneDrive Sync client will not notice the new name unless you [unlink OneDrive Sync client and re-link it](https://support.microsoft.com/office/unlink-and-re-link-onedrive-3c4680bf-cc36-4204-9ca5-e7b24cdd23ea) by signing in again. Note that you may need to do some file system cleanup after that. Also, you don't want to unlink your OneDrive Sync client if you have unsynced files. Make sure syncing has been completed before unlinking. Relinking will resync your OneDrive, but if you had previously synced SharePoint libraries that are listed under the blue office building in File Explorer, you would need to re-sync those libraries individually. A better alternative is to use the Add to OneDrive feature to add a shortcut in your OneDrive to a SharePoint library. With an Add to OneDrive shortcut, the folder contents syncs within your OneDrive blue cloud instead of your OneDrive blue office building and would automatically be included in syncing when relinking.

## Change your alternate email address

As an admin, you can change your alternate email address for resetting passwords.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

2. In the header, select your profile icon, then select **View account**.

3. On the left, select **Security info**.

4. In the Email section, select **Change**

5. Edit the address in the **Alternate email** box, then select **Next**.

6. Enter the code sent to the alternate email address and select **OK** to verify the change.
To learn about changing other profile information, see [Change your contact preferences](change-contact-preferences.md) or [Change your display language](https://support.microsoft.com/office/6f238bff-5252-441e-b32b-655d5d85d15b).
  
### Email signatures
  
You can change your email signature in Outlook Web App. For more information, see [Mail settings](https://support.microsoft.com/office/30c69a79-efc6-42d2-b740-4bf1c1f8a01c).

## Related content

[Send email from a different address](https://support.microsoft.com/office/ccba89cb-141c-4a36-8c56-6d16a8556d2e) (article)\
[Change a user name and email address](../add-users/change-a-user-name-and-email-address.md) (article)\
[Configure email forwarding in Microsoft 365](../email/configure-email-forwarding.md) (article)
