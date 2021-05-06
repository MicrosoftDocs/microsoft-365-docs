---
title: Switch to Microsoft Defender for Endpoint - Setup
description: Phase 2, the setup process, when switching to Microsoft Defender for Endpoint.
keywords: migration, Microsoft Defender for Endpoint, edr, Windows Defender
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-migratetomdatp
ms.topic: article
ms.custom: migrationguides
ms.date: 05/06/2021
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
---

# Switch to Microsoft Defender for Endpoint - Phase 2: Setup

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

|[![Phase 1: Prepare](images/phase-diagrams/prepare.png)](switch-to-microsoft-defender-prepare.md)<br/>[Phase 1: Prepare](switch-to-microsoft-defender-prepare.md) |![Phase 2: Set up](images/phase-diagrams/setup.png)<br/>Phase 2: Set up |[![Phase 3: Onboard3](images/phase-diagrams/onboard.png)](switch-to-microsoft-defender-onboard.md)<br/>[Phase 3: Onboard](switch-to-microsoft-defender-onboard.md) |
|--|--|--|
||*You are here!* | |

**Welcome to the Setup phase of [switching to Microsoft Defender for Endpoint](switch-to-microsoft-defender-migration.md#the-migration-process)**. This phase includes the following steps:
1. [Enable Microsoft Defender Antivirus and confirm it's in passive mode](#enable-microsoft-defender-antivirus-and-confirm-its-in-passive-mode).
2. [Get updates for Microsoft Defender Antivirus](#get-updates-for-microsoft-defender-antivirus).
3. [Add Microsoft Defender for Endpoint to the exclusion list for your existing endpoint solution](#add-microsoft-defender-for-endpoint-to-the-exclusion-list-for-your-existing-solution).
4. [Add your existing solution to the exclusion list for Microsoft Defender Antivirus](#add-your-existing-solution-to-the-exclusion-list-for-microsoft-defender-antivirus).
5. [Add your existing solution to the exclusion list for Microsoft Defender for Endpoint](#add-your-existing-solution-to-the-exclusion-list-for-microsoft-defender-for-endpoint).
6. [Set up your device groups, device collections, and organizational units](#set-up-your-device-groups-device-collections-and-organizational-units).
7. [Configure antimalware policies and real-time protection](#configure-antimalware-policies-and-real-time-protection).

## Enable Microsoft Defender Antivirus and confirm it's in passive mode

On certain versions of Windows, such as Windows Server, Microsoft Defender Antivirus might have been uninstalled or disabled when your McAfee solution was installed. When you get ready to onboard your endpoints to Defender for Endpoint, Microsoft Defender Antivirus does not enter passive or disabled mode automatically. In addition, on Windows Server, you cannot have Microsoft Defender Antivirus in active mode alongside a non-Microsoft antivirus/antimalware solution, such as McAfee, Symantec, or others. To learn more about what happens with Defender for Endpoint and antivirus solutions, see [Microsoft Defender Antivirus compatibility](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).

To help ensure that Microsoft Defender Antivirus is enabled and in passive mode, complete the following tasks described in this article:
- [Setting DisableAntiSpyware to false on Windows Server](#set-disableantispyware-to-false-on-windows-server)
- [Reinstalling Microsoft Defender Antivirus on Windows Server](#reinstall-microsoft-defender-antivirus-on-windows-server);
- [Setting Microsoft Defender Antivirus to passive mode on Windows Server](#set-microsoft-defender-antivirus-to-passive-mode-on-windows-server)
- [Enabling Microsoft Defender Antivirus on your Windows client devices](#enable-microsoft-defender-antivirus-on-your-windows-client-devices); and
- [Confirming that Microsoft Defender Antivirus is set to passive mode](#confirm-that-microsoft-defender-antivirus-is-in-passive-mode).  

### Set DisableAntiSpyware to false on Windows Server

The [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) registry key was used in the past to disable Microsoft Defender Antivirus, and deploy another antivirus product, such as McAfee. In general, you should not have this registry key on your Windows devices and endpoints; however, if you do have `DisableAntiSpyware` configured, here's how to set its value to false:

1. On your Windows Server device, open Registry Editor.

2. Navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`.

3. In that folder, look for a DWORD entry called **DisableAntiSpyware**.
   - If you do not see that entry, you're all set.
   - If you do see **DisableAntiSpyware**, proceed to step 4.

4. Right-click the DisableAntiSpyware DWORD, and then choose **Modify**.

5. Set the value to `0`. (This action sets the registry key's value to *false*.)

> [!TIP]
> To learn more about this registry key, see [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware).

### Reinstall Microsoft Defender Antivirus on Windows Server

> [!NOTE]
> The following procedure applies only to endpoints or devices that are running the following versions of Windows:
> - Windows Server 2019
> - Windows Server, version 1803 (core-only mode)
> - Windows Server 2016 (see important information in [Are you using Windows Server 2016?](#are-you-using-windows-server-2016))

1. As a local administrator on the endpoint or device, open Windows PowerShell.

2. Run the following PowerShell cmdlets: <br/>   
   `Dism /online /Get-FeatureInfo /FeatureName:Windows-Defender-Features` <p>
   `Dism /online /Get-FeatureInfo /FeatureName:Windows-Defender` <br/>
 
    > [!NOTE]
    > When using the DISM command within a task sequence running PS, the following path to cmd.exe is required.
    > Example:<br/>
    > `c:\windows\sysnative\cmd.exe /c Dism /online /Get-FeatureInfo /FeatureName:Windows-Defender-Features`<p>
    > `c:\windows\sysnative\cmd.exe /c Dism /online /Get-FeatureInfo /FeatureName:Windows-Defender`<br/>

3. To verify Microsoft Defender Antivirus is running, use the following PowerShell cmdlet: <br/>
   `Get-Service -Name windefend`

#### Are you using Windows Server 2016?

If you have endpoints running Windows Server 2016, you cannot run Microsoft Defender Antivirus alongside a non-Microsoft antivirus/antimalware solution. Microsoft Defender Antivirus cannot run in passive mode on Windows Server 2006. In this case, you'll need to uninstall the non-Microsoft antivirus/antimalware solution, and install/enable Microsoft Defender Antivirus instead. To learn more, see [Antivirus solution compatibility with Defender for Endpoint](microsoft-defender-antivirus-compatibility.md).

If you're using Windows Server 2016 and are having trouble enabling Microsoft Defender Antivirus, use the following PowerShell cmdlet:

`mpcmdrun -wdenable`

> [!TIP]
> Still need help? See [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md).

### Set Microsoft Defender Antivirus to passive mode on Windows Server

> [!IMPORTANT]
> You can set Microsoft Defender Antivirus to passive mode on Windows Server, version 1803 or newer, or Windows Server 2019. But Passive mode is not supported on Windows Server 2016. To learn more, see [Antivirus solution compatibility with Microsoft Defender for Endpoint](defender-compatibility.md).

Because your organization is still using your existing endpoint protection solution, you must set Microsoft Defender Antivirus to passive mode. That way, your existing solution and Microsoft Defender Antivirus can run side by side until you have finished onboarding to Microsoft Defender for Endpoint.

1. Open Registry Editor, and then navigate to <br/>
   `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`.

2. Edit (or create) a DWORD entry called **ForceDefenderPassiveMode**, and specify the following settings:
   - Set the DWORD's value to **1**.
   - Under **Base**, select **Hexadecimal**.

> [!NOTE]
> You can use other methods to set the registry key, such as the following:
>- [Group Policy Preference](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn581922(v=ws.11))
>- [Local Group Policy Object tool](/windows/security/threat-protection/security-compliance-toolkit-10#what-is-the-local-group-policy-object-lgpo-tool)
>- [A package in Configuration Manager](/mem/configmgr/apps/deploy-use/packages-and-programs)

### Enable Microsoft Defender Antivirus on your Windows client devices

Because your organization has been using a non-Microsoft antivirus solution, Microsoft Defender Antivirus is most likely disabled on your organization's Windows devices. This step of the migration process involves enabling Microsoft Defender Antivirus. 

To enable Microsoft Defender Antivirus, we recommend using Intune. However, you can any of the methods that are listed in the following table:

|Method  |What to do  |
|---------|---------|
|[Intune](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager) <br/>**NOTE**: Intune is now Microsoft Endpoint Manager. | 1. Go to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and sign in.<p> 2. Select **Devices** > **Configuration profiles**, and then select the profile type you want to configure. If you haven't yet created a **Device restrictions** profile type, or if you want to create a new one, see [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure).<p> 3. Select **Properties**, and then select **Configuration settings: Edit**.<p> 4. Expand **Microsoft Defender Antivirus**. <p> 5. Enable **Cloud-delivered protection**.<p> 6. In the **Prompt users before sample submission** dropdown, select **Send all samples automatically**.<p> 7. In the **Detect potentially unwanted applications** dropdown, select **Enable** or **Audit**.<p> 8. Select **Review + save**, and then choose **Save**.<p>**TIP**: For more information about Intune device profiles, including how to create and configure their settings, see [What are Microsoft Intune device profiles?](/intune/device-profiles).|
|Control Panel in Windows     |Follow the guidance here: [Turn on Microsoft Defender Antivirus](/mem/intune/user-help/turn-on-defender-windows). <p>**NOTE**: You might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus* in some versions of Windows.        |
|[Advanced Group Policy Management](/microsoft-desktop-optimization-pack/agpm/) <br/>or<br/>[Group Policy Management Console](/windows/security/threat-protection/microsoft-defender-antivirus/use-group-policy-microsoft-defender-antivirus)  | 1. Go to **Computer configuration** > **Administrative templates** > **Windows components** > **Microsoft Defender Antivirus**. <p> 2. Look for a policy called **Turn off Microsoft Defender Antivirus**.<p> 3. Choose **Edit policy setting**, and make sure that policy is disabled. This action enables Microsoft Defender Antivirus. <p>**NOTE**: You might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus* in some versions of Windows. |


### Confirm that Microsoft Defender Antivirus is in passive mode

Microsoft Defender Antivirus can run alongside your existing endpoint protection solution if you set Microsoft Defender Antivirus to passive mode. You can use either Command Prompt or PowerShell to perform this task, as described in the following table:

|Method  |What to do  |
|---------|---------|
|Command Prompt     | 1. On a Windows device, open Command Prompt as an administrator. <p> 2. Type `sc query windefend`, and then press Enter.<p> 3. Review the results to confirm that Microsoft Defender Antivirus is running in passive mode.         |
|PowerShell     | 1. On a Windows device, open Windows PowerShell as an administrator.<p> 2. Run the [Get-MpComputerStatus](/powershell/module/defender/Get-MpComputerStatus) cmdlet. <p> 3. In the list of results, look for either **AMRunningMode: Passive Mode** or **AMRunningMode: SxS Passive Mode**.          |

> [!NOTE]
> You might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus* in some versions of Windows.

## Get updates for Microsoft Defender Antivirus

Keeping Microsoft Defender Antivirus up to date is critical to assure your devices have the latest technology and features needed to protect against new malware and attack techniques, even if Microsoft Defender Antivirus is running in [passive mode](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).

There are two types of updates related to keeping Microsoft Defender Antivirus up to date:
- Security intelligence updates
- Product updates

To get your updates, follow the guidance in [Manage Microsoft Defender Antivirus updates and apply baselines](/windows/security/threat-protection/microsoft-defender-antivirus/manage-updates-baselines-microsoft-defender-antivirus).

## Add Microsoft Defender for Endpoint to the exclusion list for your existing solution

This step of the setup process involves adding Microsoft Defender for Endpoint to the exclusion list for your existing endpoint protection solution and any other security products your organization is using. 

> [!TIP]
> To get help configuring exclusions, refer to your solution provider's documentation.

The specific exclusions to configure will depend on which version of Windows your endpoints or devices are running, and are listed in the following table:

|OS |Exclusions |
|--|--|
|- Windows 10, [version 1803](/windows/release-health/status-windows-10-1803) or later (See [Windows 10 release information](/windows/release-health/release-information))<br/>- Windows 10, version 1703 or 1709 with [KB4493441](https://support.microsoft.com/help/4493441) installed <br/>- [Windows Server 2019](/windows/release-health/status-windows-10-1809-and-windows-server-2019)<br/>- [Windows Server, version 1803](/windows-server/get-started/whats-new-in-windows-server-1803) |`C:\Program Files\Windows Defender Advanced Threat Protection\MsSense.exe`<p>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCncProxy.exe`<p>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseSampleUploader.exe`<p>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseIR.exe`<p>  |
|- [Windows 8.1](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2) <br/>- [Windows 7](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1)<br/>- [Windows Server 2016](/windows/release-health/status-windows-10-1607-and-windows-server-2016)<br/>- [Windows Server 2012 R2](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)<br/>- [Windows Server 2008 R2 SP1](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1) |`C:\Program Files\Microsoft Monitoring Agent\Agent\Health Service State\Monitoring Host Temporary Files 6\45\MsSenseS.exe`<br/>**NOTE**: Where Monitoring Host Temporary Files 6\45 can be different numbered subfolders. <br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\AgentControlPanel.exe`<br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\HealthService.exe`<p>`C:\Program Files\Microsoft Monitoring Agent\Agent\HSLockdown.exe`<p>`C:\Program Files\Microsoft Monitoring Agent\Agent\MOMPerfSnapshotHelper.exe`<p>`C:\Program Files\Microsoft Monitoring Agent\Agent\MonitoringHost.exe`<p>`C:\Program Files\Microsoft Monitoring Agent\Agent\TestCloudConnection.exe` |

## Add your existing solution to the exclusion list for Microsoft Defender Antivirus

During this step of the setup process, you add your existing solution to the Microsoft Defender Antivirus exclusion list. 

When you add [exclusions to Microsoft Defender Antivirus scans](/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus), you should add path and process exclusions. Keep the following points in mind:
- Path exclusions exclude specific files and whatever those files access.
- Process exclusions exclude whatever a process touches, but does not exclude the process itself.
- If you list each executable (.exe) as both a path exclusion and a process exclusion, the process and whatever it touches are excluded.
- List your process exclusions using their full path and not by their name only. (The name-only method is less secure.)

You can choose from several methods to add your exclusions to Microsoft Defender Antivirus, as listed in the following table:


|Method | What to do|
|--|--|
|[Intune](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager) <br/>**NOTE**: Intune is now Microsoft Endpoint Manager. | 1. Go to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and sign in.<p> 2. Select **Devices** > **Configuration profiles**, and then select the profile that you want to configure.<p> 3. Under **Manage**, select **Properties**.<p> 4. Select **Configuration settings: Edit**.<p> 5. Expand **Microsoft Defender Antivirus**, and then expand **Microsoft Defender Antivirus Exclusions**.<p> 6. Specify the files and folders, extensions, and processes to exclude from Microsoft Defender Antivirus scans. For reference, see [Microsoft Defender Antivirus exclusions](/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions).<p> 7. Choose **Review + save**, and then choose **Save**.  |
|[Microsoft Endpoint Configuration Manager](/mem/configmgr/) | 1. Using the [Configuration Manager console](/mem/configmgr/core/servers/manage/admin-console), go to **Assets and Compliance** > **Endpoint Protection** > **Antimalware Policies**, and then select the policy that you want to modify. <p> 2. Specify exclusion settings for files and folders, extensions, and processes to exclude from Microsoft Defender Antivirus scans. |
|[Group Policy Object](/previous-versions/windows/desktop/Policy/group-policy-objects) | 1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and then select **Edit**.<p> 2. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.<p> 3. Expand the tree to **Windows components > Microsoft Defender Antivirus > Exclusions**.<br/>**NOTE**: You might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus* in some versions of Windows.<p> 4. Double-click the **Path Exclusions** setting and add the exclusions.<br/>- Set the option to **Enabled**.<br/>- Under the **Options** section, select **Show...**.<br/>- Specify each folder on its own line under the **Value name** column.<br/>- If you specify a file, make sure to enter a fully qualified path to the file, including the drive letter, folder path, filename, and extension. Enter **0** in the **Value** column.<p> 5. Select **OK**.<p> 6. Double-click the **Extension Exclusions** setting and add the exclusions.<br/>- Set the option to **Enabled**.<br/>- Under the **Options** section, select **Show...**.<br/>- Enter each file extension on its own line under the **Value name** column.  Enter **0** in the **Value** column.<p> 7. Select **OK**. |
|Local group policy object |1. On the endpoint or device, open the Local Group Policy Editor. <p>2. Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Exclusions**.<p>**NOTE**: You might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus* in some versions of Windows.<p>3. Specify your path and process exclusions. |
|Registry key |1. Export the following registry key: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\exclusions`.<p>2. Import the registry key. Here are two examples:<br/>- Local path: `regedit.exe /s c:\temp\ MDAV_Exclusion.reg` <br/>- Network share: `regedit.exe /s \\FileServer\ShareName\MDAV_Exclusion.reg` |

## Add your existing solution to the exclusion list for Microsoft Defender for Endpoint

To add exclusions to Microsoft Defender for Endpoint, you create [indicators](/microsoft-365/security/defender-endpoint/manage-indicators#create-indicators-for-files).

1. Go to the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)) and sign in.<br/>

1. In the navigation pane, choose **Settings** > **Rules** > **Indicators**.<br/>

2. On the **File hashes** tab, choose **Add indicator**.<br/>

3. On the **Indicator** tab, specify the following settings:
   - File hash (Need help? See [Find a file hash using CMPivot](#find-a-file-hash-using-cmpivot) in this article.)
   - Under **Expires on (UTC)**, choose **Never**.<br/>
   
4. On the **Action** tab, specify the following settings:
   - **Response Action**: **Allow**
   - Title and description<br/>
   
5. On the **Scope** tab, under **Device groups**, select either **All devices in my scope** or **Select from list**.<br/>

6. On the **Summary** tab, review the settings, and then select **Save**.

### Find a file hash using CMPivot

CMPivot is an in-console utility for Configuration Manager. CMPivot provides access to the real-time state of devices in your environment. It immediately runs a query on all currently connected devices in the target collection and returns the results. To learn more, see [CMPivot overview](/mem/configmgr/core/servers/manage/cmpivot-overview).

To use CMPivot to get your file hash, follow these steps:

1. Review the [prerequisites](/mem/configmgr/core/servers/manage/cmpivot#prerequisites).

2. [Start CMPivot](/mem/configmgr/core/servers/manage/cmpivot#start-cmpivot). 

3. Connect to Configuration Manager (`SCCM_ServerName.DomainName.com`).

4. Select the **Query** tab.

5. In the **Device Collection** list, and choose **All Systems (default)**.

6. In the query box, type the following query:<br/>

   ```kusto
   File(c:\\windows\\notepad.exe)
   | project Hash
   ```
   
   > [!NOTE]
   > In the query above, replace *notepad.exe* with the your third-party security product process name. 

## Set up your device groups, device collections, and organizational units

| Collection type | What to do |
|--|--|
|[Device groups](/microsoft-365/security/defender-endpoint/machine-groups) (formerly called machine groups) enable your security operations team to configure security capabilities, such as automated investigation and remediation.<br/> Device groups are also useful for assigning access to those devices so that your security operations team can take remediation actions if needed. <br/>Device groups are created in the Microsoft Defender Security Center. |1. Go to the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)).<p>2. In the navigation pane on the left, choose **Settings** > **Permissions** > **Device groups**.  <p>3. Choose **+ Add device group**.<p>4. Specify a name and description for the device group.<p>5. In the **Automation level** list, select an option. (We recommend **Full - remediate threats automatically**.) To learn more about the various automation levels, see [How threats are remediated](/microsoft-365/security/defender-endpoint/automated-investigations#how-threats-are-remediated).<p>6. Specify conditions for a matching rule to determine which devices belong to the device group. For example, you can choose a domain, OS versions, or even use [device tags](/microsoft-365/security/defender-endpoint/machine-tags).<p>7. On the **User access** tab, specify roles that should have access to the devices that are included in the device group. <p>8. Choose **Done**. |
|[Device collections](/mem/configmgr/core/clients/manage/collections/introduction-to-collections) enable your security operations team to manage applications, deploy compliance settings, or install software updates on the devices in your organization.<br/>Device collections are created by using [Configuration Manager](/mem/configmgr/). |Follow the steps in [Create a collection](/mem/configmgr/core/clients/manage/collections/create-collections#bkmk_create). |
|[Organizational units](/azure/active-directory-domain-services/create-ou) enable you to logically group objects such as user accounts, service accounts, or computer accounts. You can then assign administrators to specific organizational units, and apply group policy to enforce targeted configuration settings.<br/> Organizational units are defined in [Azure Active Directory Domain Services](/azure/active-directory-domain-services). | Follow the steps in [Create an Organizational Unit in an Azure Active Directory Domain Services managed domain](/azure/active-directory-domain-services/create-ou). |

## Configure antimalware policies and real-time protection

Using Configuration Manager and your device collection(s), configure your antimalware policies.
- See [Create and deploy antimalware policies for Endpoint Protection in Configuration Manager](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies).
- While you create and configure your antimalware policies, make sure to review the [real-time protection settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#real-time-protection-settings) and [enable block at first sight](/windows/security/threat-protection/microsoft-defender-antivirus/configure-block-at-first-sight-microsoft-defender-antivirus).

> [!TIP]
> You can deploy the policies before your organization's devices on onboarded.

## Next step

**Congratulations**! You have completed the Setup phase of [switching to Microsoft Defender for Endpoint](switch-to-microsoft-defender-migration.md#the-migration-process)!

- [Proceed to Phase 3: Onboard to Microsoft Defender for Endpoint](switch-to-microsoft-defender-onboard.md)
