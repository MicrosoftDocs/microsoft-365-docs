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
description: "Defining mail users is an important part of managing the Exchange Online Protection (EOP) service."
---

# Manage mail users in standalone EOP

In standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, creating mail users is an important part of managing users in EOP. There are several ways that you can manage users in EOP:

- **Use directory synchronization to manage mail users (Recommended)**: If your company has existing user accounts in an on-premises Active Directory environment, you can synchronize those accounts to Azure Active Directory (Azure AD), where a copy of the accounts is stored in the cloud. When you synchronize your existing user accounts to Azure Active Directory, you can view those users in the **Recipients** pane of the Exchange admin center (EAC). Using directory synchronization is recommended.

- **Use the EAC to manage mail users**: Add and manage mail users directly in the EAC. This is the easiest way to add mail users and is useful for adding one user at a time.

- **Use PowerShell to manage mail users**: Add and manage mail users by in Exchange Online Protection PowerShell. This method is useful for adding multiple records and creating scripts.

> [!NOTE]
> You can add users in the Microsoft 365 admin center, but these users can't be used as mail recipients.

## Before you begin

- To open the Exchange admin center, see [Exchange admin center in Exchange Online Protection](exchange-admin-center-in-exchange-online-protection-eop.md).

- To connect to Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Users, Contacts, and Role Groups" entry in [Feature permissions in EOP](feature-permissions-in-eop.md).

- Be aware that when creating mail users by using Exchange Online Protection PowerShell cmdlets, you may encounter throttling.

- The PowerShell commands in this topic use a batch processing method that results in a propagation delay of a few minutes before the results of the commands are visible.



- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

## Use directory synchronization to manage mail users

This section provides information about managing email users by using directory synchronization.

**Notes**:

- If you use directory synchronization to manage your recipients, you can still add and manage users in the Microsoft 365 admin center, but they will not be synchronized with your on-premises Active Directory. This is because directory synchronization only syncs recipients **from** your on-premises Active Directory **to** the cloud.

- Directory synchronization is recommended for use with the following features:

  - **Outlook safe sender and blocked sender lists**: When synchronized to the service, these lists will take precedence over spam filtering in the service. This lets users manage their own safe sender and blocked sender lists on a per-user or per-domain basis.

  - **Directory Based Edge Blocking (DBEB)**: For more information about DBEB, see [Use Directory Based Edge Blocking to Reject Messages Sent to Invalid Recipients](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-directory-based-edge-blocking).

  - **End user spam quarantine**: In order to access the end user spam quarantine, end users must have a valid user ID and password. EOP customers protecting on-premises mailboxes must be valid email users.

  - **Mail flow rules**: When you use directory synchronization, your existing Active Directory users and groups are automatically uploaded to the cloud, and you can then create mail flow rules (also known as transport rules) that target specific users and/or groups without having to manually add them via the the EAC or Exchange Online Protection PowerShell. Note that [dynamic distribution groups](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-dynamic-distribution-groups/manage-dynamic-distribution-groups) can't be synchronized via directory synchronization.

