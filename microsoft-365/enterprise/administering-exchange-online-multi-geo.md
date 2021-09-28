---
title: "Administering Exchange Online mailboxes in a multi-geo environment"
ms.reviewer: adwood
ms.author: chrisda
author: chrisda
manager: serdars
audience: ITPro
ms.topic: article
ms.service: o365-solutions
f1.keywords:
- NOCSH
ms.custom: seo-marvel-mar2020
localization_priority: normal
description: Learn how to administer Exchange Online multi-geo settings in your Microsoft 365 environment with PowerShell.
---

# Administering Exchange Online mailboxes in a multi-geo environment

Exchange Online PowerShell is required to view and configure multi geo properties in your Microsoft 365 environment. To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

You need the [Microsoft Azure Active Directory PowerShell Module](https://social.technet.microsoft.com/wiki/contents/articles/28552.microsoft-azure-active-directory-powershell-module-version-release-history.aspx) v1.1.166.0 or later in v1.x to see the **PreferredDataLocation** property on user objects. User objects synchronized via AAD Connect into AAD cannot have their **PreferredDataLocation** value directly modified via AAD PowerShell. Cloud-only user objects can be modified via AAD PowerShell. To connect to Azure AD PowerShell, see [Connect to PowerShell](connect-to-microsoft-365-powershell.md).

In Exchange Online multi-geo environments, you don't need to do any manual steps to add geos to your tenant. After you receive the Message Center post that says multi-geo is ready for Exchange Online, all available geos will be ready and configured for you to use.

## Connect directly to a geo location using Exchange Online PowerShell

Typically, Exchange Online PowerShell will connect to the central geo location. But, you can also connect directly to satellite geo locations. Because of performance improvements, we recommend connecting directly to the satellite geo location when you only manage users in that location.

The requirements for installing and using the EXO V2 module are described in [Install and maintain the EXO V2 module](/powershell/exchange/exchange-online-powershell-v2#install-and-maintain-the-exo-v2-module).

To connect Exchange Online PowerShell to a specific geo location, the *ConnectionUri* parameter is different than the regular connection instructions. The rest of the commands and values are the same.

Specifically, you need to add the `?email=<emailaddress>` value to end of the _ConnectionUri_ value. `<emailaddress>` is the email address of **any** mailbox in the target geo location. Your permissions to that mailbox or the relationship to your credentials are not a factor; the email address simply tells Exchange Online PowerShell where to connect.

Microsoft 365 or Microsoft 365 GCC customers typically don't need to use the _ConnectionUri_ parameter to connect to Exchange Online PowerShell. But, to connect to a specific geo location, you do need to use _ConnectionUri_ parameter so you can use `?email=<emailaddress>` in the value.

### Connect to a geo location in Exchange Online PowerShell

The following connection instructions work for accounts that are or aren't configured for multi-factor authentication (MFA).

1. In a Windows PowerShell window, load the EXO V2 module by running the following command:

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

- **Database**: The first 3 letters of the database name correspond to the geo code, which tells you where the mailbox is currently located. For Online Archive Mailboxes the **ArchiveDatabase** property should be used.

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
MailboxRegionLastUpdateTime : 2/6/2018 8:21:01 PM
```

> [!NOTE]
> If the geo location code in the database name doesn't match **MailboxRegion** value, the mailbox will be automatically be put into a relocation queue and moved to the geo location specified by the **MailboxRegion** value (Exchange Online looks for a mismatch between these property values).

## Move an existing cloud-only mailbox to a specific geo location

A cloud-only user is a user not synchronized to the tenant via AAD Connect. This user was created directly in Azure AD. Use the **Get-MsolUser** and **Set-MsolUser** cmdlets in the Azure AD Module for Windows PowerShell to view or specify the geo location where a cloud-only user's mailbox will be stored.

To view the **PreferredDataLocation** value for a user, use this syntax in Azure AD PowerShell:

```powershell
Get-MsolUser -UserPrincipalName <UserPrincipalName> | Format-List UserPrincipalName,PreferredDataLocation
```

For example, to see the **PreferredDataLocation** value for the user michelle@contoso.onmicrosoft.com, run the following command:

```powershell
Get-MsolUser -UserPrincipalName michelle@contoso.onmicrosoft.com | Format-List
```

To modify the **PreferredDataLocation** value for a cloud-only user object, use the following syntax in Azure AD PowerShell:

```powershell
Set-MsolUser -UserPrincipalName <UserPrincipalName> -PreferredDataLocation <GeoLocationCode>
```

For example, to set the **PreferredDataLocation** value to the European Union (EUR) geo for the user michelle@contoso.onmicrosoft.com, run the following command:

```powershell
Set-MsolUser -UserPrincipalName michelle@contoso.onmicrosoft.com -PreferredDataLocation EUR
```

> [!NOTE]
>
> - As mentioned previously, you cannot use this procedure for synchronized user objects from on-premises Active Directory. You need to change the **PreferredDataLocation** value in Active Directory and synchronize it using AAD Connect. For more information, see [Azure Active Directory Connect sync: Configure preferred data location for Microsoft 365 resources](/azure/active-directory/connect/active-directory-aadconnectsync-feature-preferreddatalocation).
>
> - How long it takes to relocate a mailbox to a new geo location depends on several factors:
>
>   - The size and type of mailbox.
>   - The number of mailboxes being moved.
>   - The availability of move resources.

### Move an inactive mailbox to a specific geo

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

**Note**: When you move an inactive mailbox to a different geo location, you might affect content search results or the ability to search the mailbox from the former geo location. For more information, see [Searching and exporting content in Multi-Geo environments](../compliance/set-up-compliance-boundaries.md#searching-and-exporting-content-in-multi-geo-environments).

## Create new cloud mailboxes in a specific geo location

To create a new mailbox in a specific geo location, you need to do either of these steps:

- Configure the **PreferredDataLocation** value as described in the previous [Move an existing cloud-only mailbox to a specific geo location](#move-an-existing-cloud-only-mailbox-to-a-specific-geo-location) section *before* you create the mailbox in Exchange Online. For example, configure the **PreferredDataLocation** value on a user before you assign a license.

- Assign a license at the same time you set the **PreferredDataLocation** value.

To create a new cloud-only licensed user (not AAD Connect synchronized) in a specific geo location, use the following syntax in Azure AD PowerShell:

```powershell
New-MsolUser -UserPrincipalName <UserPrincipalName> -DisplayName "<Display Name>" [-FirstName <FirstName>] [-LastName <LastName>] [-Password <Password>] [-LicenseAssignment <AccountSkuId>] -PreferredDataLocation <GeoLocationCode>
```

This example create a new user account for Elizabeth Brunner with the following values:

- User principal name: ebrunner@contoso.onmicrosoft.com
- First name: Elizabeth
- Last name: Brunner
- Display name: Elizabeth Brunner
- Password: randomly-generated and shown in the results of the command (because we're not using the *Password* parameter)
- License: `contoso:ENTERPRISEPREMIUM` (E5)
- Location: Australia (AUS)

```powershell
New-MsolUser -UserPrincipalName ebrunner@contoso.onmicrosoft.com -DisplayName "Elizabeth Brunner" -FirstName Elizabeth -LastName Brunner -LicenseAssignment contoso:ENTERPRISEPREMIUM -PreferredDataLocation AUS
```

For more information about creating new user accounts and finding LicenseAssignment values in Azure AD PowerShell, see [Create user accounts with PowerShell](create-user-accounts-with-microsoft-365-powershell.md) and [View licenses and services with PowerShell](view-licenses-and-services-with-microsoft-365-powershell.md).

> [!NOTE]
> If you are using Exchange Online PowerShell to enable a mailbox and need the mailbox to be created directly in the geo location that's specified in **PreferredDataLocation**, you need to use an Exchange Online cmdlet such as **Enable-Mailbox** or **New-Mailbox** directly against the cloud service. If you use the **Enable-RemoteMailbox** cmdlet in on-premises Exchange PowerShell, the mailbox will be created in the central geo location.

## Onboard existing on-premises mailboxes in a specific geo location

You can use the standard onboarding tools and processes to migrate a mailbox from an on-premises Exchange organization to Exchange Online, including the [Migration dashboard in the EAC](https://support.office.com/article/d164b35c-f624-4f83-ac58-b7cae96ab331), and the [New-MigrationBatch](/powershell/module/exchange/new-migrationbatch) cmdlet in Exchange Online PowerShell.

The first step is to verify a user object exists for each mailbox to be onboarded, and verify the correct **PreferredDataLocation** value is configured in Azure AD. The onboarding tools will respect the **PreferredDataLocation** value and will migrate the mailboxes directly to the specified geo location.

Or, you can use the following steps to onboard mailboxes directly in a specific geo location using the [New-MoveRequest](/powershell/module/exchange/new-moverequest) cmdlet in Exchange Online PowerShell.

1. Verify the user object exists for each mailbox to be onboarded and that **PreferredDataLocation** is set to the desired value in Azure AD. The value of **PreferredDataLocation** will be synchronized to the **MailboxRegion** attribute of the corresponding mail user object in Exchange Online.

2. Connect directly to the specific satellite geo location using the connection instructions from earlier in this topic.

3. In Exchange Online PowerShell, store the on-premises administrator credentials that's used to perform a mailbox migration in a variable by running the following command:

   ```powershell
   $RC = Get-Credential
   ```

4. In Exchange Online PowerShell, create a new **New-MoveRequest** similar to the following example:

   ```powershell
   New-MoveRequest -Remote -RemoteHostName mail.contoso.com -RemoteCredential $RC -Identity user@contoso.com -TargetDeliveryDomain <YourAppropriateDomain>
   ```

5. Repeat step #4 for every mailbox you need to migrate from on-premises Exchange to the satellite geo location you are currently connected to.

6. If you need to migrate additional mailboxes to different satellite geo locations, repeat steps 2 through 4 for each specific location.

## Multi-geo reporting

**Multi-Geo Usage Reports** in the Microsoft 365 admin center displays the user count by geo location. The report displays user distribution for the current month and provides historical data for the past 6 months.

## See also

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)