---
title: Configure and validate exclusions based on extension, name, or location
description: Exclude files from Microsoft Defender Antivirus scans based on their file extension, file name, or location.
keywords: exclusions, files, extension, file type, folder name, file name, scans
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.topic: article
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.date: 02/27/2022
ms.collection: M365-security-compliance
---

# Configure and validate exclusions based on file extension and folder location

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

You can define exclusions for Microsoft Defender Antivirus that apply to [scheduled scans](schedule-antivirus-scans.md), [on-demand scans](run-scan-microsoft-defender-antivirus.md), and [always-on, real-time protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md). **Generally, you shouldn't need to apply exclusions**. If you do need to apply exclusions, you can choose from several different kinds:

- Exclusions based on file extensions and folder locations (described in this article)
- [Exclusions for files that are opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)

> [!IMPORTANT]
> Microsoft Defender Antivirus exclusions don't apply to other Microsoft Defender for Endpoint capabilities, including [endpoint detection and response (EDR)](/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response), [attack surface reduction (ASR) rules](/microsoft-365/security/defender-endpoint/attack-surface-reduction), and [controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders). Files that you exclude using the methods described in this article can still trigger EDR alerts and other detections.
> To exclude files broadly, add them to the Microsoft Defender for Endpoint [custom indicators](/microsoft-365/security/defender-endpoint/manage-indicators).

## Before you begin

See [Recommendations for defining exclusions](configure-exclusions-microsoft-defender-antivirus.md) before defining your exclusion lists.

## Exclusion lists

To exclude certain files from Microsoft Defender Antivirus scans, you modify your exclusion lists. Microsoft Defender Antivirus includes many automatic exclusions based on known operating system behaviors and typical management files, such as those used in enterprise management, database management, and other enterprise scenarios and situations.

> [!NOTE]
> Exclusions apply to Potentially Unwanted Apps (PUA) detections as well.
>
> Automatic exclusions apply only to Windows Server 2016 and later. These exclusions are not visible in the Windows Security app and in PowerShell.

The following table lists some examples of exclusions based on file extension and folder location.

|Exclusion|Examples|Exclusion list|
|---|---|---|
|Any file with a specific extension|All files with the specified extension, anywhere on the machine. <p> Valid syntax: `.test` and `test`|Extension exclusions|
|Any file under a specific folder|All files under the `c:\test\sample` folder|File and folder exclusions|
|A specific file in a specific folder|The file `c:\sample\sample.test` only|File and folder exclusions|
|A specific process|The executable file `c:\test\process.exe`|File and folder exclusions|

## Characteristics of exclusion lists

- Folder exclusions apply to all files and folders under that folder, unless the subfolder is a reparse point. Reparse point subfolders must be excluded separately.
- File extensions apply to any file name with the defined extension if a path or folder is not defined.

## Important notes about exclusions based on file extensions and folder locations

