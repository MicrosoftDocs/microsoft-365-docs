---
title: "Install and configure the Microsoft Purview Information Protection scanner"
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
description: Learn how to install and configure the Microsoft Purview Information Protection scanner to discover, classify, and protect files on data stores.
---

# Configuring and installing the information protection scanner

> [!NOTE]
> The Microsoft Purview Information Protection scanner was formerly named Azure Information Protection unified labeling scanner, or the on-premises scanner. Configuration has moved from the Azure portal to the Microsoft Purview compliance portal.

This article describes how to configure and install the Microsoft Purview Information Protection scanner, formerly named Azure Information Protection unified labeling scanner, or the on-premises scanner.

> [!TIP]
> While most customers will perform these procedures in the admin portal, you may need to work in PowerShell only.
>
> For example, if you are working in an environment without access to the admin portal, such as [Azure China 21Vianet scanner servers](/microsoft-365/admin/services-in-china/parity-between-azure-information-protection#manage-azure-information-protection-content-scan-jobs), follow the instructions in [Use PowerShell to configure the scanner](#use-powershell-to-configure-the-scanner).
>

## Overview

Before you start, verify that your system complies with the [required prerequisites](deploy-scanner-prereqs.md).

Then, use the following steps to configure and install the scanner:

1. [Configure the scanner settings](#configure-the-scanner-settings)

2. [Install the scanner](#install-the-scanner)

3. [Get an Azure AD token for the scanner](#get-an-azure-ad-token-for-the-scanner)

4. [Configure the scanner to apply classification and protection](#configure-the-scanner-to-apply-classification-and-protection)

Next, perform the following configuration procedures as needed for your system:

|Procedure  |Description  |
|---------|---------|
|[Change which file types to protect](#change-which-file-types-to-protect) |You may want to scan, classify, or protect different file types than the default. For more information, see [The scanning process](deploy-scanner.md#the-scanning-process). |
|[Upgrading your scanner](#upgrade-your-scanner) | Upgrade your scanner to use the latest features and improvements.|
|[Editing data repository settings in bulk](#edit-data-repository-settings-in-bulk)| Use import and export options to make changes in bulk for multiple data repositories.|
|[Use the scanner with alternative configurations](#use-the-scanner-with-alternative-configurations)| Use the scanner without configuring labels with any conditions |
|[Optimize performance](#optimize-scanner-performance)| Guidance to optimize your scanner performance|

If you don't have access to the scanner pages in the compliance portal, configure any scanner settings in PowerShell only. For more information, see [Use PowerShell to configure the scanner](#use-powershell-to-configure-the-scanner) and [Supported PowerShell cmdlets](#supported-powershell-cmdlets).


## Configure the scanner settings

Before you install the scanner, or upgrade it from an older general availability version, configure or verify your scanner settings.

**To configure your scanner in the Microsoft Purview compliance portal:**

1. Sign in to the [Microsoft Purview compliance portal](https://compliance.microsoft.com) with one of the following roles:

    - **Global administrator**
    - **Compliance administrator**
    - **Compliance data administrator**
    - **Security administrator**
    - **Security operator**
    - **Security reader**
    - **Global reader**

    Then, navigate to the **Settings** pane.

    Within the **Settings** pane, select **Information protection scanner**.

2. [Create a scanner cluster](#create-a-scanner-cluster). This cluster defines your scanner and is used to identify the scanner instance, such as during installation, upgrades, and other processes.

3. [Create a content scan job](#create-a-content-scan-job) to define the repositories you want to scan.

### Create a scanner cluster

**To create a scanner cluster in the Microsoft Purview compliance portal:**

1. From the tabs on the **Information protection scanner** page, select **Clusters**.

2. On the **Clusters** tab, select **Add** ![add icon](../media/i-add.png "add icon").

3. On the **New cluster** pane, enter a meaningful name for the scanner, and an optional description.

    The cluster name is used to identify the scanner's configurations and repositories. For example, you might enter **Europe** to identify the geographical locations of the data repositories you want to scan.

    You'll use this name later on to identify where you want to install or upgrade your scanner.

4. Select **Save** to save your changes.

### Create a content scan job

Deep dive into your content to scan specific repositories for sensitive content.

**To create your content scan job on the Microsoft Purview compliance portal:**

1. From the tabs on the **Information protection scanner** page, select **Content scan jobs**.

2. On the **Content scan jobs** pane, select **Add** ![add icon](../media/i-add.png "save icon").

3. For this initial configuration, configure the following settings, and then select **Save**.

    |Setting  |Description  |
    |---------|---------|
    |**Content scan job settings**     |    - **Schedule**: Keep the default of **Manual** <br />- **Info types to be discovered**: Change to **Policy only**
    |**DLP policy** | If you're using a data loss prevention policy, set **Enable DLP rules** to **On**. For more information, see [Use a DLP policy](#use-a-dlp-policy). |
    |**Sensitivity policy**     | - **Enforce sensitivity labeling policy**: Select **Off** <br />- **Label files based on content**: Keep the default of **On** <br />- **Default label**: Keep the default of **Policy default** <br />- **Relabel files**: Keep the default of **Off**        |
    |**Configure file settings**     | - **Preserve "Date modified", "Last modified" and "Modified by"**: Keep the default of **On** <br />- **File types to scan**: Keep the default file types for **Exclude** <br />- **Default owner**: Keep the default of **Scanner Account**  <br /> - **Set repository owner**: Use this option only when [using a DLP policy](#use-a-dlp-policy). |
    | | |


4. Open the content scan job that was saved, and select the **Repositories** tab to specify the data stores to be scanned. 

    Specify UNC paths and SharePoint Server URLs for SharePoint on-premises document libraries and folders.

    > [!NOTE]
    > SharePoint Server 2019, SharePoint Server 2016, and SharePoint Server 2013 are supported for SharePoint. SharePoint Server 2010 is also supported when you have [extended support for this version of SharePoint](https://support.microsoft.com/lifecycle/search?alpha=SharePoint%20Server%202010).
    >
    To add your first data store, while on the **Repositories** tab:

    1. On the **Repositories** pane, select **Add**:

    2. On the **Repository** pane, specify the path for the data repository, and then select **Save**.


        - For a network share, use `\\Server\Folder`.
        - For a SharePoint library, use `http://sharepoint.contoso.com/Shared%20Documents/Folder`.
        - For a local path: `C:\Folder`
        - For a UNC path: `\\Server\Folder`

    > [!NOTE]
    > Wildcards are not supported and WebDav locations are not supported.
    >

    If you add a SharePoint path for **Shared Documents**:
    - Specify **Shared Documents** in the path when you want to scan all documents and all folders from Shared Documents.
    For example: `http://sp2013/SharedDocuments`
    - Specify **Documents** in the path when you want to scan all documents and all folders from a subfolder under Shared Documents.
    For example: `http://sp2013/Documents/SalesReports`
    - Or, specify only the **FQDN** of your Sharepoint, for example `http://sp2013` to [discover and scan all SharePoint sites and subsites under a specific URL](deploy-scanner-prereqs.md#discover-and-scan-all-sharepoint-sites-and-subsites-under-a-specific-url) and subtitles under this URL. Grant scanner **Site Collector Auditor** rights to enable this.
    >


    For the remaining settings on this pane, don't change them for this initial configuration, but keep them as **Content scan job default**. The default setting means that the data repository inherits the settings from the content scan job.

    Use the following syntax when adding SharePoint paths:

    |Path  |Syntax  |
    |---------|---------|
    |**Root path**     | `http://<SharePoint server name>` <br /><br />Scans all sites, including any site collections allowed for the scanner user. <br />Requires [additional permissions](deploy-scanner-prereqs.md#discover-and-scan-all-sharepoint-sites-and-subsites-under-a-specific-url) to automatically discover root content        |
    |**Specific SharePoint subsite or collection**     | One of the following: <br />- `http://<SharePoint server name>/<subsite name>` <br />- `http://SharePoint server name>/<site collection name>/<site name>` <br /><br />Requires [additional permissions](deploy-scanner-prereqs.md#discover-and-scan-all-sharepoint-sites-and-subsites-under-a-specific-url) to automatically discover site collection content         |
    |**Specific SharePoint library**     | One of the following: <br />- `http://<SharePoint server name>/<library name>` <br />- `http://SharePoint server name>/.../<library name>`       |
    |**Specific SharePoint folder**     | `http://<SharePoint server name>/.../<folder name>`        |
    | | |

5. Repeat the previous steps to add as many repositories as needed.

You're now ready to install the scanner with the content scanner job that you've created. Continue with [Install the scanner](#install-the-scanner).

## Install the scanner

After you've [configured the scanner](#configure-the-scanner-settings), perform the following steps to install the scanner. This procedure is performed fully in PowerShell.

1. Sign in to the Windows Server computer that will run the scanner. Use an account that has local administrator rights and that has permissions to write to the SQL Server master database.

    > [!IMPORTANT]
    > You must have the AIP unified labeling client installed on your machine before installing the scanner.
    >
    > For more information, see [Prerequisites for installing and deploying the information protection scanner](deploy-scanner-prereqs.md).
    >

2. Open a Windows PowerShell session with the **Run as an administrator** option.

3. Run the [Install-AIPScanner](/powershell/module/azureinformationprotection/Install-AIPScanner) cmdlet, specifying your SQL Server instance on which to create a database for the Azure Information Protection scanner, and the scanner cluster name that you [specified in the preceding section](#create-a-scanner-cluster):

    ```PowerShell
    Install-AIPScanner -SqlServerInstance <name> -Cluster <cluster name>
    ```

    Examples, using the scanner cluster name of **Europe**:

    - For a default instance: `Install-AIPScanner -SqlServerInstance SQLSERVER1 -Cluster Europe`

    - For a named instance: `Install-AIPScanner -SqlServerInstance SQLSERVER1\AIPSCANNER -Cluster Europe`

    - For SQL Server Express: `Install-AIPScanner -SqlServerInstance SQLSERVER1\SQLEXPRESS -Cluster Europe`

    When you're prompted, provide the Active Directory credentials for the scanner service account.

    Use the following syntax: `\<domain\user name>`. For example: `contoso\scanneraccount`

4. Verify that the service is now installed by using **Administrative Tools** > **Services**.

    The installed service is named **Azure Information Protection Scanner** and is configured to run by using the scanner service account that you created.

Now that you've installed the scanner, you need to [get an Azure AD token for the scanner](#get-an-azure-ad-token-for-the-scanner) service account to authenticate, so that the scanner can run unattended.

## Get an Azure AD token for the scanner

An Azure AD token allows the scanner to authenticate to the Azure Information Protection service, enabling the scanner to run non-interactively.

For more information, see [How to label files non-interactively for Azure Information Protection](/azure/information-protection/rms-client/clientv2-admin-guide-powershell#how-to-label-files-non-interactively-for-azure-information-protection).

**To get an Azure AD token**:

1. Open the [Azure portal](https://portal.azure.com/) to create an Azure AD application to specify an access token for authentication.

2. From the Windows Server computer, if your scanner service account has been granted the **Log on locally** right for the installation, sign in with this account and start a PowerShell session.

    Run [Set-AIPAuthentication](/powershell/module/azureinformationprotection/set-aipauthentication), specifying the values that you copied from the previous step:

    ```PowerShell
    Set-AIPAuthentication -AppId <ID of the registered app> -AppSecret <client secret sting> -TenantId <your tenant ID> -DelegatedUser <Azure AD account>
    ```

    For example:

    ```PowerShell
    $pscreds = Get-Credential CONTOSO\scanner
    Set-AIPAuthentication -AppId "77c3c1c3-abf9-404e-8b2b-4652836c8c66" -AppSecret "OAkk+rnuYc/u+]ah2kNxVbtrDGbS47L4" -DelegatedUser scanner@contoso.com -TenantId "9c11c87a-ac8b-46a3-8d5c-f4d0b72ee29a" -OnBehalfOf $pscreds
    Acquired application access token on behalf of CONTOSO\scanner.
    ```

    > [!TIP]
    > If your scanner service account cannot be granted the **Log on locally** right for the installation, use the *OnBehalfOf* parameter with [Set-AIPAuthentication](/powershell/module/azureinformationprotection/set-aipauthentication), as described in [How to label files non-interactively for Azure Information Protection](/azure/information-protection/rms-client/clientv2-admin-guide-powershell#how-to-label-files-non-interactively-for-azure-information-protection).
    >

The scanner now has a token to authenticate to Azure AD. This token is valid for one year, two years, or never, according to your configuration of the **Web app /API** client secret in Azure AD. When the token expires, you must repeat this procedure.

Continue using one of the following steps, depending on whether you're using the compliance portal to configure your scanner, or PowerShell only:

# [Admin portal only](#tab/azure-portal-only)

You're now ready to run your first scan in discovery mode. For more information, see [Run a discovery cycle and view reports for the scanner](deploy-scanner-manage.md#run-a-discovery-cycle-and-view-reports-for-the-scanner).

Once you've run your initial discovery scan, continue with [Configure the scanner to apply classification and protection](#configure-the-scanner-to-apply-classification-and-protection).

# [PowerShell only](#tab/powershell-only)

If you are configuring and installing your scanner using PowerShell instead of the scanner pages in the compliance portal, continue with step 5 in [Use PowerShell to configure the scanner](#powershell).

Then:

- [Run a discovery cycle and view reports for the scanner](deploy-scanner-manage.md#run-a-discovery-cycle-and-view-reports-for-the-scanner)
- [Use PowerShell to configure the scanner to apply classification and protection](#use-powershell-to-configure-the-scanner-to-apply-classification-and-protection)
- [Use PowerShell to configure a DLP policy with the scanner](#use-powershell-to-configure-a-dlp-policy-with-the-scanner)

---

> [!NOTE]
> For more information, see [How to label files non-interactively for Azure Information Protection](/azure/information-protection/rms-client/clientv2-admin-guide-powershell#how-to-label-files-non-interactively-for-azure-information-protection)



## Configure the scanner to apply classification and protection

The default settings configure the scanner to run once, and in reporting-only mode. To change these settings, edit the content scan job.

> [!TIP]
> If you're working in PowerShell only, see [Configure the scanner to apply classification and protection - PowerShell only](#use-powershell-to-configure-the-scanner-to-apply-classification-and-protection).
>

**To configure the scanner to apply classification and protection in the Microsoft Purview compliance portal**:

1. In the Microsoft Purview compliance portal, on the **Content scan jobs** tab, select a specific content scan job to edit it.

2. Select the content scan job, change the following, and then select **Save**:

   - From the **Content scan job** section: Change the **Schedule** to **Always**
   - From the **Enforce sensitivity labeling policy** section: Change the radio button to **On**

3. Make sure a node for the content scan job is online, then start the content scan job again by selecting **Scan now**. The **Scan now** button only appears when a node for the selected content scan job is online. 

The scanner is now scheduled to run continuously. When the scanner works its way through all configured files, it automatically starts a new cycle so that any new and changed files are discovered.

## Use a DLP policy

Using a data loss prevention policy enables the scanner to detect potential data leaks by matching DLP rules to files stored in file shares and SharePoint Server.

- **Enable DLP rules in your content scan job** to reduce the exposure of any files that match your DLP policies. When your DLP rules are enabled, the scanner may reduce file access to data owners only, or reduce exposure to network-wide groups, such as **Everyone**, **Authenticated Users**, or **Domain Users**.

- **In the Microsoft Purview compliance portal**, determine whether you are just testing your DLP policy or whether you want your rules enforced and your file permissions changed according to those rules. For more information, see [Turn on a DLP policy](create-test-tune-dlp-policy.md#turn-on-a-dlp-policy).

DLP policies are configured in the Microsoft Purview compliance portal. For more information about DLP licensing, see [Get started with the data loss prevention on-premises scanner](dlp-on-premises-scanner-get-started.md).

> [!TIP]
> Scanning your files, even when just testing the DLP policy, also creates file permission reports. Query these reports to investigate specific file exposures or explore the exposure of a specific user to scanned files.
>
> To use PowerShell only, see [Use a DLP policy with the scanner - PowerShell only](#use-powershell-to-configure-a-dlp-policy-with-the-scanner).
>

**To use a DLP policy with the scanner in the Microsoft Purview compliance portal**:

1. In the Microsoft Purview compliance portal, navigate to the **Content scan jobs** tab and select a specific content scan job. For more information, see [Create a content scan job](#create-a-content-scan-job).

2. Under **Enable DLP policy rules**, set the radio button to **On**.
    
    > [!IMPORTANT]
    > Do not set **Enable DLP rules** to **On** unless you actually have a DLP policy configured in Microsoft 365.
    >
    >Turning this feature on without a DLP policy will cause the scanner to generate errors.

3. (Optional) Set the **Set repository owner** to **On**, and define a specific user as the repository owner.
    
    This option enables the scanner to reduce the exposure of any files found in this repository, which match the DLP policy, to the repository owner defined.

### DLP policies and *make private* actions

If you are using a DLP policy with a *make private* action, and are also planning to use the scanner to automatically label your files, we recommend that you also define the unified labeling client's [**UseCopyAndPreserveNTFSOwner**](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#preserve-ntfs-owners-during-labeling-public-preview) advanced setting.

This setting ensures that the original owners retain access to their files.

For more information, see [Create a content scan job](#create-a-content-scan-job) and  [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md).

## Change which file types to protect

By default the scanner protects Office file types and PDF files only.

Use PowerShell commands to change this behavior as needed, such as to configure the scanner to protect all file types, just as the client does, or to protect additional, specific file types.

For a label policy that applies to the user account downloading labels for the scanner, specify a PowerShell advanced setting named **PFileSupportedExtensions**.

For a scanner that has access to the internet, this user account is the account that you specify for the *DelegatedUser* parameter with the Set-AIPAuthentication command.

**Example 1**:  PowerShell command for the scanner to protect all file types, where your label policy is named "Scanner":

```PowerShell
Set-LabelPolicy -Identity Scanner -AdvancedSettings @{PFileSupportedExtensions="*"}
```

**Example 2**: PowerShell command for the scanner to protect .xml files and .tiff files in addition to Office files and PDF files, where your label policy is named "Scanner":

```PowerShell
Set-LabelPolicy -Identity Scanner -AdvancedSettings @{PFileSupportedExtensions=ConvertTo-Json(".xml", ".tiff")}
```

For more information, see [Change which file types to protect](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#change-which-file-types-to-protect).

## Upgrade your scanner

If you've previously installed the scanner and want to upgrade, use the instructions described in [Upgrading the information protection scanner](/previous-versions/azure/information-protection/rms-client/client-admin-guide#upgrading-the-azure-information-protection-scanner).

Then, [configure](deploy-scanner-configure-install.md) and [use your scanner](deploy-scanner-manage.md) as usual, skipping the steps to install your scanner.

## Edit data repository settings in bulk

Use the **Export** and **Import** buttons to make changes for your scanner across several repositories.

This way, you don't need to make the same changes several times, manually, in the Azure portal or Microsoft Purview compliance portal.

For example, if you've a new file type on several SharePoint data repositories, you may want to update the settings for those repositories in bulk.

**To make changes in bulk across repositories in the Microsoft Purview compliance portal:**

1. In the Microsoft Purview compliance portal, select a specific content scan job and navigate to the **Repositories** tab within the pane. Select the **Export** option.

2. Manually edit the exported file to make your change.

3. Use the **Import** option on the same page to import the updates back across your repositories.

## Use the scanner with alternative configurations

The scanner usually looks for conditions specified for your labels in order to classify and protect your content as needed.

In the following scenarios, the scanner is also able to scan your content and manage labels, without any conditions configured:

- [Apply a default label to all files in a data repository](#apply-a-default-label-to-all-files-in-a-data-repository)
- [Remove existing labels from all files in a data repository](#remove-existing-labels-from-all-files-in-a-data-repository)
- [Identify all custom conditions and known sensitive information types](#identify-all-custom-conditions-and-known-sensitive-information-types)

### Apply a default label to all files in a data repository

In this configuration, all unlabeled files in the repository are labeled with the default label specified for the repository or the content scan job. Files are labeled without inspection.

Configure the following settings:

|Setting  |Description  |
|---------|---------|
|**Label files based on content**    |Set to **Off**         |
|**Default label**     | Set to **Custom**, and then select the label to use       |
|**Enforce default label**     | Select to have the default label applied to all files, even if they're already labeled by turning **Relabel files** and **Enforce default label** on        |

### Remove existing labels from all files in a data repository

In this configuration, all existing labels are removed, including protection, if protection was applied with the label. Protection applied independently of a label is retained.

Configure the following settings:

|Setting  |Description  |
|---------|---------|
|**Label files based on content**    |Set to **Off**         |
|**Default label**     | Set to **None**  |
|**Relabel files** | Set to **On**, with the **Enforce default label** set to **On**|

### Identify all custom conditions and known sensitive information types

This configuration enables you to find sensitive information that you might not realize you had, at the expense of scanning rates for the scanner.

Set the **Info types to be discovered** to **All**.

To identify conditions and information types for labeling, the scanner uses any custom sensitive information types specified, and the list of built-in sensitive information types that are available to select, as defined in your labeling management center.

## Optimize scanner performance

> [!NOTE]
> If you're looking to improve the responsiveness of the scanner computer rather than the scanner performance, use an advanced client setting to [limit the number of threads used by the scanner](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#limit-the-number-of-threads-used-by-the-scanner).

Use the following options and guidance to help you optimize scanner performance:

|Option  |Description  |
|---------|---------|
|**Have a high speed and reliable network connection between the scanner computer and the scanned data store**     |  For example, place the scanner computer in the same LAN, or preferably, in the same network segment as the scanned data store. <br /><br />The quality of the network connection affects the scanner performance because, to inspect the files, the scanner transfers the contents of the files to the computer running the scanner service. <br /><br />Reducing or eliminating  the network hops required for the data to travel also reduces the load on your network.      |
|**Make sure the scanner computer has available processor resources**     | Inspecting the file contents and encrypting and decrypting files are processor-intensive actions. <br /><br />Monitor the typical scanning cycles for your specified data stores to identify whether a lack of processor resources is negatively affecting the scanner performance.        |
|**Install multiple instances of the scanner** | The scanner supports multiple configuration databases on the same SQL server instance when you specify a custom cluster name for the scanner. <br /><br />**Tip**: Multiple scanners can also share the same cluster, resulting in quicker scanning times. If you plan to install the scanner on multiple machines with the same database instance, and want your scanners to run in parallel, you must install all your scanners using the same cluster name.|
|**Check your alternative configuration usage** |The scanner runs more quickly when you use the [alternative configuration](#use-the-scanner-with-alternative-configurations) to apply a default label to all files because the scanner doesn't inspect the file contents. <br/><br />The scanner runs more slowly when you use the [alternative configuration](#use-the-scanner-with-alternative-configurations) to identify all custom conditions and known sensitive information types.|

### Additional factors that affect performance

Additional factors that affect the scanner performance include:

|Factor  |Description  |
|---------|---------|
|**Load/response times**     |The current load and response times of the data stores that contain the files to scan will also affect scanner performance.         |
|**Scanner mode** (Discovery / Enforce)    | Discovery mode typically has a higher scanning rate than enforce mode. <br /><br />Discovery requires a single file read action, whereas enforce mode requires read and write actions.        |
|**Policy changes**     |Your scanner performance may be affected if you've made changes to the autolabeling in the label policy. <br /><br />Your first scan cycle, when the scanner must inspect every file, will take longer than subsequent scan cycles that by default, inspect only new and changed files. <br /><br />If you change the conditions or autolabeling settings, all files are scanned again. For more information, see [Rescanning files](deploy-scanner-manage.md#rescanning-files).|
|**Regex constructions**    | Scanner performance is affected by how your regex expressions for custom conditions are constructed. <br /><br /> To avoid heavy memory consumption and the risk of timeouts (15 minutes per file), review your regex expressions for efficient pattern matching. <br /><br />For example: <br />- Avoid [greedy quantifiers](/dotnet/standard/base-types/quantifiers-in-regular-expressions) <br />- Use non-capturing groups such as `(?:expression)` instead of `(expression)`    |
|**Log level**     |  Log level options include **Debug**, **Info**, **Error** and **Off** for the scanner reports.<br /><br />- **Off** results in the best performance <br />- **Debug** considerably slows down the scanner and should be used only for troubleshooting. <br /><br />For more information, see the *ReportLevel* parameter for the [Set-AIPScannerConfiguration](/powershell/module/azureinformationprotection/Set-AIPScannerConfiguration) cmdlet.       |
|**Files being scanned**     |- With the exception of Excel files, Office files are more quickly scanned than PDF files. <br /><br />- Unprotected files are quicker to scan than protected files. <br /><br />- Large files obviously take longer to scan than small files.         |

## Use PowerShell to configure the scanner

This section describes the steps required to configure and install the scanner when you don't have access to the scanner pages in the Microsoft Purview compliance portal, and must use PowerShell only.

> [!IMPORTANT]
> - Some steps require Powershell whether or not you are able to access the scanner pages in the compliance portal, and are identical. For these steps, see the earlier instructions in this article as indicated.
>
> - If you're working with the scanner for Azure China 21Vianet, additional steps are required in addition to the instructions detailed here. For more information, see [Azure Information Protection support for Office 365 operated by 21Vianet](/microsoft-365/admin/services-in-china/parity-between-azure-information-protection).

For more information, see [Supported PowerShell cmdlets](#supported-powershell-cmdlets).

**To configure and install your scanner**:

1. Start with PowerShell closed. If you've previously installed the AIP client and scanner, make sure that the **AIPScanner** service is stopped.

2. Open a Windows PowerShell session with the **Run as an administrator** option.

3. Run the [Install-AIPScanner](/powershell/module/azureinformationprotection/install-aipscanner) command to install your scanner on your SQL server instance, with the **Cluster** parameter to define your cluster name.

    This step is identical whether or not you're able to access the scanner pages in the compliance portal. For more information, see the earlier instructions in this article: [Install the scanner](#install-the-scanner)

4. Get an Azure token to use with your scanner, and then reauthenticate. 

    This step is identical whether or not you're able to access the scanner pages in the compliance portal. For more information, see the earlier instructions in this article: [Get an Azure AD token for the scanner](#get-an-azure-ad-token-for-the-scanner).

5. <a name="powershell"></a>Run the [Set-AIPScannerConfiguration](/powershell/module/azureinformationprotection/set-aipscannerconfiguration) cmdlet to set the scanner to function in offline mode. Run:

    ```powershell
    Set-AIPScannerConfiguration -OnlineConfiguration Off
    ```

6. Run the [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob) cmdlet to create a default content scan job.

    The only required parameter in the **Set-AIPScannerContentScanJob** cmdlet is **Enforce**. However, you might want to define other settings for your content scan job at this time. For example:

    ```powershell
    Set-AIPScannerContentScanJob -Schedule Manual -DiscoverInformationTypes PolicyOnly -Enforce Off -DefaultLabelType PolicyDefault -RelabelFiles Off -PreserveFileDetails On -IncludeFileTypes '' -ExcludeFileTypes '.msg,.tmp' -DefaultOwner <account running the scanner>
    ```

    The syntax above configures the following settings while you continue the configuration:

    - Keeps the scanner run scheduling to *manual*
    - Sets the information types to be discovered based on the sensitivity label policy
    - Does *not* enforce a sensitivity label policy
    - Automatically labels files based on content, using the default label defined for the sensitivity label policy
    - Does *not* allow for relabeling files
    - Preserves file details while scanning and auto-labeling, including *date modified*, *last modified*, and *modified by* values
    - Sets the scanner to exclude .msg and .tmp files when running
    - Sets the default owner to the account you want to use when running the scanner

7. Use the [Add-AIPScannerRepository](/powershell/module/azureinformationprotection/add-aipscannerrepository) cmdlet to define the repositories you want to scan in your content scan job. For example, run:

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

    If you add a SharePoint path for **Shared Documents**:
    - Specify **Shared Documents** in the path when you want to scan all documents and all folders from Shared Documents.
    For example: `http://sp2013/SharedDocuments`
    - Specify **Documents** in the path when you want to scan all documents and all folders from a subfolder under Shared Documents.
    For example: `http://sp2013/Documents/SalesReports`
    - Or, specify only the **FQDN** of your Sharepoint, for example `http://sp2013` to [discover and scan all SharePoint sites and subsites under a specific URL](deploy-scanner-prereqs.md#discover-and-scan-all-sharepoint-sites-and-subsites-under-a-specific-url) and subtitles under this URL. Grant scanner **Site Collector Auditor** rights to enable this.


    Use the following syntax when adding SharePoint paths:

    |Path  |Syntax  |
    |---------|---------|
    |**Root path**     | `http://<SharePoint server name>` <br /><br />Scans all sites, including any site collections allowed for the scanner user. <br />Requires [additional permissions](/previous-versions/azure/information-protection/quickstart-findsensitiveinfo#permission-users-to-scan-sharepoint-repositories) to automatically discover root content        |
    |**Specific SharePoint subsite or collection**     | One of the following: <br />- `http://<SharePoint server name>/<subsite name>` <br />- `http://SharePoint server name>/<site collection name>/<site name>` <br /><br />Requires [additional permissions](/previous-versions/azure/information-protection/quickstart-findsensitiveinfo#permission-users-to-scan-sharepoint-repositories) to automatically discover site collection content         |
    |**Specific SharePoint library**     | One of the following: <br />- `http://<SharePoint server name>/<library name>` <br />- `http://SharePoint server name>/.../<library name>`       |
    |**Specific SharePoint folder**     | `http://<SharePoint server name>/.../<folder name>`        |

Continue with the following steps as needed:

- [Configuration for customers in China](/microsoft-365/admin/services-in-china/parity-between-azure-information-protection)
- [Run a discovery cycle and view reports for the scanner](deploy-scanner-manage.md#run-a-discovery-cycle-and-view-reports-for-the-scanner)
- [Use PowerShell to configure the scanner to apply classification and protection](#use-powershell-to-configure-the-scanner-to-apply-classification-and-protection)
- [Use PowerShell to configure a DLP policy with the scanner](#use-powershell-to-configure-a-dlp-policy-with-the-scanner)

### Use PowerShell to configure the scanner to apply classification and protection

1. Run the [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob) cmdlet to update your content scan job to set your scheduling to always and enforce your sensitivity policy.

    ```powershell
    Set-AIPScannerContentScanJob -Schedule Always -Enforce On
    ```

    > [!TIP]
    > You may want to change other settings on this pane, such as whether file attributes are changed and whether the scanner can relabel files. For more information about the settings available, see the full [PowerShell documentation](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob).

2. Run the [Start-AIPScan](/powershell/module/azureinformationprotection/start-aipscan) cmdlet to run your content scan job:

    ```PowerShell
    Start-AIPScan
    ```

The scanner is now scheduled to run continuously. When the scanner works its way through all configured files, it automatically starts a new cycle so that any new and changed files are discovered.

### Use PowerShell to configure a DLP policy with the scanner

Run the [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob) cmdlet again with the **-EnableDLP** parameter set to **On**, and with a specific repository owner defined.

For example:

```powershell
Set-AIPScannerContentScanJob -EnableDLP On -RepositoryOwner 'domain\user'
```

## Supported PowerShell cmdlets

This section lists PowerShell cmdlets supported for the information protection scanner and instructions for configuring and installing the scanner with PowerShell only.

Supported cmdlets for the scanner include:

- [Add-AIPScannerRepository](/powershell/module/azureinformationprotection/add-aipscannerrepository)

- [Export-AIPLogs](/powershell/module/azureinformationprotection/Export-AIPLogs)

- [Get-AIPScannerConfiguration](/powershell/module/azureinformationprotection/Get-AIPScannerConfiguration)

- [Get-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/get-aipscannercontentscanjob)

- [Get-AIPScannerRepository](/powershell/module/azureinformationprotection/get-aipscannerrepository)

- [Get-AIPScannerStatus](/powershell/module/azureinformationprotection/Get-AIPScannerStatus)

- [Get-MIPNetworkDiscoveryConfiguration](/powershell/module/azureinformationprotection/Get-MIPNetworkDiscoveryConfiguration)

- [Get-MIPNetworkDiscoveryJobs](/powershell/module/azureinformationprotection/Get-MIPNetworkDiscoveryJobs)

- [Get-MIPNetworkDiscoveryStatus](/powershell/module/azureinformationprotection/Get-MIPNetworkDiscoveryStatus)

- Get-MIPScannerContentScanJob

- [Get-AIPScannerRepository](/powershell/module/azureinformationprotection/get-aipscannerrepository)

- [Import-AIPScannerConfiguration](/powershell/module/azureinformationprotection/Import-AIPScannerConfiguration)

- [Set-MIPNetworkDiscovery](/powershell/module/azureinformationprotection/set-mipnetworkdiscovery)

- [Import-MIPNetworkDiscoveryConfiguration](/powershell/module/azureinformationprotection/Import-MIPNetworkDiscoveryConfiguration)

- [Install-AIPScanner](/powershell/module/azureinformationprotection/Install-AIPScanner)

- [Install-MIPNetworkDiscovery](/powershell/module/azureinformationprotection/Install-MIPNetworkDiscovery)

- Remove-MIPScannerContentScanJob

- [Remove-AIPScannerRepository](/powershell/module/azureinformationprotection/remove-aipscannerrepository)

- [Set-AIPScanner](/powershell/module/azureinformationprotection/Set-AIPScanner)

- [Set-AIPScannerConfiguration](/powershell/module/azureinformationprotection/Set-AIPScannerConfiguration)

- [Set-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/set-aipscannercontentscanjob)

- [Set-AIPScannerRepository](/powershell/module/azureinformationprotection/set-aipscannerrepository)

- [Set-MIPNetworkDiscoveryConfiguration](/powershell/module/azureinformationprotection/Set-MIPNetworkDiscoveryConfiguration)

- Set-MIPScannerContentScanJob

- [Set-AIPScannerRepository](/powershell/module/azureinformationprotection/set-aipscannerrepository)

- [Start-AIPScan](/powershell/module/azureinformationprotection/Start-AIPScan)

- [Start-AIPScanDiagnostics](/powershell/module/azureinformationprotection/Start-AIPScannerDiagnostics)

- [Start-MIPNetworkDiscovery](/powershell/module/azureinformationprotection/Start-MIPNetworkDiscovery)

- [Stop-AIPScan](/powershell/module/azureinformationprotection/Stop-AIPScan)

- [Remove-AIPScannerContentScanJob](/powershell/module/azureinformationprotection/remove-aipscannercontentscanjob)

- [Remove-AIPScannerRepository](/powershell/module/azureinformationprotection/remove-aipscannerrepository)

- [Uninstall-AIPScanner](/powershell/module/azureinformationprotection/Uninstall-AIPScanner)

- [Uninstall-MIPNetworkDiscovery](/powershell/module/azureinformationprotection/Uninstall-MIPNetworkDiscovery)

- [Update-AIPScanner](/powershell/module/azureinformationprotection/Update-AIPScanner)


## Next steps

Once you've installed and configured your scanner, start [scanning your files](deploy-scanner-manage.md).