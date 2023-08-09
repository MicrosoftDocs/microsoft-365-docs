---
title: "Azure Information Protection support for Office 365 operated by 21Vianet"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
ms.date: 03/30/2023
audience: Admin
ms.topic: overview
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2 
- scotvorg
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

This article covers the differences between Azure Information Protection (AIP) support for Office 365 operated by 21Vianet and commercial offerings, as well as specific instructions for configuring AIP for customers in China&mdash;including how to install the information protection scanner and manage content scan jobs.

## Differences between AIP for Office 365 operated by 21Vianet and commercial offerings

While our goal is to deliver all commercial features and functionality to customers in China with our AIP for Office 365 operated by 21Vianet offer, there's some missing functionality that we'd like to highlight.

Following is a list of gaps between AIP for Office 365 operated by 21Vianet and our commercial offerings:

- Active Directory Rights Management Services (AD RMS) encryption is supported only in Microsoft 365 Apps for enterprise (build 11731.10000 or later). Office Professional Plus doesn't support AD RMS.

- Migration from AD RMS to AIP is currently not available.
  
- Sharing of protected emails with users in the commercial cloud is supported.
  
- Sharing of documents and email attachments with users in the commercial cloud is currently not available. This includes Office 365 operated by 21Vianet users in the commercial cloud, non-Office 365 operated by 21Vianet users in the commercial cloud, and users with an RMS for Individuals license.
  
- IRM with SharePoint (IRM-protected sites and libraries) is currently not available.
  
- The Mobile Device Extension for AD RMS is currently not available.

- The [Mobile Viewer](/azure/information-protection/rms-client/mobile-app-faq) is not supported by Azure China 21Vianet.

