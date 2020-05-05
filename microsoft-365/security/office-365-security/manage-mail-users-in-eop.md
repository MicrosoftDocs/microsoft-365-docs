---
title: "Manage mail users in standalone EOP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 4bfaf2ab-e633-4227-8bde-effefb41a3db
description: Learn about how to manage mail users in Exchange Online Protection (EOP), including using directory synchronization, EAC, and PowerShell to manage users.
ms.custom: seo-marvel-apr2020
---

# Manage mail users in standalone EOP

In standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, mail users are the fundamental type of user account. A mail user has account credentials in your standalone EOP organization, and can access resources (have permissions assigned). A mail user's email address is external (for example, in your on-premises email environment).

> [!NOTE]
> When you create a mail user, the corresponding user account is available in the Microsoft 365 admin center. When you create a user account in the Microsoft 365 admin center, you can't use that account to create a mail user.

The recommended method to create and manage mail users in standalone EOP is to use directory synchronization as described in the [Use directory synchronization to manage mail users](#use-directory-synchronization-to-manage-mail-users) section later in this topic.

For standalone EOP organizations with a very small number of users, you can add and manage mail users in the Exchange admin center (EAC) or in standalone EOP PowerShell as described in this topic.

## What do you need to know before you begin?

- To open the Exchange admin center (EAC), see [Exchange admin center in standalone EOP](exchange-admin-center-in-exchange-online-protection-eop.md).

- To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- When you create mail users in EOP PowerShell, you might encounter throttling. Also, the EOP PowerShell cmdlets use a batch processing method that results in a propagation delay of a few minutes before the results of the commands are visible.

- You need to be assigned permissions before you can perform these procedures. Specifically, you need the Mail Recipient Creation (create) and Mail Recipients (modify) roles, which are assigned to the OrganizationManagement (global admins) and RecipientManagement role groups by default. For more information, see [Permissions in standalone EOP](feature-permissions-in-eop.md) and [Use the EAC modify the list of members in role groups](manage-admin-role-group-permissions-in-eop.md#use-the-eac-modify-the-list-of-members-in-role-groups).

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center](../accessibility/keyboard-shortcuts-in-admin-center.md).

> [!TIP]
> Having problems? Ask for help in the Exchange forums. Visit the forums at [Exchange Online](https://go.microsoft.com/fwlink/p/?linkId=267542) or [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351).

## Use the Exchange admin center to manage mail users

### Use the EAC to create mail users

1. In the EAC, go to **Recipients** \> **Contacts**

2. Click **New** ![New icon](../media/ITPro_EAC_AddIcon.png) and then select **Mail user**.

3. In the **New mail user** page that opens, configure the following settings. Settings marked with an <sup>\*</sup> are required.

   - **First name**

   - **Initials**: The person's middle initial.

   - **Last name**

   - <sup>\*</sup>**Display name**: By default, this box shows the values from the **First name**, **Initials**, and **Last name** boxes. You can accept this value or change it. The value should be unique, and has a maximum length of 64 characters.

   - <sup>\*</sup>**Alias**: Enter a unique alias, using up to 64 characters, for the user

   - **External email address**: Enter the user's email address. The domain should be external to your cloud-based organization.

   - <sup>\*</sup>**User ID**: Enter the account that the person will use to sign in to the service. The user ID consists of a username on the left side of the at (@) symbol (@) and a domain on the right side.

   - <sup>\*</sup>**New password** and <sup>\*</sup>**Confirm password**: Enter and reenter the account password. Verify that the password complies with the password length, complexity, and history requirements of your domain.

4. When you've finished, click **Save** to create the mail user.

### Use the EAC to modify mail users

1. In the EAC, go to **Recipients** \> **Contacts**.

2. In the list of contacts, select the mail user that you want to modify, and then click **Edit** ![Edit icon](../media/ITPro_EAC_AddIcon.png).

3. On the mail user properties page that opens, click one of the following tabs to view or change properties.

   When you're finished, click **Save**.

#### General

Use the **General** tab to view or change basic information about the mail user.

- **First name**

- **Initials**

- **Last name**

- **Display name**: This name appears in your organization's address book, on the To: and From: lines in email, and in the list of contacts in the EAC. This name can't contain empty spaces before or after the display name.

- **User ID**: This is the user's account in Microsoft 365. You can't modify this value here.

- **Hide from address lists**: Select this check box to prevent the mail user from appearing in the address book and other address lists that are defined in your organization. After you select this check box, users can still send messages to the recipient by using the email address.

- **More options** \> **Custom attributes**: Click **Edit** ![Edit icon](../media/ITPro_EAC_EditIcon.png) in the **Custom attributes** pages that opens, enter values for Custom Attribute 1 through Custom Attribute 15. When you're finished, click **OK**.

#### Contact information

Use the **Contact information** tab to view or change the user's contact information. The information on this page is displayed in the address book.

- **Street**
- **City**
- **State/Province**
- **ZIP/Postal code**
- **Country/Region**
- **Work phone**
- **Mobile phone**
- **Fax**
- **More options**

  - **Office**
  - **Home phone**
  - **Web page**
  - **Notes**

> [!TIP]
> You can use the **State/Province** value to create recipient conditions for dynamic distribution groups, email address policies, or address lists.

#### Organization

Use the **Organization** tab to record detailed information about the user's role in the organization. This information is displayed in the address book. Also, you can create a virtual organization chart that's accessible from email clients such as Outlook.

- **Title**: Use this box to view or change the recipient's title.

- **Department**: Use this box to view or change the department in which the user works. You can use this box to create recipient conditions for dynamic distribution groups, email address policies, or address lists.

- **Company**: Use this box to view or change the company for which the user works. You can use this box to create recipient conditions for dynamic distribution groups, email address policies, or address lists.

- **Manager**: To add a manager, click **Browse**. In **Select Manager**, select a person, and then click **OK**.

- **Direct reports**: You can't modify this box. A direct report is a user who reports to a specific manager. If you've specified a manager for the user, that user appears as a direct report in the details of the manager's mailbox. For example, Kari manages Chris and Kate, so Kari is specified in the **Manager** box for Chris and Kate, and Chris and Kate appear in the **Direct reports** box in the properties of Kari's account.

#### Email addresses

Use the **Email addresses** tab to view or change the email addresses associated with the mail user. This includes the mail user's primary SMTP address, their external email address, and any associated proxy addresses. The primary SMTP address (also known as the reply address) is displayed in bold text in the address list, with the uppercase **SMTP** value in the **Type** column. By default, the external email address is the primary SMTP address.

- **Add**: Click **Add** ![Add icon](../media/ITPro_EAC_AddIcon.png). In the **New email address** page that appears, configure the following settings:

  - **Email address type**: Verify **SMTP** is selected.
  - **Email address**: Enter the email address to add.
  - **Make this the reply address**: For mail users, you shouldn't need to select this option (the external email address is the reply address).

  When you're finished, click **OK**.

- **Edit**: Select the email address that you want to modify, and then click **Edit** ![Edit icon](../media/ITPro_EAC_EditIcon.png). In the **Email address** page that appears, configure the following settings:

  - **Email address**: Modify the existing email address.
  - **Make this the reply address**: This setting only appears if the email address you selected isn't already the reply address.

  When you're finished, click **OK**.

- **Remove**: Select the email address that you want to remove, and then click **Remove** ![Remove icon](../media/ITPro_EAC_RemoveIcon.gif). You can't remove the reply address.

#### Mail flow settings

In the **Message delivery restrictions** section, click **View details**. In the **Message delivery restrictions** page that opens, configure the following settings:

- **Accept messages from**: Specify who can send messages to this mail user. Unspecified senders are blocked.

  - **All senders**: This is the default value.
  - **Only senders in the following list**: Click **Add** ![Add icon](../media/ITPro_EAC_AddIcon.png). Select a recipient, click **Add**, and repeat as many times as necessary. When you're finished, click **OK**.

- **Require that all senders are authenticated**: Select this option to prevent anonymous users (external users) from sending messages to the user.

- **Reject messages from**: Specify who isn't allowed to send messages to this mail user.

  - **No senders**: This is the default value.
  - **Senders in the following list**: Click **Add** ![Add icon](../media/ITPro_EAC_AddIcon.png). Select a recipient, click **Add**, and repeat as many times as necessary. When you're finished, click **OK**.

When you're finished, click **OK**.

#### Member of

Use the **Member of** tab to view a list of the distribution groups or mail-enabled security groups that the user belongs to. You can't change group membership on this page. Note that dynamic distribution groups aren't displayed on this page because their membership is calculated each time they're used.

#### MailTip

Use the **MailTip** tab to add an alert for potential issues before a user sends messages to this recipient. The text is displayed in the InfoBar when this recipient is added to the To, Cc, or Bcc lines of a new email message.

MailTips can include HTML tags, but scripts aren't allowed. The length of a custom MailTip can't exceed 175 displayed characters. HTML tags aren't counted in the limit.

### Use the EAC to bulk edit mail users

When you bulk edit mail users in the EAC, you can change the following types of properties:

- [Contact information](#contact-information)
- [Organization](#organization)

1. In the EAC, go to **Recipients** \> **Contacts**.

2. In the list of contacts, select two or more mail users. You can't bulk edit a combination of mail contacts and mail users.

   You can select multiple adjacent mail users by holding down the Shift key and clicking the first mail user, and then clicking the last mail user you want to edit. You can also select multiple mail users by holding down the Ctrl key and clicking each one that you want to edit.

3. In the Details pane, under **Bulk Edit**, click **Update** under **Contact Information** or **Organization**.

4. Make the changes on the properties page and then save your changes.

### Use the EAC to remove mail users

1. In the EAC, go to **Recipients** \> **Contacts**.

2. Select the mail user that you want to remove, and then click **Remove** ![Remove icon](../media/ITPro_EAC_RemoveIcon.gif).

## Use PowerShell to manage mail users

In Exchange Online PowerShell, you use the following cmdlets to manage mail users:

- [Get-User](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-user)
- [Set-User](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/set-user)
- [Get-MailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-mailuser)
- [New-MailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/new-mailuser)
- [Remove-MailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/remove-mailuser)
- [Set-MailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/set-mailuser)

In standalone EOP PowerShell, you use the following cmdlets:

- [Get-User](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-user)
- **[Set-EOPUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/set-eopuser)**
- [Get-MailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-mailuser)
- **[New-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/new-eopmailuser)**
- **[Remove-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/remove-eopmailuser)**
- **[Set-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/set-eopmailuser)**

The examples in this section are written for Exchange Online PowerShell, but you can use them in standalone EOP PowerShell by substituting the corresponding EOP cmdlet.

### Use Exchange Online PowerShell to create mail users

This example creates a mail user for Rene Valdes:

- The name and display name is Rene Valdes (if you don't use the _DisplayName_ parameter, the value of the _Name_ parameter is used for the display name).

- The alias is renev.

- The external email address is renevaldes@fabrikam.com.

- The logon name is renev@contoso.onmicrosoft.com.

- The password is Pa$$word1.

```PowerShell
New-MailUser -Name "Rene Valdes" -Alias renev -ExternalEmailAddress renevaldes@fabrikam.com -FirstName Rene -LastName Valdes -MicrosoftOnlineServicesID renev@contoso.onmicrosoft.com -Password (ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force)
```

For detailed syntax and parameter information, see [New-MailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/new-mailuser).

### Use Exchange Online PowerShell to modify mail users

In general, use the **Get-User** and **Set-User** cmdlets to view and change organization and contact information properties. Use the **Get-MailUser** and **Set-MailUser** cmdlets to view or change mail-related properties, such email addresses, the MailTip, custom attributes, and whether the mail user is hidden from address lists.

Use the **Get-MailUser** and **Set-MailUser** cmdlets to view and change properties for mail users.

Here are some examples of using Exchange Online PowerShell to change mail user properties.

This example sets the external email address for Pilar Pinilla.

```PowerShell
Set-MailUser "Pilar Pinilla" -ExternalEmailAddress pilarp@tailspintoys.com
```

This example hides all mail users from the organization's address book.

```PowerShell
$MEU = Get-MailUser -ResultSize unlimited
$MEU | foreach {Set-MailUser -Identity $_ -HiddenFromAddressListsEnabled $true}
```

This example sets the Company property for all mail users to Contoso.

```PowerShell
$U = Get-User -ResultSize unlimited -Filter "RecipientTypeDetails -eq 'mailuser'"
$U | foreach {Set-User -Identity $_ -Company Contoso}
```

This example sets the CustomAttribute1 property to a value of ContosoEmployee for all mail users that have a value of Contoso in the Company property.

```PowerShell
$Contoso = Get-User -ResultSize unlimited -Filter "(RecipientTypeDetails -eq 'mailuser') -and (Company -eq 'Contoso')"
$Contoso | foreach {Set-MailUser -Identity $_ -CustomAttribute1 ContosoEmployee}
```

### Use Exchange Online PowerShell to remove mail users

To remove a mail user, use the following syntax:

```powershell
Remove-MailUser -Identity <MailUserIdentity>
```

This example remove the mail user for Pilar Pinilla:

```powershell
Remove-MailUser -Identity "Pilar Pinilla"
```

For detailed syntax and parameter information, see [Remove-MailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/remove-mailuser)

## How do you know these procedures worked?

To verify that you've successfully created, modified, or removed mail users, do any of the following steps:

- In the EAC, go to **Recipients** \> **Contacts**. Verify the mail user is list (or not listed). The **Contact Type** value is **Mail user**. Select the mail user from the list, and click lick **Edit** ![Edit icon](../media/ITPro_EAC_EditIcon.png) to view the properties.

- In Exchange Online PowerShell, replace \<MailUserIdentity\> with the name, email address, or alias of the mail user, and run the following command to verify that the mail user is listed (or not listed).

  ```PowerShell
  Get-MailUser -Identity <MailUserIdentity> | Format-List Name,Alias,DisplayName,ExternalEmailAddress
  ```

- In Exchange Online PowerShell, use the **Get-User** and **Get-MailUser** cmdlets to verify the property changes you made.

   ```PowerShell
   Get-MailUser | Format-List Name,CustomAttribute1
   ```

   ```PowerShell
   Get-User -ResultSize unlimited -Filter "RecipientTypeDetails -eq 'mailuser'" | Format-List Name,Company
   ```

## Use directory synchronization to manage mail users

In standalone EOP, directory synchronization is available for customers with on-premises Active Directory. You can synchronize those accounts to Azure Active Directory (Azure AD), where copies of the accounts are stored in the cloud. When you synchronize your existing user accounts to Azure Active Directory, you can view those users in the **Recipients** pane of the Exchange admin center (EAC) or in standalone EOP PowerShell.

**Notes**:

- If you use directory synchronization to manage your recipients, you can still add and manage users in the Microsoft 365 admin center, but they will not be synchronized with your on-premises Active Directory. This is because directory synchronization only syncs recipients from your on-premises Active Directory to the cloud.

- Using directory synchronization is recommended for use with the following features:

  - **Outlook Safe Sender lists and Blocked Sender lists**: When synchronized to the service, these lists will take precedence over spam filtering in the service. This lets users manage their own Safe Sender list and Blocked Sender list with individual sender and domain entries. For more information, see [Configure junk email settings on Exchange Online mailboxes](https://docs.microsoft.com/microsoft-365/security/office-365-security/configure-junk-email-settings-on-exo-mailboxes).

  - **Directory Based Edge Blocking (DBEB)**: For more information about DBEB, see [Use Directory Based Edge Blocking to reject messages sent to invalid recipients](../mail-flow-best-practices/use-directory-based-edge-blocking.md).

  - **End user access to quarantine**: To access their quarantined messages, recipients must have a valid user ID and password in the service. For more information about quarantine, see [Find and release quarantined messages as a user](https://docs.microsoft.com/microsoft-365/security/office-365-security/find-and-release-quarantined-messages-as-a-user).

  - **Mail flow rules (also known as transport rules)**: When you use directory synchronization, your existing Active Directory users and groups are automatically uploaded to the cloud, and you can then create mail flow rules that target specific users and/or groups without having to manually add them in the service. Note that [dynamic distribution groups](manage-dynamic-distribution-groups/manage-dynamic-distribution-groups.md) can't be synchronized via directory synchronization.

Get the necessary permissions and prepare for directory synchronization, as described in [What is hybrid identity with Azure Active Directory?](https://docs.microsoft.com/azure/active-directory/hybrid/whatis-hybrid-identity).

### Synchronize directories with Azure Active Directory Connect (AAD Connect)

1. Activate directory synchronization as described in [Azure AD Connect sync: Understand and customize synchronization](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-sync-whatis).

2. Install and configure an on-premises computer to run AAD Connect as described in [Prerequisites for Azure AD Connect](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-prerequisites).

3. [Select which installation type to use for Azure AD Connect](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-select-installation):

   - [Express](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-express)

   - [Custom](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-custom)

   - [Pass-through authentication](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-pta-quick-start)

> [!IMPORTANT]
> When you finish the Azure Active Directory Sync Tool Configuration Wizard, the **MSOL_AD_SYNC** account is created in your Active Directory forest. This account is used to read and synchronize your on-premises Active Directory information. In order for directory synchronization to work correctly, make sure that TCP 443 on your local directory synchronization server is open.

After configuring your sync, be sure to verify that AAD Connect is synchronizing correctly. In the EAC, go to **Recipients** \> **Contacts** and view that the list of users was correctly synchronized from your on-premises environment.