Get the necessary permissions and prepare for directory synchronization, as described in [What is hybrid identity with Azure Active Directory?](https://docs.microsoft.com/azure/active-directory/hybrid/whatis-hybrid-identity).

### To synchronize user directories with Azure Active Directory Connect (AAD Connect)

To synchronize users to Azure Active Directory (AAD) you first have to **activate directory synchronization**, as described in [Azure AD Connect sync: Understand and customize synchronization](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-sync-whatis).

Next is the installation and configuration of an on-premises computer to run AAD Connect (if you don't already have one -- something worth checking ahead of time). The [Setting up AAD Connect, the express way](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-express) topic tells you how to setup and synchronize your accounts from on-premises to Azure AD with AAD Connect.

But before you do that work, make certain [you meet prerequisites](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-prerequisites), and [choose your installation type](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-select-installation). The earlier link is to a short article for express installs. You can also find articles on [custom installations](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-custom), or [pass-through authentication](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-pta-quick-start) if they're needed.

> [!IMPORTANT]
> When you finish the Azure Active Directory Sync Tool Configuration Wizard, the **MSOL_AD_SYNC** account is created in your Active Directory forest. This account is used to read and synchronize your on-premises Active Directory information. In order for directory synchronization to work correctly, make sure that TCP 443 on your local directory synchronization server is open.

After configuring your sync, be sure to verify that EOP is synchronizing correctly. In the EAC, go to **Recipients** \> **Contacts** and view that the list of users was correctly synchronized from your on-premises environment.

## Use the EAC to manage mail users

### Use the EAC to create mail users

1. In the EAC, go to **Recipients** \> **Contacts**.

2. Click **New** ![New icon](../../media/ITPro-EAC-AddIcon.png) and then select **Mail user**.

3. In the **New mail user** page that opens, configure the following settings. Settings marked with an <sup>\*</sup> are required.

   - **First name**

   - **Initials**: The person's middle initial.

   - **Last name**

   - <sup>\*</sup>**Display name**: By default, this box shows the values from the **First name**, **Initials**, and **Last name** boxes. You can accept this value or change it. The value should be unique, and has a maximum length of 64 characters.

   - <sup>\*</sup>**Alias**: Enter a unique alias, using up to 64 characters, for the user

   - **External email address**: Enter the user's email address. The domain should be external to your EOP organization.

   - <sup>\*</sup>**User ID**: Enter the account that the person will use to sign in to the service. The user user ID consists of a username on the left side of the at (@) symbol (@) and a domain on the right side.

   - <sup>\*</sup>**New password** and <sup>\*</sup>**Confirm password**: Enter and reenter the account password. Verify that the password complies with the password length, complexity, and history requirements of your domain.

4. When you're finished, click **Save**.

## Use the EAC to modify mail users

1. In the EAC, go to **Recipients** \> **Contacts**.

2. Select the mail user that you want to modify, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png).

3. In the mail user property page that opens, configure the following settings:

   - **General** tab:

     - **First name**
     - **Initials**
     - **Last name**
     - **Display name**
     - **User ID**: You can't modify this value here.
     - **Hide from address lists**
     - **More options** \> **Custom attributes**: Click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png) in the **Custom attributes** pages that opens, enter values for Custom Attribute 1 through Custom Attribute 15. When you're finished, click **OK**.

   - **Contact information** tab:

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

   - **Organization** tab:

     - **Title**
     - **Department**
     - **Company**
     - **Manager**: Click **Browse** and then find and select the person's manager. When you're finished, click **OK**.
     - **Direct reports**: You can't modify this box. If you've specified a manager for the user, that user appears as a direct report in the details of the manager. For example, Kari manages Chris and Kate, so Kari is specified in the **Manager** box for Chris and Kate, and Chris and Kate appear in the **Direct reports** box in the properties of Kari's account.

   - **Email addresses** tab: This includes the mail user's primary SMTP address and any associated proxy addresses. The primary SMTP address (also known as the reply address) is displayed in bold text in the address list, with the uppercase SMTP value in the Type column. By default, after you create a mail user, the primary SMTP address is the external email address.

     - **Add**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png). In the **New email address** page that appears, configure the following settings:

       - **Email address type**: Verify **SMTP** is selected.
       - **Email address**: Enter the email address to add.
       - **Make this the reply address**: For mail users, you shouldn't need to select this option (the external email address is the reply address).

       When you're finished, click **OK**.

     - **Edit**: Select the email address that you want to modify, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png). In the **Email address** page that appears, configure the following settings:

       - **Email address**: Modify the existing email address.
       - **Make this the reply address**: This setting only appears if the email address you selected isn't already the reply address.

       When you're finished, click **OK**.

     - **Remove**: Select the email address that you want to remove, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif). You can't remove the reply address.

   - **Mail flow settings** tab: In the **Message delivery restrictions** section, click **View details**. In the **Message delivery restrictions** page that opens, configure the following settings:

     - **Accept messages from**:

       - **All senders**
       - **Only senders in the following list**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png). Select a recipient, click **Add**, and repeat as many times as necessary. When you're finished, click **OK**.

       - **Require that all senders are authenticated**: Select this option to prevent anonymous users (external users) from sending messages to the user.

     - **Reject messages from**:

       - **No senders**
       - **Senders in the following list**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png). Select a recipient, click **Add**, and repeat as many times as necessary. When you're finished, click **OK**.

     When you're finished, click **OK**.

   - **Member of**: View a list of the distribution groups or mail-enabled security groups that the user belongs to. You can't change membership information on this page. Note that dynamic distribution groups aren't displayed on this page because their membership is calculated each time they're used.

   - **MailTip**: Add an alert for potential issues before a user sends messages to this recipient. The is text that's displayed in the InfoBar when this recipient is added to the To, Cc, or Bcc lines of a new email message.

