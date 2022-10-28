---
title: "Get started with the Microsoft Purview Information Protection scanner"
f1.keywords:
ms.author: libarson
author: libarson
manager: aashishr
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: normal
ms.collection: 
- purview-compliance
- tier3
description: Lists prerequisites for installing and deploying the Microsoft Purview Information Protection scanner.
---

# Get started with the information protection scanner

Before installing the scanner from Microsoft Purview Information Protection, make sure that your system complies with basic [Azure Information Protection requirements](/azure/information-protection/requirements).

Additionally, the following requirements are specific for the scanner:

- [Windows Server requirements](#windows-server-requirements)
- [Service account requirements](#service-account-requirements)
- [SQL server requirements](#sql-server-requirements)
- [Azure Information Protection client requirements](#azure-information-protection-client-requirements)
- [Label configuration requirements](#label-configuration-requirements)
- [SharePoint requirements](#sharepoint-requirements)
- [Microsoft Office requirements](#microsoft-office-requirements)
- [File path requirements](#file-path-requirements)

If you can't meet all the requirements listed for the scanner because they are prohibited by your organization policies, see the [alternative configurations](#deploying-the-scanner-with-alternative-configurations) section.

When deploying the scanner in production or testing the performance for multiple scanners, see [Storage requirements and capacity planning for SQL Server](#storage-requirements-and-capacity-planning-for-sql-server).

When you're ready to start installing and deploying your scanner, continue with [Configuring and installing the information protection scanner](deploy-scanner-configure-install.md).

## Windows Server requirements

You must have a Windows Server computer to run the scanner, which has the following system specifications:

|Specification  |Details  |
|---------|---------|
|**Processor**     |4 core processors         |
|**RAM**     |8 GB         |
|**Disk space**     |10-GB free space (average) for temporary files. </br></br>The scanner requires sufficient disk space to create temporary files for each file that it scans, four files per core. </br></br>The recommended disk space of 10 GB allows for 4 core processors scanning 16 files that each have a file size of 625 MB.
|**Operating system**     |64-bit versions of: <br><br>- Windows Server 2019 </br>- Windows Server 2016 </br>- Windows Server 2012 R2 </br></br>**Note**: For testing or evaluation purposes in a non-production environment, you can also use any Windows operating system that is [supported by the Azure Information Protection client](/azure/information-protection/requirements#client-devices).
|**Network connectivity**     | Your scanner computer can be a physical or virtual computer with a fast and reliable network connection to the data stores to be scanned. </br></br> If internet connectivity is not possible because of your organization policies, see [Deploying the scanner with alternative configurations](#deploying-the-scanner-with-alternative-configurations). </br></br>Otherwise, make sure that this computer has internet connectivity that allows the following URLs over HTTPS (port 443):</br><br />-  \*.aadrm.com <br />-  \*.azurerms.com<br />-  \*.informationprotection.azure.com <br /> - informationprotection.hosting.portal.azure.net <br /> - \*.aria.microsoft.com <br />-  \*.protection.outlook.com |
|**NFS shares** |To support scans on NFS shares, services for NFS must be deployed on the scanner machine. <br><br>On your machine, navigate to the **Windows Features (Turn Windows features on or off)** settings dialog, and select the following items: **Services for NFS** > **Administrative Tools** and **Client for NFS**. |
| **Microsoft Office iFilter** |When your scanner is installed on a Windows server machine, you must also install the Microsoft Office iFilter in order to scan .zip files for sensitive information types. <br><br>For more information, see the [Microsoft download site](https://www.microsoft.com/en-us/download/details.aspx?id=17062).|

## Service account requirements

You must have a service account to run the scanner service on the Windows Server computer, as well as authenticate to Azure AD and download the scanner's policy.

Your service account must be an Active Directory account and synchronized to Azure AD.

If you cannot synchronize this account because of your organization policies, see [Deploying the scanner with alternative configurations](#deploying-the-scanner-with-alternative-configurations).

This service account has the following requirements:

|Requirement  |Details  |
|---------|---------|
|**Log on locally** user right assignment     |Required to install and configure the scanner, but not required to run scans.  </br></br>Once you've confirmed that the scanner can discover, classify, and protect files, you can remove this right from the service account.  </br></br>If granting this right even for a short period of time is not possible because of your organization policies, see [Deploying the scanner with alternative configurations](#deploying-the-scanner-with-alternative-configurations).         |
|**Log on as a service** user right assignment.     |  This right is automatically granted to the service account during the scanner installation and this right is required for the installation, configuration, and operation of the scanner.        |
|**Permissions to the data repositories**     |- **File shares or local files**: Grant **Read**, **Write**, and **Modify** permissions for scanning the files and then applying classification and protection as configured.  <br /><br />- **SharePoint**: You must grant **Full Control** permissions for scanning the files and then applying classification and protection to the files that meet the conditions in the Azure Information Protection policy.  <br /><br />- **Discovery mode**: To run the scanner in discovery mode only, **Read** permission is sufficient.         |
|**For labels that reprotect or remove protection**     | To ensure that the scanner always has access to encrypted files, make this account a [super user](/azure/information-protection/configure-super-users) for Azure Information Protection, and ensure that the super user feature is enabled. </br></br>Additionally, if you've implemented [onboarding controls](/azure/information-protection/activate-service#configuring-onboarding-controls-for-a-phased-deployment) for a phased deployment, make sure that the service account is included in the onboarding controls you've configured.|
|**Specific URL level scanning** |To scan and discover sites and subsites [under a specific URL](#deploying-the-scanner-with-alternative-configurations), grant **Site Collector Auditor** rights to the scanner account on the farm level.|
|**License for information protection** | Required to provide file classification, labeling, or protection capabilities to the scanner service account. <br><br>For more information, see the [Microsoft 365 guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-sensitivity-labeling). |

## SQL server requirements

To store the scanner configuration data, use an SQL server with the following requirements:

- **A local or remote instance.**

    We recommend hosting the SQL server and the scanner service on different machines, unless you're working with a small deployment. Additionally, we recommend having a dedicated SQL instance that serves the scanner database only, and that is not shared with other applications.

    If you're working on a shared server, make sure that the [recommended number of cores](#windows-server-requirements) are free for the scanner database to work.

    SQL Server 2016 is the minimum version for the following editions:

    - SQL Server Enterprise

    - SQL Server Standard

    - SQL Server Express (recommended for test environments only)

- **An account with Sysadmin role to install the scanner.**

    The Sysadmin role enables the installation process to automatically create the scanner configuration database and grant the required **db_owner** role to the service account that runs the scanner.

    If you cannot be granted the Sysadmin role or your organization policies require databases to be created and configured manually, see [Deploying the scanner with alternative configurations](#deploying-the-scanner-with-alternative-configurations).

- **Capacity.** For capacity guidance, see [Storage requirements and capacity planning for SQL Server](#storage-requirements-and-capacity-planning-for-sql-server).

- **[Case insensitive collation](/sql/relational-databases/collations/collation-and-unicode-support).**

> [!NOTE]
> Multiple configuration databases on the same SQL server are supported when you specify a custom cluster name for the scanner, or when you use the preview version of the scanner.

### Storage requirements and capacity planning for SQL Server

The amount of disk space required for the scanner's configuration database and the specification of the computer running SQL Server can vary for each environment, so we encourage you to do your own testing. Use the following guidance as a starting point.

For more information, see [Optimizing the performance of the scanner](deploy-scanner-configure-install.md#optimize-scanner-performance).

The disk size for the scanner configuration database will vary for each deployment. Use the following equation as guidance:

```cli
100 KB + <file count> *(1000 + 4* <average file name length>)
```

For example, to scan 1 million files that have an average file name length of 250 bytes, allocate 2-GB disk space.

For multiple scanners:

- **Up to 10 scanners**, use:

    - 4 core processors
    - 8-GB RAM recommended

- **More than 10 scanners** (maximum 40), use:
    - 8 core processes
    - 16-GB RAM recommended

## Azure Information Protection client requirements

You must have either the [current general availability version](/azure/information-protection/rms-client/unifiedlabelingclient-version-release-history) of the Azure Information Protection client installed on the Windows Server computer.

For more information, see the [Azure Information Protection unified labeling client administrator guide](/azure/information-protection/rms-client/clientv2-admin-guide#installing-the-azure-information-protection-scanner).

> [!IMPORTANT]
> You must install the full client for the scanner. Do not install the client with just the PowerShell module.
>

## Label configuration requirements

You must have at least one sensitivity label configured in the Microsoft Purview compliance portal for the scanner account, to apply classification and, optionally, encryption.

The *scanner account* is the account that you'll specify in the **DelegatedUser** parameter of the [Set-AIPAuthentication](/powershell/module/azureinformationprotection/set-aipauthentication) cmdlet, run when configuring your scanner. 

If your labels don't have auto-labeling conditions, see the [instructions for alternative configurations](#restriction-your-labels-do-not-have-auto-labeling-conditions) below.

For more information, see:

- [Learn about sensitivity labels](sensitivity-labels.md)
- [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)
- [Restrict access to content by using encryption in sensitivity labels](encryption-sensitivity-labels.md)
- [Configuring and installing the information protection scanner](deploy-scanner-configure-install.md)

## SharePoint requirements

To scan SharePoint document libraries and folders, ensure that your SharePoint server complies with the following requirements:

|Requirement  |Description  |
|---------|---------|
|**Supported versions** | Supported versions include: SharePoint 2019, SharePoint 2016, and SharePoint 2013. <br> Other versions of SharePoint are not supported for the scanner.     |
|**Versioning**     |  When you use [versioning](/sharepoint/governance/versioning-content-approval-and-check-out-planning), the scanner inspects and labels the last published version. <br><br>If the scanner labels a file and [content approval](/sharepoint/governance/versioning-content-approval-and-check-out-planning#plan-content-approval) is required, that labeled file must be approved to be available for users.       |
|**Large SharePoint farms** |For large SharePoint farms, check whether you need to increase the list view threshold (by default, 5,000) for the scanner to access all files. <br><br>For more information, see [Manage large lists and libraries in SharePoint](https://support.office.com/article/manage-large-lists-and-libraries-in-sharepoint-b8588dae-9387-48c2-9248-c24122f07c59#__bkmkchangelimit&ID0EAABAAA=Server). |
|**Long file paths**  |If you have long file paths in SharePoint, ensure that your SharePoint server's [httpRuntime.maxUrlLength](/dotnet/api/system.web.configuration.httpruntimesection.maxurllength) value is larger than the default 260 characters. <br><br>For more information, see [Avoid scanner timeouts in SharePoint](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#avoid-scanner-timeouts-in-sharepoint). | 

## Microsoft Office requirements

To scan Office documents, your documents must be in one of the following formats:

- Microsoft Office 97-2003
- Office Open XML formats for Word, Excel, and PowerPoint

For more information, see [File types supported by the Azure Information Protection unified labeling client](/azure/information-protection/rms-client/clientv2-admin-guide-file-types).

## File path requirements

By default, to scan files, your file paths must have a maximum of 260 characters.

To scan files with file paths of more than 260 characters, install the scanner on a computer with one of the following Windows versions, and configure the computer as needed:

|Windows version  |Description  |
|---------|---------|
|**Windows 2016 or later**     |   Configure the computer to support long paths      |
|**Windows 10 or Windows Server 2016**     | Define the following [group policy setting](/archive/blogs/jeremykuhne/net-4-6-2-and-long-paths-on-windows-10): **Local Computer Policy** > **Computer Configuration** > **Administrative Templates** > **All Settings** > **Enable Win32 long paths**.    </br></br>For more information long file path support in these versions, see the [Maximum Path Length Limitation](/windows/desktop/FileIO/naming-a-file#maximum-path-length-limitation) section from the Windows 10 developer documentation.    |
|**Windows 10, version 1607 or later**     |  Opt in for the updated **MAX_PATH** functionality. For more information, see [Enable Long Paths in Windows 10 versions 1607 and later](/windows/win32/fileio/naming-a-file#enable-long-paths-in-windows-10-version-1607-and-later).      |

## Deploying the scanner with alternative configurations

The prerequisites listed above are the default requirements for the scanner deployment, and recommended because they support the simplest scanner configuration.

The default requirements should be suitable for initial testing, so that you can check the capabilities of the scanner.

However, in a production environment, your organization's policies may be different than the default requirements. The scanner can accommodate the following changes with additional configuration:

- [Discover and scan all sites and subsites under a specific URL](#discover-and-scan-all-sharepoint-sites-and-subsites-under-a-specific-url)

- [Restriction: The scanner server cannot have internet connectivity](#restriction-the-scanner-server-cannot-have-internet-connectivity)

- [Restriction: The scanner service account cannot be synchronized to Azure Active Directory but the server has internet connectivity](#restriction-the-scanner-service-account-cannot-be-synchronized-to-azure-active-directory-but-the-server-has-internet-connectivity)

- [Restriction: The service account for the scanner cannot be granted the **Log on locally** right](#restriction-the-service-account-for-the-scanner-cannot-be-granted-the-log-on-locally-right)

- [Restriction: You cannot be granted Sysadmin or databases must be created and configured manually](#restriction-you-cannot-be-granted-sysadmin-or-databases-must-be-created-and-configured-manually)

- [Restriction: Your labels do not have auto-labeling conditions](#restriction-your-labels-do-not-have-auto-labeling-conditions)

### Discover and scan all Sharepoint sites and subsites under a specific URL

The scanner can discover and scan all Sharepoint sites and subsites under a specific URL with the following configuration:

1. Start **SharePoint Central Administration**.

1. On the **SharePoint Central Administration** website, in the **Application Management** section, click **Manage web applications**.

1. Click to highlight the web application whose permission policy level you want to manage.

1. Choose the relevant farm and then select **Manage Permissions Policy Levels**.

1. Select **Site Collection Auditor** in the **Site Collection Permissions** options, then grant **View Application Pages** in the Permissions list, and finally, name the new policy level **AIP scanner site collection auditor and viewer**.

1. Add your scanner user to the new policy and grant **Site collection** in the Permissions list.

1. Add a URL of the SharePoint that hosts sites or subsites that need to be scanned. For more information, see [Configure the scanner settings](/azure/information-protection/deploy-scanner-configure-install#configure-the-scanner-settings).

To learn more about how to manage your SharePoint policy levels see, [manage permission policies for a web application](/sharepoint/administration/manage-permission-policies-for-a-web-application).

### Restriction: The scanner server cannot have internet connectivity

While the unified labeling client cannot apply encryption without an internet connection, the scanner can still apply labels based on imported policies.

To support a disconnected computer, use one of the following methods:

- [Use the Azure portal](#use-the-azure-portal-with-a-disconnected-computer) (recommended when possible)

- [Use PowerShell](#use-powershell-with-a-disconnected-computer)

#### Use the Microsoft Purview compliance portal with a disconnected computer

To support a computer that can't connect to the Microsoft Purview compliance portal, perform the following steps:

1.	Configure labels in your policy, and then use the [procedure to support disconnected computers](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#support-for-disconnected-computers) to enable offline classification and labeling.

1. Enable offline management for content jobs as follows:

    **Enable offline management for content scan jobs**:

    1. Set the scanner to function in **offline** mode, using the [Set-AIPScannerConfiguration](/powershell/module/azureinformationprotection/set-aipscannerconfiguration) cmdlet.

    1. Configure the scanner in the compliance portal by creating a scanner cluster. For more information, see [Configure the scanner settings](deploy-scanner-configure-install.md#configure-the-scanner-settings).

    1. Export your content job from the **Information protection - Content scan jobs** pane using the **Export** option.

    1. Import the policy using the [Import-AIPScannerConfiguration](/powershell/module/azureinformationprotection/import-aipscannerconfiguration) cmdlet.

    Results for offline content scan jobs are located at: **%localappdata%\Microsoft\MSIP\Scanner\Reports**

#### Use PowerShell with a disconnected computer

Perform the following procedure to support a disconnected computer using PowerShell only.

> [!IMPORTANT]
> Admins of [Azure China 21Vianet scanner servers](/microsoft-365/admin/services-in-china/parity-between-azure-information-protection#manage-azure-information-protection-content-scan-jobs) *must* use this procedure in order to manage their content scan jobs.
>

**Manage your content scan jobs using PowerShell only**:

1. Set the scanner to function in **offline** mode, using the [Set-AIPScannerConfiguration](/powershell/module/azureinformationprotection/set-aipscannerconfiguration) cmdlet.

1. Create a new content scan job using the [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob) cmdlet, making sure to use the mandatory `-Enforce On` parameter.

1. Add your repositories using the [Add-AIPScannerRepository](/powershell/module/azureinformationprotection/add-aipscannerrepository) cmdlet, with the path to the repository you want to add.

    > [!TIP]
    > To prevent the repository from inheriting settings from your content scan job, add the `OverrideContentScanJob On` parameter, as well as values for additional settings.
    >
    > To edit details for an existing repository, use the [Set-AIPScannerRepository](/powershell/module/azureinformationprotection/set-aipscannerrepository) command.
    >
 
1. Use the [Get-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/get-aipscannercontentscanjob) and [Get-AIPScannerRepository](/powershell/module/azureinformationprotection/get-aipscannerrepository) cmdlets to return information about your content scan job's current settings. 

1. Use the [Set-AIPScannerRepository](/powershell/module/azureinformationprotection/set-aipscannerrepository) command to update details for an existing repository.

1. Run your content scan job immediately if needed, using the [Start-AIPScan](/powershell/module/azureinformationprotection/start-aipscan) cmdlet. 

    Results for offline content scan jobs are located at: **%localappdata%\Microsoft\MSIP\Scanner\Reports**

1. If you need to remove a repository or an entire content scan job, use the following cmdlets:

    - [Remove-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/remove-aipscannercontentscanjob)
    - [Remove-AIPScannerRepository](/powershell/module/azureinformationprotection/remove-aipscannerrepository)

### Restriction: You cannot be granted Sysadmin or databases must be created and configured manually

Use the following procedures to manually create databases and grant the **db_owner** role, as needed.

- [Procedure for the scanner database](#manually-create-a-database-and-user-for-the-scanner-and-grant-db_owner-rights)

If you can be granted the Sysadmin role *temporarily* to install the scanner, you can remove this role when the scanner installation is complete.

Do one of the following, depending on your organization's requirements:

|Restriction  |Description  |
|---------|---------|
|**You can have the Sysadmin role temporarily**     |  If you temporarily have the Sysadmin role, the database is automatically created for you and the service account for the scanner is automatically granted the required permissions. <br><br>However, the user account that configures the scanner still requires the **db_owner** role for the scanner configuration database. If you only have the Sysadmin role until the scanner installation is complete, grant the **db_owner** role to the user account manually.       |
|**You cannot have the Sysadmin role at all**     |  If you cannot be granted the Sysadmin role even temporarily, you must ask a user with Sysadmin rights to manually create a database before you install the scanner. <br><br>For this configuration, the **db_owner** role must be assigned to the following accounts: <br>- Service account for the scanner<br>- User account for the scanner installation<br>- User account for scanner configuration <br><br>Typically, you will use the same user account to install and configure the scanner. If you use different accounts, they both require the **db_owner** role for the scanner configuration database. Create this user and rights as needed. If you specify your own cluster name, the configuration database is named **AIPScannerUL_<cluster_name>**.  |

Additionally:

- You must be a local administrator on the server that will run the scanner
- The service account that will run the scanner must be granted Full Control permissions to the following registry keys:

    - `HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\MSIPC\Server`
    - `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSIPC\Server`

If, after configuring these permissions, you see an error when you install the scanner, the error can be ignored and you can manually start the scanner service.

#### Manually create a database and user for the scanner, and grant db_owner rights

If you need to manually create your scanner database and/or create a user and grant **db_owner** rights on the database, ask your Sysadmin to perform the following steps:

1. Create a database for scanner:

    ```sql
    **CREATE DATABASE AIPScannerUL_[clustername]**

    **ALTER DATABASE AIPScannerUL_[clustername] SET TRUSTWORTHY ON**
    ```

2. Grant rights to the user that runs the installation command and is used to run scanner management commands. Use the following script:

    ```sql
    if not exists(select * from master.sys.server_principals where sid = SUSER_SID('domain\user')) BEGIN declare @T nvarchar(500) Set @T = 'CREATE LOGIN ' + quotename('domain\user') + ' FROM WINDOWS ' exec(@T) END
    USE DBName IF NOT EXISTS (select * from sys.database_principals where sid = SUSER_SID('domain\user')) BEGIN declare @X nvarchar(500) Set @X = 'CREATE USER ' + quotename('domain\user') + ' FROM LOGIN ' + quotename('domain\user'); exec sp_addrolemember 'db_owner', 'domain\user' exec(@X) END
    ```

3. Grant rights to scanner service account. Use the following script:

    ```sql
    if not exists(select * from master.sys.server_principals where sid = SUSER_SID('domain\user')) BEGIN declare @T nvarchar(500) Set @T = 'CREATE LOGIN ' + quotename('domain\user') + ' FROM WINDOWS ' exec(@T) END
    ```

### Restriction: The service account for the scanner cannot be granted the **Log on locally** right

If your organization policies prohibit the **Log on locally** right for service accounts, use the *OnBehalfOf* parameter with Set-AIPAuthentication.

For more information, see [How to label files non-interactively for Azure Information Protection](/azure/information-protection/rms-client/clientv2-admin-guide-powershell#how-to-label-files-non-interactively-for-azure-information-protection).

### Restriction: The scanner service account cannot be synchronized to Azure Active Directory but the server has internet connectivity

You can have one account to run the scanner service and use another account to authenticate to Azure Active Directory:

- **For the scanner service account**, use a local Windows account or an Active Directory account.

- **For the Azure Active Directory account**, specify the AAD user in the [Set-AIPAuthentication](/powershell/module/azureinformationprotection/set-aipauthentication) cmdlet, in the *DelegatedUser* parameter. 

    If you are running the scan under any user other than the scanner account, make sure to specify the scanner account in *OnBehalfOf* parameter as well. 

    For more information, see [How to label files non-interactively for Azure Information Protection](/azure/information-protection/rms-client/clientv2-admin-guide-powershell#how-to-label-files-non-interactively-for-azure-information-protection).

### Restriction: Your labels do not have auto-labeling conditions

If your labels do not have any auto-labeling conditions, plan to use one of the following options when configuring your scanner:

|Option  |Description  |
|---------|---------|
|**Discover all info types**     |  In your [content scan job](deploy-scanner-configure-install.md#create-a-content-scan-job), set the **Info types to be discovered** option to **All**. </br></br>This option sets the content scan job to scan your content for all sensitive information types.      |
|**Use recommended labeling**     |  In your [content scan job](deploy-scanner-configure-install.md#create-a-content-scan-job), set the **Treat recommended labeling as automatic** option to **On**.</br></br> This setting configures the scanner to automatically apply all recommended labels on your content.      |
|**Define a default label**     |   Define a default label in your [policy](sensitivity-labels.md#what-label-policies-can-do), [content scan job](deploy-scanner-configure-install.md#create-a-content-scan-job), or [repository](deploy-scanner-configure-install.md#apply-a-default-label-to-all-files-in-a-data-repository). </br></br>In this case the scanner applies the default label on all files found.       |

## Next steps

Once you've confirmed that your system complies with the scanner prerequisites, continue with [Configuring and installing the information protection scanner](deploy-scanner-configure-install.md).

For an overview about the scanner, see [Learn about the information protection scanner](deploy-scanner.md).