- Using wildcards such as the asterisk (\*) will alter how the exclusion rules are interpreted. See the [Use wildcards in the file name and folder path or extension exclusion lists](#use-wildcards-in-the-file-name-and-folder-path-or-extension-exclusion-lists) section for important information about how wildcards work.

- Don't exclude mapped network drives. Specify the actual network path.

- Folders that are reparse points that are created after the Microsoft Defender Antivirus service starts and that have been added to the exclusion list will not be included. Restart the service (by restarting Windows) for new reparse points to be recognized as a valid exclusion target.

- Exclusions apply to [scheduled scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md), [on-demand scans](run-scan-microsoft-defender-antivirus.md), and [real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md), but not across Defender for Endpoint. To define exclusions across Defender for Endpoint, use [custom indicators](manage-indicators.md).

- By default, local changes made to the lists (by users with administrator privileges, including changes made with PowerShell and WMI) will be merged with the lists as defined (and deployed) by Group Policy, Configuration Manager, or Intune. The Group Policy lists take precedence when there are conflicts. In addition, exclusion list changes made with Group Policy are visible in the [Windows Security app](microsoft-defender-security-center-antivirus.md).

- To allow local changes to override managed deployment settings, [configure how locally and globally defined exclusions lists are merged](configure-local-policy-overrides-microsoft-defender-antivirus.md#merge-lists).

## Configure the list of exclusions based on folder name or file extension

You can choose from several methods to define exclusions for Microsoft Defender Antivirus.

### Use Intune to configure file name, folder, or file extension exclusions

See the following articles:

- [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure)
- [Microsoft Defender Antivirus device restriction settings for Windows 10 in Intune](/intune/device-restrictions-windows-10#microsoft-defender-antivirus)

### Use Configuration Manager to configure file name, folder, or file extension exclusions

See [How to create and deploy antimalware policies: Exclusion settings](/configmgr/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings) for details on configuring Microsoft Endpoint Manager (current branch).

### Use Group Policy to configure folder or file extension exclusions

> [!NOTE]
> If you specify a fully qualified path to a file, then only that file is excluded. If a folder is defined in the exclusion, then all files and subdirectories under that folder are excluded.

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **Exclusions**.

4. Open the **Path Exclusions** setting for editing, and add your exclusions.
    1. Set the option to **Enabled**.
    2. Under the **Options** section, select **Show**.
    3. Specify each folder on its own line under the **Value name** column.
    4. If you are specifying a file, ensure that you enter a fully qualified path to the file, including the drive letter, folder path, file name, and extension.
    5. Enter **0** in the **Value** column.

5. Choose **OK**.

6. Open the **Extension Exclusions** setting for editing and add your exclusions.
    1. Set the option to **Enabled**.
    2. Under the **Options** section, select **Show**.
    3. Enter each file extension on its own line under the **Value name** column.
    4. Enter **0** in the **Value** column.

7. Choose **OK**.

<a id="ps"></a>

### Use PowerShell cmdlets to configure file name, folder, or file extension exclusions

Using PowerShell to add or remove exclusions for files based on the extension, location, or file name requires using a combination of three cmdlets and the appropriate exclusion list parameter. The cmdlets are all in the [Defender module](/powershell/module/defender/).

The format for the cmdlets is as follows:

```PowerShell
<cmdlet> -<exclusion list> "<item>"
```

The following table lists cmdlets that you can use in the `<cmdlet>` portion of the PowerShell cmdlet:

|Configuration action|PowerShell cmdlet|
|:---|:---|
|Create or overwrite the list|`Set-MpPreference`|
|Add to the list|`Add-MpPreference`|
|Remove item from the list|`Remove-MpPreference`|

The following table lists values that you can use in the `<exclusion list>` portion of the PowerShell cmdlet:

|Exclusion type|PowerShell parameter|
|---|---|
|All files with a specified file extension|`-ExclusionExtension`|
|All files under a folder (including files in subdirectories), or a specific file|`-ExclusionPath`|

> [!IMPORTANT]
> If you have created a list, either with `Set-MpPreference` or `Add-MpPreference`, using the `Set-MpPreference` cmdlet again will overwrite the existing list.

For example, the following code snippet would cause Microsoft Defender Antivirus scans to exclude any file with the `.test` file extension:

```PowerShell
Add-MpPreference -ExclusionExtension ".test"
```

> [!TIP]
> For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender Antivirus cmdlets](/powershell/module/defender/).

### Use Windows Management Instrumentation (WMI) to configure file name, folder, or file extension exclusions

Use the [Set, Add, and Remove methods of the MSFT_MpPreference](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
ExclusionExtension
ExclusionPath
```

Using **Set**, **Add**, and **Remove** is analogous to their counterparts in PowerShell: `Set-MpPreference`, `Add-MpPreference`, and `Remove-MpPreference`.

> [!TIP]
> For more information, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal).

<a id="man-tools"></a>

### Use the Windows Security app to configure file name, folder, or file extension exclusions

See [Add exclusions in the Windows Security app](microsoft-defender-security-center-antivirus.md) for instructions.

<a id="wildcards"></a>

## Use wildcards in the file name and folder path or extension exclusion lists

You can use the asterisk `*`, question mark `?`, or environment variables (such as `%ALLUSERSPROFILE%`) as wildcards when defining items in the file name or folder path exclusion list. The way in which these wildcards are interpreted differs from their usual usage in other apps and languages. Make sure to read this section to understand their specific limitations.

> [!IMPORTANT]
> There are key limitations and usage scenarios for these wildcards:
>
> - Environment variable usage is limited to machine variables and those applicable to processes running as an NT AUTHORITY\SYSTEM account.
> - You can only use a maximum of six wildcards per entry.
> - You cannot use a wildcard in place of a drive letter.
> - An asterisk `*` in a folder exclusion stands in place for a single folder. Use multiple instances of `\*\` to indicate multiple nested folders with unspecified names.
> - Currently, Microsoft Endpoint Configuration Manager does not support wildcard characters (such as `*` or `?`).
    
The following table describes how the wildcards can be used and provides some examples.

<br/><br/>

|Wildcard|Examples|
|---|---|
|`*` (asterisk) <p> In **file name and file extension inclusions**, the asterisk replaces any number of characters, and only applies to files in the last folder defined in the argument. <p> In **folder exclusions**, the asterisk replaces a single folder. Use multiple `*` with folder slashes `\` to indicate multiple nested folders. After matching the number of wild carded and named folders, all subfolders are also included.|`C:\MyData\*.txt` includes `C:\MyData\notes.txt` <p> `C:\somepath\*\Data` includes any file in `C:\somepath\Archives\Data` and its subfolders, and `C:\somepath\Authorized\Data` and its subfolders <p> `C:\Serv\*\*\Backup` includes any file in `C:\Serv\Primary\Denied\Backup` and its subfolders and `C:\Serv\Secondary\Allowed\Backup` and its subfolders|
|`?` (question mark)  <p> In **file name and file extension inclusions**, the question mark replaces a single character, and only applies to files in the last folder defined in the argument. <p> In **folder exclusions**, the question mark replaces a single character in a folder name. After matching the number of wild carded and named folders, all subfolders are also included.|`C:\MyData\my?.zip` includes `C:\MyData\my1.zip` <p> `C:\somepath\?\Data` includes any file in `C:\somepath\P\Data` and its subfolders  <p> `C:\somepath\test0?\Data` would include any file in `C:\somepath\test01\Data` and its subfolders|
|Environment variables <p> The defined variable is populated as a path when the exclusion is evaluated.|`%ALLUSERSPROFILE%\CustomLogFiles` would include `C:\ProgramData\CustomLogFiles\Folder1\file1.txt`|

> [!IMPORTANT]
> If you mix a file exclusion argument with a folder exclusion argument, the rules will stop at the file argument match in the matched folder, and will not look for file matches in any subfolders.
>
> For example, you can exclude all files that start with "date" in the folders `c:\data\final\marked` and `c:\data\review\marked` by using the rule argument `c:\data\*\marked\date*`.
>
> This argument, however, will not match any files in subfolders under `c:\data\final\marked` or `c:\data\review\marked`.

<a id="review"></a>

### System environment variables

The following table lists and describes the system account environment variables.

|This system environment variable...|Redirects to this|
|---|---|
|`%APPDATA%`|`C:\Users\UserName.DomainName\AppData\Roaming`|
|`%APPDATA%\Microsoft\Internet Explorer\Quick Launch`|`C:\Windows\System32\config\systemprofile\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch`|
|`%APPDATA%\Microsoft\Windows\Start Menu`|`C:\Windows\System32\config\systemprofile\AppData\Roaming\Microsoft\Windows\Start Menu`|
|`%APPDATA%\Microsoft\Windows\Start Menu\Programs`|`C:\Windows\System32\config\systemprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs`|
|`%LOCALAPPDATA%`|`C:\Windows\System32\config\systemprofile\AppData\Local`|
|`%ProgramData%`|`C:\ProgramData`|
|`%ProgramFiles%`|`C:\Program Files`|
|`%ProgramFiles%\Common Files`|`C:\Program Files\Common Files`|
|`%ProgramFiles%\Windows Sidebar\Gadgets`|`C:\Program Files\Windows Sidebar\Gadgets`|
|`%ProgramFiles%\Common Files`|`C:\Program Files\Common Files`|
|`%ProgramFiles(x86)%`|`C:\Program Files (x86)`|
|`%ProgramFiles(x86)%\Common Files`|`C:\Program Files (x86)\Common Files`|
|`%SystemDrive%`|`C:`|
|`%SystemDrive%\Program Files`|`C:\Program Files`|
|`%SystemDrive%\Program Files (x86)`|`C:\Program Files (x86)`|
|`%SystemDrive%\Users`|`C:\Users`|
|`%SystemDrive%\Users\Public`|`C:\Users\Public`|
|`%SystemRoot%`|`C:\Windows`|
|`%windir%`|`C:\Windows`|
|`%windir%\Fonts`|`C:\Windows\Fonts`|
|`%windir%\Resources`|`C:\Windows\Resources`|
|`%windir%\resources\0409`|`C:\Windows\resources\0409`|
|`%windir%\system32`|`C:\Windows\System32`|
|`%ALLUSERSPROFILE%`|`C:\ProgramData`|
|`%ALLUSERSPROFILE%\Application Data`|`C:\ProgramData\Application Data`|
|`%ALLUSERSPROFILE%\Documents`|`C:\ProgramData\Documents`|
|`%ALLUSERSPROFILE%\Documents\My Music\Sample Music`|`C:\ProgramData\Documents\My Music\Sample Music`|
|`%ALLUSERSPROFILE%\Documents\My Music`|`C:\ProgramData\Documents\My Music`|
|`%ALLUSERSPROFILE%\Documents\My Pictures`|`C:\ProgramData\Documents\My Pictures`|
|`%ALLUSERSPROFILE%\Documents\My Pictures\Sample Pictures`|`C:\ProgramData\Documents\My Pictures\Sample Pictures`|
|`%ALLUSERSPROFILE%\Documents\My Videos`|`C:\ProgramData\Documents\My Videos`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\DeviceMetadataStore`|`C:\ProgramData\Microsoft\Windows\DeviceMetadataStore`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\GameExplorer`|`C:\ProgramData\Microsoft\Windows\GameExplorer`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\Ringtones`|`C:\ProgramData\Microsoft\Windows\Ringtones`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu`|`C:\ProgramData\Microsoft\Windows\Start Menu`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs`|`C:\ProgramData\Microsoft\Windows\Start Menu\Programs`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Administrative Tools`|`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\StartUp`|`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp`|
|`%ALLUSERSPROFILE%\Microsoft\Windows\Templates`|`C:\ProgramData\Microsoft\Windows\Templates`|
|`%ALLUSERSPROFILE%\Start Menu`|`C:\ProgramData\Start Menu`|
|`%ALLUSERSPROFILE%\Start Menu\Programs`| `C:\ProgramData\Start Menu\Programs`|
|`%ALLUSERSPROFILE%\Start Menu\Programs\Administrative Tools`|`C:\ProgramData\Start Menu\Programs\Administrative Tools`|
|`%ALLUSERSPROFILE%\Templates`|`C:\ProgramData\Templates`|
|`%LOCALAPPDATA%\Microsoft\Windows\ConnectedSearch\Templates`|`C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\ConnectedSearch\Templates`|
|`%LOCALAPPDATA%\Microsoft\Windows\History`|`C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\History`|
|`%PUBLIC%`|`C:\Users\Public`|
|`%PUBLIC%\AccountPictures`|`C:\Users\Public\AccountPictures`|
|`%PUBLIC%\Desktop`|`C:\Users\Public\Desktop`|
|`%PUBLIC%\Documents`|`C:\Users\Public\Documents`|
|`%PUBLIC%\Downloads`|`C:\Users\Public\Downloads`|
|`%PUBLIC%\Music\Sample Music`|`C:\Users\Public\Music\Sample Music`|
|`%PUBLIC%\Music\Sample Playlists`|`C:\Users\Public\Music\Sample Playlists`|
|`%PUBLIC%\Pictures\Sample Pictures`|`C:\Users\Public\Pictures\Sample Pictures`|
|`%PUBLIC%\RecordedTV.library-ms`|`C:\Users\Public\RecordedTV.library-ms`|
|`%PUBLIC%\Videos`|`C:\Users\Public\Videos`|
|`%PUBLIC%\Videos\Sample Videos`|`C:\Users\Public\Videos\Sample Videos`|
|`%USERPROFILE%`|`C:\Users\UserName`|
|`%USERPROFILE%\AppData\Local`|`C:\Users\UserName\AppData\Local`|
|`%USERPROFILE%\AppData\LocalLow`|`C:\Users\UserName\AppData\LocalLow`|
|`%USERPROFILE%\AppData\Roaming`|`C:\Users\UserName\AppData\Roaming`|

## Review the list of exclusions

You can retrieve the items in the exclusion list using one of the following methods:

- [Intune](/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune)
- [Microsoft Endpoint Configuration Manager](/configmgr/protect/deploy-use/endpoint-antimalware-policies)
- [MpCmdRun](command-line-arguments-microsoft-defender-antivirus.md)
- [PowerShell](/powershell/module/defender)
- [Windows Security app](microsoft-defender-security-center-antivirus.md)

> [!IMPORTANT]
> Exclusion list changes made with Group Policy **will show** in the lists in the [Windows Security app](microsoft-defender-security-center-antivirus.md).
>
> Changes made in the Windows Security app **will not show** in the Group Policy lists.

If you use PowerShell, you can retrieve the list in two ways:

- Retrieve the status of all Microsoft Defender Antivirus preferences. Each list is displayed on separate lines, but the items within each list are combined into the same line.
- Write the status of all preferences to a variable, and use that variable to only call the specific list you are interested in. Each use of `Add-MpPreference` is written to a new line.

### Validate the exclusion list by using MpCmdRun

To check exclusions with the dedicated [command-line tool mpcmdrun.exe](./command-line-arguments-microsoft-defender-antivirus.md), use the following command:

```console
Start, CMD (Run as admin)
cd "%programdata%\microsoft\windows defender\platform"
cd 4.18.2111-5.0 (Where 4.18.2111-5.0 is this month's Microsoft Defender Antivirus "Platform Update".)
MpCmdRun.exe -CheckExclusion -path <path>
```

> [!NOTE]
> Checking exclusions with MpCmdRun requires Microsoft Defender Antivirus CAMP version 4.18.2111-5.0 (released in  December 2021) or later.

### Review the list of exclusions alongside all other Microsoft Defender Antivirus preferences by using PowerShell

Use the following cmdlet:

```PowerShell
Get-MpPreference
```

In the following example, the items contained in the `ExclusionExtension` list are highlighted:

:::image type="content" source="../../media/wdav-powershell-get-exclusions-variable.png" alt-text="PowerShell output for Get-MpPreference" lightbox="../../media/wdav-powershell-get-exclusions-variable.png":::

For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender Antivirus cmdlets](/powershell/module/defender/).

### Retrieve a specific exclusions list by using PowerShell

Use the following code snippet (enter each line as a separate command); replace **WDAVprefs** with whatever label you want to name the variable:

```PowerShell
$WDAVprefs = Get-MpPreference
$WDAVprefs.ExclusionExtension
$WDAVprefs.ExclusionPath
```

In the following example, the list is split into new lines for each use of the `Add-MpPreference` cmdlet:

:::image type="content" source="../../media/wdav-powershell-get-exclusions-variable.png" alt-text="PowerShell output showing only the entries in the exclusion list" lightbox="../../media/wdav-powershell-get-exclusions-variable.png":::

For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender Antivirus cmdlets](/powershell/module/defender/).

<a id="validate"></a>

## Validate exclusions lists with the EICAR test file

You can validate that your exclusion lists are working by using PowerShell with either the `Invoke-WebRequest` cmdlet or the .NET WebClient class to download a test file.

In the following PowerShell snippet, replace `test.txt` with a file that conforms to your exclusion rules. For example, if you have excluded the `.testing` extension, replace `test.txt` with `test.testing`. If you are testing a path, ensure you run the cmdlet within that path.

```PowerShell
Invoke-WebRequest "http://www.eicar.org/download/eicar.com.txt" -OutFile "test.txt"
```

If Microsoft Defender Antivirus reports malware, then the rule is not working. If there is no report of malware and the downloaded file exists, then the exclusion is working. You can open the file to confirm the contents are the same as what is described on the [EICAR test file website](http://www.eicar.org/86-0-Intended-use.html).

You can also use the following PowerShell code, which calls the .NET WebClient class to download the test file - as with the `Invoke-WebRequest` cmdlet; replace `c:\test.txt` with a file that conforms to the rule you are validating:

```PowerShell
$client = new-object System.Net.WebClient
$client.DownloadFile("http://www.eicar.org/download/eicar.com.txt","c:\test.txt")
```

If you do not have Internet access, you can create your own EICAR test file by writing the EICAR string to a new text file with the following PowerShell command:

```PowerShell
[io.file]::WriteAllText("test.txt",'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*')
```

You can also copy the string into a blank text file and attempt to save it with the file name or in the folder you are attempting to exclude.

## See also

- [Configure and validate exclusions in Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)
- [Configure Microsoft Defender Antivirus exclusions on Windows Server](configure-server-exclusions-microsoft-defender-antivirus.md)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)