4. When you're finished, click **Save**.

### Use the EAC to remove mail users

1. In the EAC, go to **Recipients** \> **Contacts**.

2. Select the mail user that you want to remove, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

## Use Exchange Online Protection PowerShell to manage mail users

### Use PowerShell to create mail users

This example creates a mail user in EOP for Jeffrey Zeng with the following settings:

- The first name is Jeffrey and the last name is Zeng.

- The name is Jeffrey and the display name is Jeffrey Zeng.

- The alias is jeffreyz.

- The external email address is jzeng@tailspintoys.com.

- The Microsoft 365 account is jeffreyz@contoso.onmicrosoft.com.

- The password is Pa$$word1.

```PowerShell
New-EOPMailUser -LastName Zeng -FirstName Jeffrey -DisplayName "Jeffrey Zeng" -Name Jeffrey -Alias jeffreyz -MicrosoftOnlineServicesID jeffreyz@contoso.onmicrosoft.com -ExternalEmailAddress jeffreyz@tailspintoys.com -Password (ConvertTo-SecureString -String 'Pa$$word1' -AsPlainText -Force)
```

For detailed syntax and parameter information, see [New-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/new-eopmailuser).

To verify that this worked, run the following command to display information about new mail user Jeffrey Zeng:

```PowerShell
Get-User -Identity "Jeffrey Zeng"
```

### Use PowerShell to modify mail users

> [!IMPORTANT]
> This cmdlet uses a batch processing method that results in a propagation delay of a few minutes before the results of the command are visible.

This example sets the external email address for Pilar Pinilla.

```PowerShell
Set-EOPMailUser -Identity "Pilar Pinilla" -EmailAddresses pilarp@tailspintoys.com
```

This example sets the Company property for all mail users to Contoso.

```PowerShell
$Recip = Get-Recipient -ResultSize unlimited -Filter {(RecipientTypeDetails -eq 'mailuser')}
$Recip | foreach {Set-EOPUser -Identity $_.Alias -Company Contoso}
```

For detailed syntax and parameter information, see [Set-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/set-eopmailuser) and [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-recipient).

To verify that this worked, use the [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-recipient) cmdlet to verify the changes. (Note that you can view multiple properties for multiple mail contacts.)

```PowerShell
Get-Recipient -Identity "Pilar Pinilla" | Format-List
```

In the previous example where the Company property was set to Contoso for all mail users, run the following command to verify the changes:

```PowerShell
Get-Recipient -ResultSize unlimited -Filter {(RecipientTypeDetails -eq 'mailuser')} | Format-List Name,Company
```

### Use PowerShell to remove mail users

This example deletes the mail user for Jeffrey Zeng:

```PowerShell
Remove-EOPMailUser -Identity "Jeffrey Zeng"
```

For detailed syntax and parameter information, see [Remove-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/remove-eopmailuser).

To verify that this worked, run the [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-recipient) cmdlet to verify that the mail user no longer exists.

```PowerShell
Get-Recipient Jeffrey | Format-List
```
