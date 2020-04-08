---
title: "Manage mail users in EOP"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
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

# Manage mail users in EOP

Defining mail users is an important part of managing the Exchange Online Protection (EOP) service. There are several ways that you can manage users in EOP:

- **Use directory synchronization to manage mail users**: If your company has existing user accounts in an on-premises Active Directory environment, you can synchronize those accounts to Azure Active Directory (AD), where a copy of the accounts is stored in the cloud. When you synchronize your existing user accounts to Azure Active Directory, you can view those users in the **Recipients** pane of the Exchange admin center (EAC). Using directory synchronization is recommended.

- **Use the EAC to manage mail users**: Add and manage mail users directly in the EAC. This is the easiest way to add mail users and is useful for adding one user at a time.

- **Use PowerShell to manage mail users**: Add and manage mail users by in Exchange Online Protection PowerShell. This method is useful for adding multiple records and creating scripts.

> [!NOTE]
> You can add users in the Microsoft 365 admin center, however these users can't be used as mail recipients.

## Before you begin

- To open the Exchange admin center, see [Exchange admin center in Exchange Online Protection](exchange-admin-center-in-exchange-online-protection-eop.md).

- You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Users, Contacts, and Role Groups" entry in [Feature permissions in EOP](feature-permissions-in-eop.md).

- Be aware that when creating mail users by using Exchange Online Protection PowerShell cmdlets, you may encounter throttling.

- The PowerShell commands in this topic use a batch processing method that results in a propagation delay of a few minutes before the results of the commands are visible.

- To learn how to use Windows PowerShell to connect to Exchange Online Protection, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

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

  - **End user spam quarantine**: In order to access the end user spam quarantine, end users must have a valid Office 365 user ID and password. EOP customers protecting on-premises mailboxes must be valid email users.

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

This section provides information about adding and managing email users directly in the EAC.

### Use the EAC to add a mail user

1. Create an email user by going to go to **Recipients** \> **Contacts** in the EAC, and then clicking **New +**.

2. On the **New mail user** page, enter the user's information, including the following:

   ****

   |**Mail user property**|**Description**|
   |:-----|:-----|
   |**First name**, **Initials**, and **Last name**|Type the user's full name in the appropriate boxes.|
   |**Display name**|Type a name, using up to 64 characters. By default, this box shows the names in the **First name**, **Initials**, and **Last name** boxes if any. The display name is required.|
   |**Alias**|Type a unique alias, using up to 64 characters, for the user. The alias is required.|
   |**External email address**|Type the external email address of the user.|
   |**User id**|Type the name that the mail user will use to sign in to the service. The user sign-in name consists of a user name on the left side of the at (@) symbol and a suffix on the right side. Typically, the suffix is the domain name in which the user account resides.|
   |**New password**|Type the password that the mail user will use to sign in to the service. Make sure that the password you supply complies with the password length, complexity, and history requirements of the domain in which you're creating the user account.|
   |**Confirm password**|Retype the password to confirm it.|

3. Click **Save** to create the new email user. The new user should appear in the list of users.

### Use the EAC to edit or remove a mail user

- In the EAC, go to **Recipients** \> **Contacts**. In the list of users, click the user that you want to view or change, and then select **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.gif) to update the user settings as needed. You can change the user's name, alias, or contact information, and you can record detailed information about the user's role in the organization. You can also select a user and then choose **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif) to delete it.

## Use Exchange Online Protection PowerShell to manage mail users

This section provides information about adding and managing mail users by using remote Windows PowerShell.

### Use EOP PowerShell to add a mail user

This example uses the [New-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/new-eopmailuser) cmdlet to create a mail-enabled user account for Jeffrey Zeng in EOP with the following details:

- The first name is Jeffrey and the last name is Zeng.

- The name is Jeffrey and the display name is Jeffrey Zeng.

- The alias is jeffreyz.

- The external email address is jzeng@tailspintoys.com.

- The Office 365 sign in name is jeffreyz@contoso.onmicrosoft.com.

- The password is Pa$$word1.

```PowerShell
New-EOPMailUser -LastName Zeng -FirstName Jeffrey -DisplayName "Jeffrey Zeng" -Name Jeffrey -Alias jeffreyz -MicrosoftOnlineServicesID jeffreyz@contoso.onmicrosoft.com -ExternalEmailAddress jeffreyz@tailspintoys.com -Password (ConvertTo-SecureString -String 'Pa$$word1' -AsPlainText -Force)
```

To verify that this worked, run the following command to display information about new mail user Jeffrey Zeng:

```PowerShell
Get-User -Identity "Jeffrey Zeng"
```

For detailed syntax and parameter information, see [Get-User](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-user).

### Use EOP PowerShell to edit the properties of a mail user

Use the [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-recipient) and [Set-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/set-eopmailuser) cmdlets to view or change properties for mail users.

This example sets the external email address for Pilar Pinilla.

```PowerShell
Set-EOPMailUser -Identity "Pilar Pinilla" -EmailAddresses pilarp@tailspintoys.com
```

This example sets the Company property for all mail users to Contoso.

```PowerShell
$Recip = Get-Recipient -ResultSize unlimited -Filter {(RecipientTypeDetails -eq 'mailuser')}
$Recip | foreach {Set-EOPUser -Identity $_.Alias -Company Contoso}
```

To verify that this worked, use the [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-recipient) cmdlet to verify the changes. (Note that you can view multiple properties for multiple mail contacts.)

```PowerShell
Get-Recipient -Identity "Pilar Pinilla" | Format-List
```

In the previous example where the Company property was set to Contoso for all mail users, run the following command to verify the changes:

```PowerShell
Get-Recipient -ResultSize unlimited -Filter {(RecipientTypeDetails -eq 'mailuser')} | Format-List Name,Company
```

> [!IMPORTANT]
> This cmdlet uses a batch processing method that results in a propagation delay of a few minutes before the results of the cmdlet are visible.

### Use EOP PowerShell to remove a mail user

This example uses the [Remove-EOPMailUser](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/remove-eopmailuser) cmdlet to delete user Jeffrey Zeng:

```PowerShell
Remove-EOPMailUser -Identity Jeffrey
```
To verify that this worked, run the [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-recipient) cmdlet to verify that the mail user no longer exists.

```PowerShell
Get-Recipient Jeffrey | Format-List
```
