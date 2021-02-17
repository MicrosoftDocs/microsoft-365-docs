---
title: Manage mail users in standalone EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
ms.assetid: 4bfaf2ab-e633-4227-8bde-effefb41a3db
description: Learn about how to manage mail users in Exchange Online Protection (EOP), including using directory synchronization, EAC, and PowerShell to manage users.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Manage mail users in standalone EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
-  [Exchange Online Protection standalone](https://go.microsoft.com/fwlink/?linkid=2148611)

In standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, mail users are the fundamental type of user account. A mail user has account credentials in your standalone EOP organization, and can access resources (have permissions assigned). A mail user's email address is external (for example, in your on-premises email environment).

> [!NOTE]
> When you create a mail user, the corresponding user account is available in the Microsoft 365 admin center. When you create a user account in the Microsoft 365 admin center, you can't use that account to create a mail user.

The recommended method to create and manage mail users in standalone EOP is to use directory synchronization as described in the [Use directory synchronization to manage mail users](#use-directory-synchronization-to-manage-mail-users) section later in this article.

For standalone EOP organizations with a small number of users, you can add and manage mail users in the Exchange admin center (EAC) or in standalone EOP PowerShell as described in this article.

## What do you need to know before you begin?

- To open the Exchange admin center (EAC), see [Exchange admin center in standalone EOP](exchange-admin-center-in-exchange-online-protection-eop.md).

- To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- When you create mail users in EOP PowerShell, you might encounter throttling. Also, the EOP PowerShell cmdlets use a batch processing method that results in a propagation delay of a few minutes before the results of the commands are visible.

- You need to be assigned permissions in Exchange Online Protection before you can do the procedures in this article. Specifically, you need the **Mail Recipient Creation** (create) and **Mail Recipients** (modify) roles, which are assigned to the **Organization Management** (global admins) and **Recipient Management** role groups by default. For more information, see [Permissions in standalone EOP](feature-permissions-in-eop.md) and [Use the EAC modify the list of members in role groups](manage-admin-role-group-permissions-in-eop.md#use-the-eac-modify-the-list-of-members-in-role-groups).

- For information about keyboard shortcuts that may apply to the procedures in this article, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the Exchange forums. Visit the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

## Use the Exchange admin center to manage mail users

### Use the EAC to create mail users

1. In the EAC, go to **Recipients** \> **Contacts**

2. Click **New** ![New icon](../../media/ITPro-EAC-AddIcon.png). In the **New mail user** page that opens, configure the following settings. Settings marked with an <sup>\*</sup> are required.

   - **First name**

   - **Initials**: The person's middle initial.

   - **Last name**

   - <sup>\*</sup>**Display name**: By default, this box shows the values from the **First name**, **Initials**, and **Last name** boxes. You can accept this value or change it. The value should be unique, and has a maximum length of 64 characters.

   - <sup>\*</sup>**Alias**: Enter a unique alias, using up to 64 characters, for the user

   - **External email address**: Enter the user's email address. The domain should be external to your cloud-based organization.

   - <sup>\*</sup>**User ID**: Enter the account that the person will use to sign in to the service. The user ID consists of a username on the left side of the at (@) symbol (@) and a domain on the right side.

   - <sup>\*</sup>**New password** and <sup>\*</sup>**Confirm password**: Enter and reenter the account password. Verify that the password complies with the password length, complexity, and history requirements of your organization.

3. When you've finished, click **Save** to create the mail user.

### Use the EAC to modify mail users

1. In the EAC, go to **Recipients** \> **Contacts**.

2. Select the mail user that you want to modify, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-AddIcon.png).

3. On the mail user properties page that opens, click one of the following tabs to view or change properties.

   When you're finished, click **Save**.

#### General

Use the **General** tab to view or change basic information about the mail user.

- **First name**

- **Initials**

- **Last name**

- **Display name**: This name appears in your organization's address book, on the To: and From: lines in email, and in the list of contacts in the EAC. This name can't contain empty spaces before or after the display name.

- **User ID**: This is the user's account in Microsoft 365. You can't modify this value here.

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

#### Organization

Use the **Organization** tab to record detailed information about the user's role in the organization.

- **Title**
- **Department**
- **Company**

### Use the EAC to remove mail users

1. In the EAC, go to **Recipients** \> **Contacts**.

2. Select the mail user that you want to remove, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

## Use PowerShell to manage mail users

### Use standalone EOP PowerShell to view mail users

To return a summary list of all mail users in standalone EOP PowerShell, run the following command:

```powershell
Get-Recipient -RecipientType MailUser -ResultSize unlimited
```

To view detailed information about a specific mail user, replace \<MailUserIdentity\> with the name, alias, or account name of the mail user, and run the following commands:

```powershell
Get-Recipient -Identity <MailUserIdentity> | Format-List
```

```powershell
Get-User -Identity <MailUserIdentity> | Format-List
```

For detailed syntax and parameter information, see [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/get-recipient) and [Get-User](https://docs.microsoft.com/powershell/module/exchange/get-user).

### Use standalone EOP PowerShell to create mail users

To create mail users in standalone EOP PowerShell, use the following syntax:

```powershell
New-EOPMailUser -Name "<UniqueName>" -MicrosoftOnlineServicesID <Account> -Password (ConvertTo-SecureString -String '<password>' -AsPlainText -Force) [-Alias <AliasValue>] [-DisplayName "<Display Name>"] [-ExternalEmailAddress <ExternalEmailAddress>] [-FirstName <Text>] [-Initials <Text>] [-LastName <Text>]
```

**Notes**:

- The _Name_ parameter is required, has a maximum length of 64 characters, and must be unique. If you don't use the _DisplayName_ parameter, the value of the _Name_ parameter is used for the display name.
- If you don't use the _Alias_ parameter, the left side of the _MicrosoftOnlineServicesID_ parameter is used for the alias.
- If you don't use the _ExternalEmailAddress_ parameter, the _MicrosoftOnlineServicesID_ value is used for the external email address.

This example creates a mail user with the following settings:

- The name is JeffreyZeng and the display name is Jeffrey Zeng.
- The first name is Jeffrey and the last name is Zeng.
- The alias is jeffreyz.
- The external email address is jzeng@tailspintoys.com.
- The account name is jeffreyz@contoso.onmicrosoft.com.
- The password is Pa$$word1.

```PowerShell
New-EOPMailUser -Name JeffreyZeng -MicrosoftOnlineServicesID jeffreyz@contoso.onmicrosoft.com -Password (ConvertTo-SecureString -String 'Pa$$word1' -AsPlainText -Force) -ExternalEmailAddress jeffreyz@tailspintoys.com -DisplayName "Jeffrey Zeng" -Alias jeffreyz -FirstName Jeffrey -LastName Zeng
```

For detailed syntax and parameter information, see [New-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/new-eopmailuser).

### Use standalone EOP PowerShell to modify mail users

To modify existing mail users in standalone EOP PowerShell, use the following syntax:

```powershell
Set-EOPMailUser -Identity <MailUserIdentity> [-Alias <Text>] [-DisplayName <Text>] [-EmailAddresses <ProxyAddressCollection>] [-MicrosoftOnlineServicesID <SmtpAddress>]
```

```powershell
Set-EOPUser -Identity <MailUserIdentity> [-City <Text>] [-Company <Text>] [-CountryOrRegion <CountryInfo>] [-Department <Text>] [-Fax <PhoneNumber>] [-FirstName <Text>] [-HomePhone <PhoneNumber>] [-Initials <Text>] [-LastName <Text>] [-MobilePhone <PhoneNumber>] [-Notes <Text>] [-Office <Text>] [-Phone <PhoneNumber>] [-PostalCode <String>] [-StateOrProvince <String>] [-StreetAddress <Tet>] [-Title <Text>] [-WebPage <Text>]
```

This example sets the external email address for Pilar Pinilla.

```PowerShell
Set-EOPMailUser -Identity "Pilar Pinilla" -EmailAddresses pilarp@tailspintoys.com
```

This example sets the Company property for all mail users to Contoso.

```PowerShell
$Recip = Get-Recipient -RecipientType MailUser -ResultSize unlimited
$Recip | foreach {Set-EOPUser -Identity $_.Alias -Company Contoso}
```

For detailed syntax and parameter information, see [Set-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/set-eopmailuser).

### Use standalone EOP PowerShell to remove mail users

To remove mail users in standalone EOP PowerShell, replace \<MailUserIdentity\> with the name, alias, or account name of the mail user, and run the following command:

```PowerShell
Remove-EOPMailUser -Identity <MailUserIdentity\>
```

This example removes the mail user for Jeffrey Zeng.

```PowerShell
Remove-EOPMailUser -Identity "Jeffrey Zeng"
```

For detailed syntax and parameter information, see [Remove-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/remove-eopmailuser).

## How do you know these procedures worked?

To verify that you've successfully created, modified, or removed mail users in standalone EOP, use any of the following procedures:

- In the EAC, go to **Recipients** \> **Contacts**. Verify that the mail user is listed (or isn't listed). Select the mail user and view the information in the Details pane, or click **Edit** ![Edit icon](../../media/ITPro-EAC-AddIcon.png) to view the settings.

- In standalone EOP PowerShell, run the following command to verify the mail user is listed (or isn't listed):

  ```powershell
  Get-Recipient -RecipientType MailUser -ResultSize unlimited
  ```

- Replace \<MailUserIdentity\> with the name, alias, or account name of the mail user, and run the following commands to verify the settings:

  ```powershell
  Get-Recipient -Identity <MailUserIdentity> | Format-List
  ```

  ```powershell
  Get-User -Identity <MailUserIdentity> | Format-List
  ```

## Use directory synchronization to manage mail users

In standalone EOP, directory synchronization is available for customers with on-premises Active Directory. You can synchronize those accounts to Azure Active Directory (Azure AD), where copies of the accounts are stored in the cloud. When you synchronize your existing user accounts to Azure Active Directory, you can view those users in the **Recipients** pane of the Exchange admin center (EAC) or in standalone EOP PowerShell.

**Notes**:

- If you use directory synchronization to manage your recipients, you can still add and manage users in the Microsoft 365 admin center, but they will not be synchronized with your on-premises Active Directory. This is because directory synchronization only syncs recipients from your on-premises Active Directory to the cloud.

- Using directory synchronization is recommended for use with the following features:

  - **Outlook Safe Sender lists and Blocked Sender lists**: When synchronized to the service, these lists will take precedence over spam filtering in the service. This lets users manage their own Safe Sender list and Blocked Sender list with individual sender and domain entries. For more information, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).

  - **Directory Based Edge Blocking (DBEB)**: For more information about DBEB, see [Use Directory Based Edge Blocking to reject messages sent to invalid recipients](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-directory-based-edge-blocking).

  - **End user access to quarantine**: To access their quarantined messages, recipients must have a valid user ID and password in the service. For more information about quarantine, see [Find and release quarantined messages as a user](find-and-release-quarantined-messages-as-a-user.md).

  - **Mail flow rules (also known as transport rules)**: When you use directory synchronization, your existing Active Directory users and groups are automatically uploaded to the cloud, and you can then create mail flow rules that target specific users and/or groups without having to manually add them in the service. Note that [dynamic distribution groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-dynamic-distribution-groups/manage-dynamic-distribution-groups) can't be synchronized via directory synchronization.

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
