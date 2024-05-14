---
title: "Manage Microsoft 365 tenants with Windows PowerShell for DAP partners"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/10/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- M365-subscription-management
f1.keywords:
- NOCSH
ms.custom:
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
ms.assetid: f92d5116-5b66-4150-ad20-1452fc3dd712
description: In this article, learn how to use PowerShell for Microsoft 365 to manage your customer tenancies.
---

# Manage Microsoft 365 tenants with Windows PowerShell for Delegated Access Permissions (DAP) partners

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Windows PowerShell allows Syndication and Cloud Solution Provider (CSP) partners to easily administer and report on customer tenancy settings that aren't available in the Microsoft 365 admin center. Administer on Behalf Of (AOBO) permissions are required for the partner administrator account to connect to its customer tenancies.

Delegated Access Permission (DAP) partners are Syndication and Cloud Solution Providers (CSP) Partners. They're frequently network or telecom providers to other companies. They bundle Microsoft 365 subscriptions into their service offerings to their customers. When they sell a Microsoft 365 subscription, they're automatically granted Administer On Behalf Of (AOBO) permissions to the customer tenancies so they can administer and report on the customer tenancies.
## What do you need to know before you begin?

The procedures in this topic require you to connect to [Connect to Microsoft 365 with PowerShell](connect-to-microsoft-365-powershell.md).

[!INCLUDE [Azure AD PowerShell deprecation note](~/../microsoft-365/reusable-content/msgraph-powershell/includes/aad-powershell-deprecation-note.md)]

You also need your partner tenant administrator credentials.

## What do you want to do?

### List all tenant IDs

> [!NOTE]
> If you have more than 500 tenants, scope the cmdlet syntax with either  _-All_ or _-MaxResultsParameter_. This applies to other cmdlets that can give a large output, such as **Get-MsolUser**.

To list all customer tenant Ids that you have access to, run this command.

```powershell
Get-MsolPartnerContract -All | Select-Object TenantId
```

This displays a listing of all your customer tenants by **TenantId**.

>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

### Get a tenant ID by using the domain name

To get the **TenantId** for a specific customer tenant by domain name, run this command. Replace _<domainname.onmicrosoft.com>_ with the actual domain name of the customer tenant that you want.

```powershell
Get-MsolPartnerContract -DomainName <domainname.onmicrosoft.com> | Select-Object TenantId
```

### List all domains for a tenant

To get all domains for any one customer tenant, run this command. Replace  _\<customer TenantId value>_ with the actual value.

```powershell
Get-MsolDomain -TenantId <customer TenantId value>
```

If you have registered additional domains, this returns all domains associated with the customer **TenantId**.

### Get a mapping of all tenants and registered domains

The previous PowerShell for Microsoft 365 commands showed you how to retrieve either tenant IDs or domains but not both at the same time, and with no clear mapping between them all. This command generates a listing of all your customer tenant IDs and their domains.

```powershell
$Tenants = Get-MsolPartnerContract -All; $Tenants | foreach {$Domains = $_.TenantId; Get-MsolDomain -TenantId $Domains | fl @{Label="TenantId";Expression={$Domains}},name}
```

### Get all users for a tenant

This displays the **UserPrincipalName**, the **DisplayName**, and the **isLicensed** status for all users for a particular tenant. Replace _\<customer TenantId value>_ with the actual value.

```powershell
Get-MsolUser -TenantID <customer TenantId value>
```

### Get all details about a user

If you want to see all the properties of a particular user, run this command. Replace  _\<customer TenantId value>_ and _\<user principal name value>_ with the actual values.

```powershell
Get-MsolUser -TenantId <customer TenantId value> -UserPrincipalName <user principal name value>
```

### Add users, set options, and assign licenses

The bulk creation, configuration, and licensing of Microsoft 365 users is particularly efficient by using PowerShell for Microsoft 365. In this two-step process, you first create entries for all the users you want to add in a comma-separated value (CSV) file and then import that file by using PowerShell for Microsoft 365.

#### Create a CSV file

Create a CSV file by using this format:

`UserPrincipalName,FirstName,LastName,DisplayName,Password,TenantId,UsageLocation,LicenseAssignment`

where:

- **UsageLocation**: The value for this is the two-letter ISO country/region code of the user. The country/region codes can be looked up at the[ISO Online Browsing Platform](https://go.microsoft.com/fwlink/p/?LinkId=532703). For example, the code for the United States is US, and the code for Brazil is BR.

- **LicenseAssignment**: The value for this uses this format: `syndication-account:<PROVISIONING_ID>`. For example, if you're assigning customer tenant users O365_Business_Premium licenses, the **LicenseAssignment** value looks like this: **syndication-account:O365_Business_Premium**. You'll find the PROVISIONING_IDs in the Syndication Partner Portal that you have access to as a Syndication or CSP partner.

#### Import the CSV file and create the users

After you have your CSV file created, run this command to create user accounts with non-expiring passwords that the user must change at first sign-in and that assigns the license you specify. Be sure to substitute the correct CSV file name.

```powershell
Import-Csv .\FILENAME.CSV | foreach {New-MsolUser -UserPrincipalName $_.UserPrincipalName -DisplayName $_.DisplayName -FirstName $_.FirstName -LastName $_.LastName -Password $_.Password -UsageLocation $_.UsageLocation -LicenseAssignment $_.LicenseAssignment -ForceChangePassword:$true -PasswordNeverExpires:$true -TenantId $_.TenantId}
```

## See also

[Help for partners](https://go.microsoft.com/fwlink/p/?LinkId=533477)
