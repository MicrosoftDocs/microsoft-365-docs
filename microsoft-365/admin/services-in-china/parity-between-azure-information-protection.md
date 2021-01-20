---
title: "Azure Information Protection support for Office 365 operated by 21Vianet"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- GEU150
- GEA150
description: "Learn more about Azure Information Protection (AIP) for Office 365 operated by 21Vianet and how to configure it for customers in China."
monikerRange: 'o365-21vianet'
---

# Azure Information Protection support for Office 365 operated by 21Vianet

This article covers the differences between Azure Information Protection (AIP) support for Office 365 operated by 21Vianet and commercial offerings, as well as specific instructions for configuring AIP for customers in China.

## Differences between AIP for Office 365 operated by 21Vianet and commercial offerings

While our goal is to deliver all commercial features and functionality to customers in China with our AIP for Office 365 operated by 21Vianet offer, there's some missing functionality that we'd like to highlight.

The following list includes the existing gaps between AIP for Office 365 operated by 21Vianet and our commercial offerings as of January 2021:

- Information Rights Management (IRM) is supported only for Microsoft 365 Apps for enterprise (build 11731.10000 or higher). Office 2010, Office 2013, and other Office 2016 versions are not supported.

- Migration from Active Directory Rights Management Services (AD RMS) to AIP is currently not available.
  
- Sharing of protected emails with users in the commercial cloud is supported.
  
- Sharing of documents and email attachments with users in the commercial cloud is currently not available. This includes Office 365 operated by 21Vianet users in the commercial cloud, non-Office 365 operated by 21Vianet users in the commercial cloud, and users with an RMS for Individuals license.
  
- IRM with SharePoint (IRM-protected sites and libraries) is currently not available.
  
- The Mobile Device Extension for AD RMS is currently not available.

- The [Mobile Viewer](/azure/information-protection/rms-client/mobile-app-faq) is not supported by Azure China 21Vianet.

## Configure AIP for customers in China

To configure AIP for customers in China:
1. [Enable Rights Management for the tenant](#step-1-enable-rights-management-for-the-tenant).

2. [Configure DNS encryption](#step-2-configure-dns-encryption).

3. [Install and configure the AIP unified labeling client](#step-3-install-and-configure-the-aip-unified-labeling-client).

4. [Configure AIP apps on Windows](#step-4-configure-aip-apps-on-windows).

### Step 1: Enable Rights Management for the tenant

For the encryption to work correctly, RMS must be enabled for the tenant.

1. Check if RMS is enabled:

    1. Launch PowerShell as an administrator.
    2. If the AIPService module isn't installed, run `Install-Module AipService`.
    3. Import the module using `Import-Module AipService`.
    4. Connect to the service using `Connect-AipService -environmentname azurechinacloud`.
    5. Run `(Get-AipServiceConfiguration).FunctionalState` and check if the state is `Enabled`.

2. If the functional state is `Disabled`, run `Enable-AipService`.

### Step 2: Configure DNS encryption

For encryption to work correctly, Office client applications must connect to the China instance of the service and bootstrap from there. To redirect client applications to the right service instance, the tenant admin must configure a DNS SRV record with information about the Azure RMS URL. Without the DNS SRV record, the client application will attempt to connect to the public cloud instance by default and will fail.

Also, the assumption is that users will log in with a username based off the tenant-owned domain (for example, `joe@contoso.cn`), and not the `onmschina` username (for example, `joe@contoso.onmschina.cn`). The domain name from the username is used for DNS redirection to the correct service instance.

#### Configure DNS encryption - Windows

1. Get the RMS ID:

    1. Launch PowerShell as an administrator.
    2. If the AIPService module isn't installed, run `Install-Module AipService`.
    3. Connect to the service using `Connect-AipService -environmentname azurechinacloud`.
    4. Run `(Get-AipServiceConfiguration).RightsManagementServiceId` to get the RMS ID.

2. Log in to your DNS provider, navigate to the DNS settings for the domain, and then add a new SRV record.

    - Service = `_rmsredir`
    - Protocol = `_http`
    - Name = `_tcp`
    - Target = `[GUID].rms.aadrm.cn` (where GUID is the RMS ID)
    - Priority, Weight, Seconds, TTL = default values

3. Associate the custom domain with the tenant in the [Azure portal](https://portal.azure.cn/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Domains). This will add an entry in DNS, which might take several minutes to get verified after you add the value to the DNS settings.

4. Log in to the Microsoft 365 admin center with the corresponding global admin credentials and add the domain (for example, `contoso.cn`) for user creation. In the verification process, additional DNS changes might be required. Once verification is done, users can be created.

#### Configure DNS encryption - Mac, iOS, Android

Log in to your DNS provider, navigate to the DNS settings for the domain, and then add a new SRV record.

- Service = `_rmsdisco`
- Protocol = `_http`
- Name = `_tcp`
- Target = `api.aadrm.cn`
- Port = `80`
- Priority, Weight, Seconds, TTL = default values

### Step 3: Install and configure the AIP unified labeling client

Download the AIP unified labeling client from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=53018).

For more information, see:

- [AIP documentation](/azure/information-protection/)
- [AIP version history and support policy](/azure/information-protection/rms-client/unifiedlabelingclient-version-release-history)
- [AIP system requirements](/azure/information-protection/requirements)
- [AIP quickstart: Deploy the AIP client](/azure/information-protection/quickstart-deploy-client)
- [AIP administrator guide](/azure/information-protection/rms-client/clientv2-admin-guide)
- [AIP user guide](/azure/information-protection/rms-client/clientv2-user-guide)
- [Learn about Microsoft 365 sensitivity labels](/microsoft-365/compliance/sensitivity-labels)

### Step 4: Configure AIP apps on Windows

AIP apps on Windows need the following registry key to point them to the correct sovereign cloud for Azure China:

- Registry node = `HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\MSIP`
- Name = `CloudEnvType`
- Value = `6` (default = 0)
- Type = `REG_DWORD`

> [!IMPORTANT]
> Make sure you don't delete the registry key after an uninstall. If the key is empty, incorrect, or non-existent, the functionality will behave as the default value (default value = 0 for the commercial cloud). If the key is empty or incorrect, a print error is also added to the log.

## Manage content scan jobs for the AIP on-premises scanner

To manage your AIP content scan jobs with an Azure China scanner server, use the following cmdlets instead of the Azure portal interface that the commercial offering uses:

| Cmdlet | Description |
|--|--|
| [Add-AIPScannerRepository](/powershell/module/azureinformationprotection/add-aipscannerrepository) | Adds a new repository to your content scan job. |
| [Get-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/get-aipscannercontentscanjob) | Gets details about your content scan job. |
| [Get-AIPScannerRepository](/powershell/module/azureinformationprotection/get-aipscannerrepository) | Gets details about repositories defined for your content scan job. |
| [Remove-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/remove-aipscannercontentscanjob) | Deletes your content scan job. |
| [Remove-AIPScannerRepository](/powershell/module/azureinformationprotection/remove-aipscannerrepository) | Removes a repository from your content scan job. |
| [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob) | Defines settings for your content scan job. |
| [Set-AIPScannerRepository](/powershell/module/azureinformationprotection/set-aipscannerrepository) | Defines settings for an existing repository in your content scan job. |

For more information, see [What is the Azure Information Protection unified labeling scanner?](/azure/information-protection/deploy-aip-scanner) and [Manage your content scan jobs using PowerShell only](/azure/information-protection/deploy-aip-scanner-prereqs#use-powershell-with-a-disconnected-computer).