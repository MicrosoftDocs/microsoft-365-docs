---
title: "Administering Exchange Online mailboxes in a multi-geo environment"
ms.reviewer: adwood
ms.date: 6/29/2023
ms.author: chrisda
author: chrisda
manager: serdars
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
f1.keywords:
- NOCSH
ms.custom: seo-marvel-mar2020
ms.localizationpriority: medium
description: Learn how to administer Exchange Online multi-geo settings in your Microsoft 365 environment with PowerShell.
---

# Administering Exchange Online mailboxes in a multi-geo environment

Exchange Online PowerShell is required to view and configure multi geo properties in your Microsoft 365 environment. To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

You need the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) to see the **PreferredDataLocation** property on user objects. User objects that are synchronized via Azure Active Direct Connect into Microsoft Azure Active Directory (Azure AD) have their **PreferredDataLocation** value directly. Admins can manually modify cloud-only user objects via Microsoft Graph PowerShell as described in this article. To connect to Microsoft Graph PowerShell, see [Sign in to Microsoft Graph PowerShell](/powershell/microsoftgraph/get-started#sign-in).

In Exchange Online multi-geo environments, you don't need to do any manual steps to add geo locations to your tenant. After you receive the Message Center post that says multi-geo is ready for Exchange Online, all available geo locations are ready and configured for you to use.

## Connect directly to a geo location using Exchange Online PowerShell

Typically, Exchange Online PowerShell connects to the central geo location. But, you can also connect directly to satellite geo locations. Because of performance improvements, we recommend connecting directly to the satellite geo location when you only manage users in that location.

The requirements for installing and using the Exchange Online PowerShell module are described in [Install and maintain the Exchange Online PowerShell module](/powershell/exchange/exchange-online-powershell-v2#install-and-maintain-the-exchange-online-powershell-module).

To connect Exchange Online PowerShell to a specific geo location, the _ConnectionUri_ parameter is different than the regular connection instructions. The rest of the commands and values are the same.

Specifically, you need to add the `?email=<emailaddress>` value to end of the _ConnectionUri_ value. `<emailaddress>` is the email address of **any** mailbox in the target geo location. Your permissions to that mailbox or the relationship to your credentials aren't a factor; the email address simply tells Exchange Online PowerShell where to connect.

Microsoft 365 or Microsoft 365 GCC customers typically don't need to use the _ConnectionUri_ parameter to connect to Exchange Online PowerShell. But, to connect to a specific geo location, you do need to use _ConnectionUri_ parameter so you can use `?email=<emailaddress>` in the value.

### Connect to a geo location in Exchange Online PowerShell

The following connection instructions work for accounts that are or aren't configured for multi-factor authentication (MFA).

1. In a PowerShell window, load the Exchange Online PowerShell module by running the following command:

   ```powershell
   Import-Module ExchangeOnlineManagement
   ```

2. In the following example, admin@contoso.onmicrosoft.com is the admin account, and the target geo location is where the mailbox olga@contoso.onmicrosoft.com resides.

   ```powershell
   Connect-ExchangeOnline -UserPrincipalName admin@contoso.onmicrosoft.com -ConnectionUri https://outlook.office365.com/powershell?email=olga@contoso.onmicrosoft.com
   ```

3. Enter the password for the admin@contoso.onmicrosoft.com in the prompt that appears. If the account is configured for MFA, you also need to enter the security code.

## View the available geo locations that are configured in your Exchange Online organization

To see the list of configured geo locations in Microsoft 365 Multi-Geo, run the following command in Exchange Online PowerShell:

```powershell
Get-OrganizationConfig | Select -ExpandProperty AllowedMailboxRegions | Format-Table
```

## View the central geo location for your Exchange Online organization

To view your tenant's central geo location, run the following command in Exchange Online PowerShell:

```powershell
Get-OrganizationConfig | Select DefaultMailboxRegion
```

## Find the geo location of a mailbox

The **Get-Mailbox** cmdlet in Exchange Online PowerShell displays the following multi-geo related properties on mailboxes:

- **Database**: The first three letters of the database name correspond to the geo code, which tells you where the mailbox is currently located. For Online Archive Mailboxes the **ArchiveDatabase** property should be used.
- **MailboxRegion**: Specifies the geo location code that was set by the admin (synchronized from **PreferredDataLocation** in Azure AD).
- **MailboxRegionLastUpdateTime**: Indicates when MailboxRegion was last updated (either automatically or manually).

To see these properties for a mailbox, use the following syntax:

```powershell
Get-Mailbox -Identity <MailboxIdentity> | Format-List Database,MailboxRegion*
```

For example, to see the geo location information for the mailbox chris@contoso.onmicrosoft.com, run the following command:

```powershell
Get-Mailbox -Identity chris@contoso.onmicrosoft.com | Format-List Database, MailboxRegion*
```

The output of the command looks like this:

```powershell
Database                    : EURPR03DG077-db007
MailboxRegion               : EUR
MailboxRegionLastUpdateTime : 2/6/2023 8:21:01 PM
```

> [!NOTE]
> If the geo location code in the database name doesn't match **MailboxRegion** value, the mailbox is automatically put into a relocation queue and moved to the geo location specified by the **MailboxRegion** value (Exchange Online looks for a mismatch between these property values).

## Move an existing cloud-only mailbox to a specific geo location

A cloud-only user (a user created directly in Azure AD) is a user that's not synchronized to the tenant via Azure AD Connect. Use the **Get-MgUser** and **Set-MgUser** cmdlets in Microsoft Graph PowerShell to view or specify the geo location where a cloud-only user's mailbox is stored.

To view the **PreferredDataLocation** value for users, run the following command in Microsoft Graph PowerShell:

```powershell
Get-MgUser -All -Property PreferredDataLocation,ID,UserPrincipalName| Format-Table PreferredDataLocation,ID,UserPrincipalName -AutoSize
```

Use the ID value from the previous command to modify the **PreferredDataLocation** value for a cloud-only user object:

```powershell
Update-MgUser -UserId <ID> -PreferredDataLocation <GeoLocationCode>
```

For example, to set the **PreferredDataLocation** value to the European Union (EUR) geo for the specified ID, run the following command:

```powershell
Update-MgUser -UserId dba12422-ac75-486a-a960-cd7cb3f6963f -PreferredDataLocation EUR
```

For detailed syntax and parameter information, see [Get-MgUser](/powershell/module/microsoft.graph.users/get-mguser) and [Update-MgUser](/powershell/module/microsoft.graph.users/update-mguser).

> [!NOTE]
>
> - As mentioned previously, you can't use this procedure for synchronized user objects from on-premises Active Directory. You need to change the **PreferredDataLocation** value in Active Directory and synchronize it using Azure AD Connect. For more information, see [Azure Active Directory Connect sync: Configure preferred data location for Microsoft 365 resources](/azure/active-directory/connect/active-directory-aadconnectsync-feature-preferreddatalocation).
>
> - How long it takes to relocate a mailbox to a new geo location depends on several factors:
>   - The size and type of mailbox.
>   - The number of mailboxes being moved.
>   - The availability of move resources.

### Move an inactive mailbox to a specific geo

> [!NOTE]
> When you move an inactive mailbox to a different geo location, you might affect content search results or the ability to search the mailbox from the former geo location. For more information, see [Searching and exporting content in Multi-Geo environments](../compliance/set-up-compliance-boundaries.md#searching-and-exporting-content-in-multi-geo-environments).

You can't move inactive mailboxes that are preserved for compliance purposes (for example, mailboxes on Litigation Hold) by changing their **PreferredDataLocation** value. To move an inactive mailbox to a different geo, do the following steps:

1. Recover the inactive mailbox. For instructions, see [Recover an inactive mailbox](../compliance/recover-an-inactive-mailbox.md).

2. Prevent the Managed Folder Assistant from processing the recovered mailbox by replacing \<MailboxIdentity\> with the name, alias, account, or email address of the mailbox and running the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

    ```powershell
    Set-Mailbox <MailboxIdentity> -ElcProcessingDisabled $true
    ```

3. Assign an **Exchange Online Plan 2** license to the recovered mailbox. This step is required to place the mailbox back on Litigation Hold. For instructions, see [Assign licenses to users](../admin/manage/assign-licenses-to-users.md).

4. Configure the **PreferredDataLocation** value on the mailbox as described in the previous section.

5. After you've confirmed that the mailbox has moved to the new geo location, place the recovered mailbox back on Litigation Hold. For instructions, see [Place a mailbox on Litigation Hold](../compliance/create-a-litigation-hold.md#place-a-mailbox-on-litigation-hold).

6. After verifying that the Litigation Hold is in place, allow the Managed Folder Assistant to process the mailbox again by replacing \<MailboxIdentity\> with the name, alias, account, or email address of the mailbox and running the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

    ```powershell
    Set-Mailbox <MailboxIdentity> -ElcProcessingDisabled $false
    ```

7. Make the mailbox inactive again by removing the user account that's associated with the mailbox. For instructions, see [Delete a user from your organization](../admin/add-users/delete-a-user.md). This step also releases the Exchange Online Plan 2 license for other uses.

## Create new cloud mailboxes in a specific geo location

To create a new mailbox in a specific geo location, you need to do either of these steps:

- Configure the **PreferredDataLocation** value as described in the previous [Move an existing cloud-only mailbox to a specific geo location](#move-an-existing-cloud-only-mailbox-to-a-specific-geo-location) section *before* you create the mailbox in Exchange Online. For example, configure the **PreferredDataLocation** value on a user before you assign a license.
- Assign a license at the same time you set the **PreferredDataLocation** value.

To create a new cloud-only licensed user (not Azure AD Connect synchronized) in a specific geo location, use the following syntax in Microsoft Graph PowerShell:

```powershell
$PasswordProfile = @{Password = '<Password>'}

New-MgUser -DisplayName "<Display Name>" -AccountEnabled -MailNickName <Alias> -UserPrincipalName <Alias>@<domain> -PasswordProfile $PasswordProfile [-GivenName <FirstName>] [-SurName <LastName>] -PreferredDataLocation <GeoLocationCode>
```

This example creates a new user account for Elizabeth Brunner with the following values:

- Display name: Elizabeth Brunner
- Alias: ebrunner
- User principal name: ebrunner@contoso.onmicrosoft.com
- Password: xWwvJ]6NMw+bWH-d
- First name: Elizabeth
- Last name: Brunner
- Location: Australia (AUS)

```powershell
$PasswordProfile = @{Password = 'xWwvJ]6NMw+bWH-d'}

New-MgUser -DisplayName "Elizabeth Brunner" -AccountEnabled -MailNickName ebrunner -UserPrincipalName ebrunner@contoso.onmicrosoft.com -PasswordProfile $PasswordProfile -GivenName Elizabeth -SurName Brunner -PreferredDataLocation AUS
```

For detailed syntax and parameter information, see [New-MgUser](/powershell/module/microsoft.graph.users/new-mguser).

> [!NOTE]
> If you're enabling a mailbox in Exchange Online PowerShell and need the mailbox to be created directly in the geo location that's specified in **PreferredDataLocation**, you need to use an Exchange Online cmdlet such as **Enable-Mailbox** or **New-Mailbox** directly in the cloud service. If you use the **Enable-RemoteMailbox** cmdlet in on-premises Exchange PowerShell, the mailbox is created in the central geo location.

## Onboard existing on-premises mailboxes in a specific geo location

You can use the standard onboarding tools and processes to migrate a mailbox from an on-premises Exchange organization to Exchange Online, including the [Migration dashboard in the EAC](https://support.office.com/article/d164b35c-f624-4f83-ac58-b7cae96ab331), and the [New-MigrationBatch](/powershell/module/exchange/new-migrationbatch) cmdlet in Exchange Online PowerShell.

The first step is to verify a user object exists for each mailbox to be onboarded, and verify the correct **PreferredDataLocation** value is configured in Azure AD. The onboarding tools respect the **PreferredDataLocation** value and migrate the mailboxes directly to the specified geo location.

Or, you can use the following steps to onboard mailboxes directly in a specific geo location using the [New-MoveRequest](/powershell/module/exchange/new-moverequest) cmdlet in Exchange Online PowerShell.

1. Verify the user object exists for each mailbox to be onboarded and that **PreferredDataLocation** is set to the desired value in Azure AD. The value of **PreferredDataLocation** is synchronized to the **MailboxRegion** attribute of the corresponding mail user object in Exchange Online.

2. Connect directly to the specific satellite geo location using the connection instructions from earlier in this article.

3. In Exchange Online PowerShell, store the on-premises administrator credentials that's used to perform a mailbox migration in a variable by running the following command:

   ```powershell
   $RC = Get-Credential
   ```

4. In Exchange Online PowerShell, create a new **New-MoveRequest** similar to the following example:

   ```powershell
   New-MoveRequest -Remote -RemoteHostName mail.contoso.com -RemoteCredential $RC -Identity user@contoso.com -TargetDeliveryDomain <YourAppropriateDomain>
   ```

5. Repeat step #4 for every mailbox you need to migrate from on-premises Exchange to the satellite geo location you're currently connected to.

6. If you need to migrate additional mailboxes to different satellite geo locations, repeat steps 2 through 4 for each specific location.

## Multi-geo reporting

> [!NOTE]
> The multi-geo reporting feature is currently in Preview, is not available in all organizations, and is subject to change.

**Multi-Geo Usage Reports** in the Microsoft 365 admin center displays the user count by geo location. The report displays user distribution for the current month and provides historical data for the past six months.

## See also

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