- The scanner area of the compliance portal is unavailable to customers in China. Use [PowerShell commands](#step-6-install-the-information-protection-scanner-and-manage-content-scan-jobs) instead of performing actions in the portal, such as managing and running your content scan jobs.

- AIP endpoints in Office 365 operated by 21Vianet are different than the endpoints required for other cloud services. Network connectivity from clients to the following endpoints is required:
    - Download label and label policies: `*.protection.partner.outlook.cn`
    - Azure Rights Management service: `*.aadrm.cn`

- Document Tracking and Revocation *by users* is currently not available.

## Configure AIP for customers in China

To configure AIP for customers in China:
1. [Enable Rights Management for the tenant](#step-1-enable-rights-management-for-the-tenant).

1. [Add the Microsoft Information Protection Sync Service service principal](#step-2-add-the-microsoft-information-protection-sync-service-service-principal).

1. [Configure DNS encryption](#step-3-configure-dns-encryption).

1. [Install and configure the AIP unified labeling client](#step-4-install-and-configure-the-aip-unified-labeling-client).

1. [Configure AIP apps on Windows](#step-5-configure-aip-apps-on-windows).

1. [Install the information protection scanner and manage content scan jobs](#step-6-install-the-information-protection-scanner-and-manage-content-scan-jobs). 

### Step 1: Enable Rights Management for the tenant

For the encryption to work correctly, RMS must be enabled for the tenant.

1. Check if RMS is enabled:

    1. Launch PowerShell as an administrator.
    2. If the AIPService module isn't installed, run `Install-Module AipService`.
    3. Import the module using `Import-Module AipService`.
    4. Connect to the service using `Connect-AipService -environmentname azurechinacloud`.
    5. Run `(Get-AipServiceConfiguration).FunctionalState` and check if the state is `Enabled`.

2. If the functional state is `Disabled`, run `Enable-AipService`.

### Step 2: Add the Microsoft Information Protection Sync Service service principal

The **Microsoft Information Protection Sync Service**  service principal is not available in Azure China tenants by default, and is required for Azure Information Protection. Create this service principal manually via the Azure Az PowerShell module.

1. If you don't have the Azure Az module installed, install it or use a resource where the Azure Az module comes preinstalled, such as [Azure Cloud Shell](/azure/cloud-shell/overview). For more information, see [Install the Azure Az PowerShell module](/powershell/azure/install-az-ps).

1. Connect to the service using the [Connect-AzAccount](/powershell/module/az.accounts/Connect-AzAccount) cmdlet and the `azurechinacloud` environment name:

    ```powershell
    Connect-azaccount -environmentname azurechinacloud
    ```

1. Create the **Microsoft Information Protection Sync Service**  service principal manually using the [New-AzADServicePrincipal](/powershell/module/az.resources/new-azadserviceprincipal) cmdlet and the `870c4f2e-85b6-4d43-bdda-6ed9a579b725` application ID for the Microsoft Purview Information Protection Sync Service:

    ```powershell 
    New-AzADServicePrincipal -ApplicationId 870c4f2e-85b6-4d43-bdda-6ed9a579b725
    ```

1. After adding the service principal, add the relevant permissions required to the service.

### Step 3: Configure DNS encryption

For encryption to work correctly, Office client applications must connect to the China instance of the service and bootstrap from there. To redirect client applications to the right service instance, the tenant admin must configure a DNS SRV record with information about the Azure RMS URL. Without the DNS SRV record, the client application will attempt to connect to the public cloud instance by default and will fail.

Also, the assumption is that users will log in with a username based off the tenant-owned domain (for example, `joe@contoso.cn`), and not the `onmschina` username (for example, `joe@contoso.onmschina.cn`). The domain name from the username is used for DNS redirection to the correct service instance.

#### Configure DNS encryption - Windows

1. Get the RMS ID:

    1. Launch PowerShell as an administrator.
    2. If the AIPService module isn't installed, run `Install-Module AipService`.
    3. Connect to the service using `Connect-AipService -environmentname azurechinacloud`.
    4. Run `(Get-AipServiceConfiguration).RightsManagementServiceId` to get the RMS ID.

2. Log in to your DNS provider, navigate to the DNS settings for the domain, and then add a new SRV record.

    - Service = `_rmsredir`
    - Protocol = `_http`
    - Name = `_tcp`
    - Target = `[GUID].rms.aadrm.cn` (where GUID is the RMS ID)
    - Priority, Weight, Seconds, TTL = default values

3. Associate the custom domain with the tenant in the [Azure portal](https://portal.azure.cn/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Domains). This will add an entry in DNS, which might take several minutes to get verified after you add the value to the DNS settings.

4. Log in to the Microsoft 365 admin center with the corresponding global admin credentials and add the domain (for example, `contoso.cn`) for user creation. In the verification process, additional DNS changes might be required. Once verification is done, users can be created.

#### Configure DNS encryption - Mac, iOS, Android

Log in to your DNS provider, navigate to the DNS settings for the domain, and then add a new SRV record.

- Service = `_rmsdisco`
- Protocol = `_http`
- Name = `_tcp`
- Target = `api.aadrm.cn`
- Port = `80`
- Priority, Weight, Seconds, TTL = default values


### Step 4: Install and configure the AIP unified labeling client

Download and install the AIP unified labeling client from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=53018).

For more information, see:

- [AIP documentation](/azure/information-protection/)
- [AIP version history and support policy](/azure/information-protection/rms-client/unifiedlabelingclient-version-release-history)
- [AIP system requirements](/azure/information-protection/requirements)
- [AIP quickstart: Deploy the AIP client](/azure/information-protection/quickstart-deploy-client)
- [AIP administrator guide](/azure/information-protection/rms-client/clientv2-admin-guide)
- [AIP user guide](/azure/information-protection/rms-client/clientv2-user-guide)
- [Learn about Microsoft 365 sensitivity labels](../../compliance/sensitivity-labels.md)

### Step 5: Configure AIP apps on Windows

AIP apps on Windows need the following registry key to point them to the correct sovereign cloud for Azure China:

- Registry node = `HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\MSIP`
- Name = `CloudEnvType`
- Value = `6` (default = 0)
- Type = `REG_DWORD`

> [!IMPORTANT]
> Make sure you don't delete the registry key after an uninstall. If the key is empty, incorrect, or non-existent, the functionality will behave as the default value (default value = 0 for the commercial cloud). If the key is empty or incorrect, a print error is also added to the log.

### Step 6: Install the information protection scanner and manage content scan jobs

Install the Microsoft Purview Information Protection scanner to scan your network and content shares for sensitive data, and apply classification and protection labels as configured in your organization's policy.

When configuring and managing your content scan jobs, use the following procedure instead of the [Microsoft Purview compliance portal](../../compliance/deploy-scanner-configure-install.md) that's used by the commercial offerings.

For more information, see [Learn about the information protection scanner](../../compliance/deploy-scanner.md) and [Manage your content scan jobs using PowerShell only](../../compliance/deploy-scanner-prereqs.md#use-powershell-with-a-disconnected-computer).

**To install and configure your scanner**:

1. Sign in to the Windows Server computer that will run the scanner. Use an account that has local administrator rights and that has permissions to write to the SQL Server master database.

1. Start with PowerShell closed. If you've previously installed the AIP client and scanner, make sure that the **AIPScanner** service is stopped.

1. Open a Windows PowerShell session with the **Run as an administrator** option.

1. Run the [Install-AIPScanner](/powershell/module/azureinformationprotection/Install-AIPScanner) cmdlet, specifying your SQL Server instance on which to create a database for the Azure Information Protection scanner, and a meaningful name for your scanner cluster.

    ```PowerShell
    Install-AIPScanner -SqlServerInstance <name> -Cluster <cluster name>
    ```

    > [!TIP]
    > You can use the same cluster name in the [Install-AIPScanner](/powershell/module/azureinformationprotection/install-aipscanner) command to associate multiple scanner nodes to the same cluster. Using the same cluster for multiple scanner nodes enables multiple scanners to work together to perform your scans.
    > 

1. Verify that the service is now installed by using **Administrative Tools** > **Services**.

    The installed service is named **Azure Information Protection Scanner** and is configured to run by using the scanner service account that you created.

1. Get an Azure token to use with your scanner. An Azure AD token allows the scanner to authenticate to the Azure Information Protection service, enabling the scanner to run non-interactively. 

    1. Open the Azure portal and create an Azure AD application to specify an access token for authentication. For more information, see [How to label files non-interactively for Azure Information Protection](/azure/information-protection/rms-client/clientv2-admin-guide-powershell#how-to-label-files-non-interactively-for-azure-information-protection).
    
        > [!TIP]
        > When creating and configuring Azure AD applications for the [Set-AIPAuthentication](/powershell/module/azureinformationprotection/set-aipauthentication) command, the **Request API permissions** pane shows the **APIs my organization uses** tab instead of the **Microsoft APIs** tab. Select the **APIs my organization uses** to then select **Azure Rights Management Services**. 
        >

    1. From the Windows Server computer, if your scanner service account has been granted the **Log on locally** right for the installation, sign in with this account and start a PowerShell session. 
    
        If your scanner service account cannot be granted the **Log on locally** right for the installation, use the *OnBehalfOf* parameter with [Set-AIPAuthentication](/powershell/module/azureinformationprotection/set-aipauthentication), as described in [How to label files non-interactively for Azure Information Protection](/azure/information-protection/rms-client/clientv2-admin-guide-powershell#how-to-label-files-non-interactively-for-azure-information-protection).

    1. Run [Set-AIPAuthentication](/powershell/module/azureinformationprotection/set-aipauthentication), specifying values copied from your Azure AD application:

      ```PowerShell
      Set-AIPAuthentication -AppId <ID of the registered app> -AppSecret <client secret sting> -TenantId <your tenant ID> -DelegatedUser <Azure AD account>
      ```

      For example:

      ```PowerShell
      $pscreds = Get-Credential CONTOSO\scanner
      Set-AIPAuthentication -AppId "77c3c1c3-abf9-404e-8b2b-4652836c8c66" -AppSecret "OAkk+rnuYc/u+]ah2kNxVbtrDGbS47L4" -DelegatedUser scanner@contoso.com -TenantId "9c11c87a-ac8b-46a3-8d5c-f4d0b72ee29a" -OnBehalfOf $pscreds
      Acquired application access token on behalf of CONTOSO\scanner.
      ```

    The scanner now has a token to authenticate to Azure AD. This token is valid for one year, two years, or never, according to your configuration of the **Web app /API** client secret in Azure AD. When the token expires, you must repeat this procedure.

1. Run the [Set-AIPScannerConfiguration](/powershell/module/azureinformationprotection/set-aipscannerconfiguration) cmdlet to set the scanner to function in offline mode. Run:

    ```powershell
    Set-AIPScannerConfiguration -OnlineConfiguration Off
    ```

1. Run the [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob) cmdlet to create a default content scan job.

    The only required parameter in the **Set-AIPScannerContentScanJob** cmdlet is **Enforce**. However, you may want to define other settings for your content scan job at this time. For example:

    ```powershell
    Set-AIPScannerContentScanJob -Schedule Manual -DiscoverInformationTypes PolicyOnly -Enforce Off -DefaultLabelType PolicyDefault -RelabelFiles Off -PreserveFileDetails On -IncludeFileTypes '' -ExcludeFileTypes '.msg,.tmp' -DefaultOwner <account running the scanner>
    ```

    The syntax above configures the following settings while you continue the configuration:

    - Keeps the scanner run scheduling to *manual*
    - Sets the information types to be discovered based on the sensitivity labeling policy
    - Does *not* enforce a sensitivity labeling policy
    - Automatically labels files based on content, using the default label defined for the sensitivity labeling policy
    - Does *not* allow for relabeling files
    - Preserves file details while scanning and auto-labeling, including *date modified*, *last modified*, and *modified by* values
    - Sets the scanner to exclude .msg and .tmp files when running
    - Sets the default owner to the account you want to use when running the scanner

1. Use the [Add-AIPScannerRepository](/powershell/module/azureinformationprotection/add-aipscannerrepository) cmdlet to define the repositories you want to scan in your content scan job. For example, run:

    ```powershell
    Add-AIPScannerRepository -OverrideContentScanJob Off -Path 'c:\repoToScan'
    ```
    
    Use one of the following syntaxes, depending on the type of repository you're adding:

    - For a network share, use `\\Server\Folder`.
    - For a SharePoint library, use `http://sharepoint.contoso.com/Shared%20Documents/Folder`.
    - For a local path: `C:\Folder`
    - For a UNC path: `\\Server\Folder`

    > [!NOTE]
    > Wildcards are not supported and WebDav locations are not supported.
    >
    > To modify the repository later on, use the [Set-AIPScannerRepository](/powershell/module/azureinformationprotection/set-aipscannerrepository) cmdlet instead. 


Continue with the following steps as needed:

- [Run a discovery cycle and view reports for the scanner](../../compliance/deploy-scanner-manage.md#run-a-discovery-cycle-and-view-reports-for-the-scanner)
- [Use PowerShell to configure the scanner to apply classification and protection](../../compliance/deploy-scanner-configure-install.md?tabs=azure-portal-only#use-powershell-to-configure-the-scanner-to-apply-classification-and-protection)
- [Use PowerShell to configure a DLP policy with the scanner](../../compliance/deploy-scanner-configure-install.md?tabs=azure-portal-only#use-powershell-to-configure-a-dlp-policy-with-the-scanner)

The following table lists PowerShell cmdlets that are relevant for installing the scanner and managing your content scan jobs:

| Cmdlet | Description |
|--|--|
| [Add-AIPScannerRepository](/powershell/module/azureinformationprotection/add-aipscannerrepository) | Adds a new repository to your content scan job. |
| [Get-AIPScannerConfiguration](/powershell/module/azureinformationprotection/get-aipscannerconfiguration)|Returns details about your cluster. |
| [Get-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/get-aipscannercontentscanjob) | Gets details about your content scan job. |
| [Get-AIPScannerRepository](/powershell/module/azureinformationprotection/get-aipscannerrepository) | Gets details about repositories defined for your content scan job. |
| [Remove-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/remove-aipscannercontentscanjob) | Deletes your content scan job. |
| [Remove-AIPScannerRepository](/powershell/module/azureinformationprotection/remove-aipscannerrepository) | Removes a repository from your content scan job. |
| [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob) | Defines settings for your content scan job. |
| [Set-AIPScannerRepository](/powershell/module/azureinformationprotection/set-aipscannerrepository) | Defines settings for an existing repository in your content scan job. |
| | |

For more information, see:

- [Learn about the information protection scanner](../../compliance/deploy-scanner.md)
- [Configuring and installing the information protection scanner](../../compliance/deploy-scanner-configure-install.md?tabs=powershell-only)
- [Manage your content scan jobs using PowerShell only](../../compliance/deploy-scanner-prereqs.md#use-powershell-with-a-disconnected-computer).
