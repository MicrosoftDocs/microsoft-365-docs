---
title: Data Residency for Exchange Online
description: Learn about Data Residency for Exchange Online
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.reviewer: dmwmsft
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# Data Residency for Exchange Online

## Data Residency Commitments Available

### Product Terms

Required Conditions:

Tenant has a sign up country/region included in Local Region Geography, the European Union or the United States.

_For current language please refer to the Privacy and Security Product Terms <a href="https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all" target="_blank">**webpage**</a> and view the section titled "Location of Customer Data at Rest for Core Online Services"._

**Commitment:**

>[!NOTE]
>If Customer provisions its tenant in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, United Arab Emirates, United Kingdom, or United States, Microsoft will store the following Customer Data at rest only within that Geo: Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments)

### Advanced Data Residency add-on

Required Conditions:

1. Tenant has a sign-up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. Tenant has a valid Advanced Data Residency subscription for all users in the tenant
1. The Exchange Online subscription customer data is provisioned in Local Geography or Expanded Local Geography

**Commitment:**

Please refer to the [ADR commitment page](m365-dr-commitments.md#exchange-online) to understand the specific commitments provided via Product Terms. Examples of the committed data include: all types of mailboxes, including user mailboxes, resource mailboxes, and archive mailboxes.

### Multi-Geo add-on

Required Conditions:

1. Tenants have a valid Multi-Geo subscription that covers all users assigned to a _Satellite Geography_.
1. Customer must have an active Enterprise Agreement.
1. Total purchased Multi-Geo units must be greater than 5% of the total eligible seats in the tenant.

**Commitment:**

Customers may assign a Satellite Geography supported by Multi-Geo to a supported mailbox type. See the [Microsoft 365 Multi-Geo availability section](microsoft-365-multi-geo.md#microsoft-365-multi-geo-availability) of the Microsoft 365 Multi-Geo page for details. The Data at Rest for Office 365 Services for the mailbox as defined by the product terms shall be stored in the assigned Satellite Geography. Supported mailbox types includes Exchange Online user primary and archive mailboxes, resource mailboxes, Microsoft 365 Group mailboxes, and shared mailboxes.

## Multi-Geo Capabilities in Exchange Online

Customers may assign a _Satellite Geography_ supported by Multi-Geo to a user. See the [Microsoft 365 Multi-Geo availability section](microsoft-365-multi-geo.md#microsoft-365-multi-geo-availability) of the Microsoft 365 Multi-Geo page for details. The user's Data at Rest for Office 365 Services as defined by the product terms shall be stored in the assigned _Satellite Geography_. This includes all types of Exchange Online mailboxes, including user mailboxes, resource mailboxes, Microsoft 365 Group mailboxes, shared mailboxes, and archive mailboxes.

You can place mailboxes in _Satellite Geography_ locations by:

1. Creating a new Exchange Online mailbox directly in a _Satellite Geography_ location.
1. Moving an existing Exchange Online mailbox to a _Satellite Geography_ location by changing the user's preferred data location.
1. Onboarding a mailbox from an on-premises Exchange organization directly into a _Satellite Geography_ location.

### Mailbox placement and moves

After Microsoft completes the prerequisite Multi-Geo configuration steps, Exchange Online will honor the PreferredDataLocation attribute on user objects in Azure AD.
Exchange Online synchronizes the PreferredDataLocation property from AAD into the MailboxRegion property in the Exchange Online directory service. The value of MailboxRegion determines the _Macro Region Geography_ or _Local Region Geography_ where user mailboxes and any associated archive mailboxes will be placed. It is not possible to configure a user's primary mailbox and archive mailboxes to reside in different _Geography_ locations. Only one _Macro Region Geography_ or _Local Region Geography_ may be configured per user object.

- When PreferredDataLocation is configured on a user with an existing mailbox, the mailbox will be put into a relocation queue and automatically moved to the specified _Macro Region Geography_ or _Local Region Geography_.
- When PreferredDataLocation is configured on a user without an existing mailbox, when you provision the mailbox, it will be provisioned into the specified _Macro Region Geography_ or _Local Region Geography_.
- When PreferredDataLocation is not specified on a user, when you provision the mailbox, it will be provisioned in the _Primary Provisioned Geography_.
- If the PreferredDataLocation code is incorrect (e.g. a typo of NAN instead of NAM), the mailbox will be provisioned in the _Primary Provisioned Geography_.

>[!NOTE]
>Multi-geo capabilities and Skype for Business Online regionally hosted meetings both use the PreferredDataLocation property on user objects to locate services. If you configure PreferredDataLocation values on user objects for regionally hosted meetings, the mailbox for those users will be automatically moved to the specified _Macro Region Geography_ or _Local Region Geography_ after Multi-Geo is enabled on the Microsoft 365 tenant.

### Feature limitations for Multi-Geo in Exchange Online

- Security and compliance features (for example, auditing and eDiscovery) that are available in the Exchange admin center (EAC) aren't available in Multi-Geo organizations. Instead, you need to use the Microsoft 365 Security & Compliance Center to configure security and compliance features.
- Outlook for Mac users may experience a temporary loss of access to their Online Archive folder while you move their mailbox to a new _Geography_ location. This condition occurs when the user's the primary and archive mailboxes are in different _Geography_ locations, because cross-geo mailbox moves may complete at different times.
- Users can't share mailbox folders across _Geography_ locations in Outlook on the web (formerly known as Outlook Web App or OWA). For example, a user in the European Union can't use Outlook on the web to open a shared folder in a mailbox that's located in the United States. However, Outlook on the Web users can open other mailboxes in different _Geography_ locations by using a separate browser window as described in Open another person's mailbox in a separate browser window in Outlook Web App.

>[!NOTE]
>Cross-geo mailbox folder sharing is supported in Outlook on Windows.

- Public folders are supported in Multi-Geo organizations. However, the public folders must remain in the _Primary Provisioned Geography_ location. You can't move public folders to satellite geo locations.
- In a Multi-Geo environment, cross-geo mailbox auditing is not supported. For example, if a user is assigned permissions to access a shared mailbox in a different _Geography_ location, mailbox actions performed by that user are not logged in the mailbox audit log of the shared mailbox. Exchange admin audit events are also only available for the default location. For more information, see Manage mailbox auditing.

### Administering Exchange Multi-Geo

#### Administering Exchange Online mailboxes in a Multi-Geo environment

Exchange Online PowerShell is required to view and configure Multi-Geo properties in your Microsoft 365 environment. To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

You need the [Microsoft Azure Active Directory PowerShell Module](https://social.technet.microsoft.com/wiki/contents/articles/28552.microsoft-azure-active-directory-powershell-module-version-release-history.aspx) v1.1.166.0 or later in v1.x to see the **PreferredDataLocation** property on user objects. User objects synchronized via AAD Connect into AAD cannot have their **PreferredDataLocation** value directly modified via AAD PowerShell. Cloud-only user objects can be modified via AAD PowerShell. To connect to Azure AD PowerShell, see [Connect to PowerShell](connect-to-microsoft-365-powershell.md).

In Exchange Online Multi-Geo environments, you don't need to do any manual steps to add Geographies to your tenant. After you receive the Message Center post that says multi-geo is ready for Exchange Online, all available Geographies will be ready and configured for you to use.

#### Connect directly to a geo location using Exchange Online PowerShell

Typically, Exchange Online PowerShell will connect to _Primary Provisioned Geography_ location. But, you can also connect directly to _Satellite Geography_ locations. Because of performance improvements, we recommend connecting directly to the _Satellite Geography_ location when you only manage users in that location.

The requirements for installing and using the Exchange Online PowerShell module are described in **[Install and maintain the Exchange Online PowerShell module](/powershell/exchange/exchange-online-powershell-v2#install-and-maintain-the-exchange-online-powershell-module)**.

To connect Exchange Online PowerShell to a specific _Geography_ location, the ConnectionUri parameter is different than the regular connection instructions. The rest of the commands and values are the same.

Specifically, you need to add the ?email=\<emailaddress\> value to end of the ConnectionUri value. \<emailaddress\> is the email address of **any** mailbox in the target _Geography_ location. Your permissions to that mailbox or the relationship to your credentials are not a factor; the email address simply tells Exchange Online PowerShell where to connect.
  
Microsoft 365 or Microsoft 365 GCC customers typically don't need to use the _ConnectionUri_ parameter to connect to Exchange Online PowerShell. But, to connect to a specific _Geography_ location, you do need to use ConnectionUri parameter so you can use ?email=\<emailaddress\> in the value.
  
#### Connect to a _Geography_ location in Exchange Online PowerShell

The following connection instructions work for accounts that are or aren't configured for multi-factor authentication (MFA).

1. In a Windows PowerShell window, load the EXO V2 module by running the following command:

  ```powershell
   Import-Module ExchangeOnlineManagement
   ```
  
1. In the following example, admin@contoso.onmicrosoft.com is the admin account, and the target geo location is where the mailbox olga@contoso.onmicrosoft.com resides.
  
  ```powershell
   Connect-ExchangeOnline -UserPrincipalName admin@contoso.onmicrosoft.com -ConnectionUri https://outlook.office365.com/powershell?email=olga@contoso.onmicrosoft.com
   ```
  
1. Enter the password for the admin@contoso.onmicrosoft.com in the prompt that appears. If the account is configured for MFA, you also need to enter the security code.
  
#### View the available _Geography_ locations that are configured in your Exchange Online organization

To see the list of configured _Geography_ locations in Microsoft 365 Multi-Geo, run the following command in Exchange Online PowerShell:

  ```powershell
Get-OrganizationConfig | Select -ExpandProperty AllowedMailboxRegions | Format-Table
```
  
#### View the _Primary Provisioned Geography_ location for your Exchange Online organization

To view your tenant's _Primary Provisioned Geography_ location, run the following command in Exchange Online PowerShell:

 ```powershell
Get-OrganizationConfig | Select DefaultMailboxRegion
```

#### Find the _Geography_ location of a mailbox

The **Get-Mailbox** cmdlet in Exchange Online PowerShell displays the following multi-geo related properties on mailboxes:

- **Database**: The first 3 letters of the database name correspond to the _Geography_ code, which tells you where the mailbox is currently located. For Online Archive Mailboxes the **ArchiveDatabase** property should be used.
- **MailboxRegion**: Specifies the _Geography_ location code that was set by the admin (synchronized from PreferredDataLocation in Azure AD).
- **MailboxRegionLastUpdateTime**: Indicates when MailboxRegion was last updated (either automatically or manually).

To see these properties for a mailbox, use the following syntax:

```powershell
Get-Mailbox -Identity <MailboxIdentity> | Format-List Database,MailboxRegion*
```

  For example, to see the _Geography_ location information for the mailbox chris@contoso.onmicrosoft.com, run the following command:

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
 >If the _Geography_ location code in the database name doesn't match **MailboxRegion** value, the mailbox will be automatically be put into a relocation queue and moved to the _Geography_ location specified by the **MailboxRegion** value (Exchange Online looks for a mismatch between these property values).

#### Move an existing cloud-only mailbox to a specific geo location

A cloud-only user is a user not synchronized to the tenant via AAD Connect. This user was created directly in Azure AD. Use the **Get-MsolUser** and **Set-MsolUser** cmdlets in the Azure AD Module for Windows PowerShell to view or specify the _Geography_ location where a cloud-only user's mailbox will be stored.

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

#### Move an inactive mailbox to a specific _Geography_
  
You can't move inactive mailboxes that are preserved for compliance purposes (for example, mailboxes on Litigation Hold) by changing their **PreferredDataLocation** value. To move an inactive mailbox to a different _Geography_, do the following steps:

1. Recover the inactive mailbox. For instructions, see [Recover an inactive mailbox](/microsoft-365/compliance/recover-an-inactive-mailbox).

1. Prevent the Managed Folder Assistant from processing the recovered mailbox by replacing \<MailboxIdentity\> with the name, alias, account, or email address of the mailbox and running the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

    ```powershell
    Set-Mailbox <MailboxIdentity> -ElcProcessingDisabled $true
    ```

1. Assign an **Exchange Online Plan 2** license to the recovered mailbox. This step is required to place the mailbox back on Litigation Hold. For instructions, see [Assign licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

1. Configure the **PreferredDataLocation** value on the mailbox as described in the previous section.

1. After you've confirmed that the mailbox has moved to the new geo location, place the recovered mailbox back on Litigation Hold. For instructions, see [Place a mailbox on Litigation Hold](/microsoft-365/compliance/create-a-litigation-hold#place-a-mailbox-on-litigation-hold).

1. After verifying that the Litigation Hold is in place, allow the Managed Folder Assistant to process the mailbox again by replacing \<MailboxIdentity\> with the name, alias, account, or email address of the mailbox and running the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

    ```powershell
    Set-Mailbox <MailboxIdentity> -ElcProcessingDisabled $false
    ```

1. Make the mailbox inactive again by removing the user account that's associated with the mailbox. For instructions, see [Delete a user from your organization](/admin/add-users/delete-a-user). This step also releases the Exchange Online Plan 2 license for other uses.

**Note**: When you move an inactive mailbox to a different geo location, you might affect content search results or the ability to search the mailbox from the former geo location. For more information, see [Searching and exporting content in Multi-Geo environments](/microsoft-365/compliance/set-up-compliance-boundaries#searching-and-exporting-content-in-multi-geo-environments).
  
#### Create new cloud mailboxes in a specific _Geography_ location

To create a new mailbox in a specific _Geographic_ location, you need to do either of these steps:

- Configure the **PreferredDataLocation** value as described in the previous [Move an existing cloud-only mailbox to a specific _Geographic_ location](#move-an-existing-cloud-only-mailbox-to-a-specific-geo-location) section _before_ you create the mailbox in Exchange Online. For example, configure the **PreferredDataLocation** value on a user before you assign a license.

- Assign a license at the same time you set the **PreferredDataLocation** value.

To create a new cloud-only licensed user (not AAD Connect synchronized) in a specific _Geographic_ location, use the following syntax in Azure AD PowerShell:

```powershell
New-MsolUser -UserPrincipalName <UserPrincipalName> -DisplayName "<Display Name>" [-FirstName <FirstName>] [-LastName <LastName>] [-Password <Password>] [-LicenseAssignment <AccountSkuId>] -PreferredDataLocation <GeoLocationCode>
```

This example create a new user account for Elizabeth Brunner with the following values:

- User principal name: ebrunner@contoso.onmicrosoft.com
- First name: Elizabeth
- Last name: Brunner
- Display name: Elizabeth Brunner
- Password: randomly-generated and shown in the results of the command (because we're not using the _Password_ parameter)
- License: `contoso:ENTERPRISEPREMIUM` (E5)
- Location: Australia (AUS)

```powershell
New-MsolUser -UserPrincipalName ebrunner@contoso.onmicrosoft.com -DisplayName "Elizabeth Brunner" -FirstName Elizabeth -LastName Brunner -LicenseAssignment contoso:ENTERPRISEPREMIUM -PreferredDataLocation AUS
```

For more information about creating new user accounts and finding LicenseAssignment values in Azure AD PowerShell, see [Create user accounts with PowerShell](create-user-accounts-with-microsoft-365-powershell.md) and [View licenses and services with PowerShell](view-licenses-and-services-with-microsoft-365-powershell.md).

> [!NOTE]
> If you are using Exchange Online PowerShell to enable a mailbox and need the mailbox to be created directly in the _Geographic_ location that's specified in **PreferredDataLocation**, you need to use an Exchange Online cmdlet such as **Enable-Mailbox** or **New-Mailbox** directly against the cloud service. If you use the **Enable-RemoteMailbox** cmdlet in on-premises Exchange PowerShell, the mailbox will be created in the _Primary Provisioned Geography_ location.

#### Onboard existing on-premises mailboxes in a specific _Geography_ location

You can use the standard onboarding tools and processes to migrate a mailbox from an on-premises Exchange organization to Exchange Online, including the [Migration dashboard in the EAC](https://support.office.com/article/d164b35c-f624-4f83-ac58-b7cae96ab331), and the [New-MigrationBatch](/powershell/module/exchange/new-migrationbatch) cmdlet in Exchange Online PowerShell.

The first step is to verify a user object exists for each mailbox to be onboarded, and verify the correct **PreferredDataLocation** value is configured in Azure AD. The onboarding tools will respect the **PreferredDataLocation** value and will migrate the mailboxes directly to the specified geo location.

Or, you can use the following steps to onboard mailboxes directly in a specific _Geographic_ location using the [New-MoveRequest](/powershell/module/exchange/new-moverequest) cmdlet in Exchange Online PowerShell.

1. Verify the user object exists for each mailbox to be onboarded and that **PreferredDataLocation** is set to the desired value in Azure AD. The value of **PreferredDataLocation** will be synchronized to the **MailboxRegion** attribute of the corresponding mail user object in Exchange Online.

1. Connect directly to the specific _Satellite Geography_ location using the connection instructions from earlier in this topic.

1. In Exchange Online PowerShell, store the on-premises administrator credentials that's used to perform a mailbox migration in a variable by running the following command:

   ```powershell
   $RC = Get-Credential
   ```

1. In Exchange Online PowerShell, create a new **New-MoveRequest** similar to the following example:

   ```powershell
   New-MoveRequest -Remote -RemoteHostName mail.contoso.com -RemoteCredential $RC -Identity user@contoso.com -TargetDeliveryDomain <YourAppropriateDomain>
   ```

1. Repeat step #4 for every mailbox you need to migrate from on-premises Exchange to the satellite geo location you are currently connected to.

1. If you need to migrate additional mailboxes to different satellite geo locations, repeat steps 2 through 4 for each specific location.

## Multi-Geo reporting
  
> [!NOTE]
> The multi-geo reporting feature is currently in Preview, is not available in all organizations, and is subject to change.

**Multi-Geo Usage Reports** in the Microsoft 365 admin center displays the user count by _Geographic_ location. The report displays user distribution for the current month and provides historical data for the past 6 months.

## Migration

Because it takes time to move each user to the new datacenter _Geography_ for a single tenant, some users will still be in the old datacenter _Geography_ during the move, while others will be in the new datacenter _Geography_. This means that some features that involve accessing multiple mailboxes may not fully work during a period of the move process, which can last weeks. These features are described in the following sections.

### Open "Shared Folder" in Outlook Web Access

Some users open a shared mail folder from another mailbox (that the user has read or write permissions to) in Outlook Web Access using the "Shared Folder" feature. The following table describes how access to shared folders works during a mailbox move. Please note that users with full permissions to a shared mailbox can open the mailbox by using Outlook Web Access during the move.

| Configuration | Description |
|:-----|:-----|
|User has mailbox folder permission to another mailbox  <br/> |Potentially limited.  <br/> If User A and Mailbox B aren't in the same _Geography_ during the tenant move, User A can't open Mailbox B's folder in Outlook Web Access if User A only has permission to a specific folder in Mailbox B.  <br/> To add a shared folder, right-click the user name in the left navigation panel and select **Add shared folder**.  <br/> |
|User with full mailbox permission to another mailbox  <br/> |Fully supported.  <br/> If User A has "Full Access" permission to Mailbox B, then User A can click the shared folder in the left navigation panel in Outlook Web Access to open a window showing Mailbox B.  A user can open a shared mailbox using Outlook Web Access during the move without any adverse impact. The limitation only applies to folder-level sharing in a mailbox.

The process of email data migration to Microsoft 365 during the Exchange Online is a common scenario and is supported. Cloud migration between datacenter geos does not interfere with any on-premises to cloud mailbox migrations.

### How can I determine customer data location?

You can find the actual data location in Tenant Admin Center.  As a tenant administrator you can find the actual data location, for committed data,  by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.
