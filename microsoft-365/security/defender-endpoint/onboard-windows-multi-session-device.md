---
title: Onboard Windows devices in Azure Virtual Desktop
description: Learn about onboarding Windows devices to Defender for Endpoint in Azure Virtual Desktop
keywords: Azure Virtual Desktop, AVD, microsoft defender, endpoint, onboard
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.topic: conceptual
author: dansimp
ms.author: dansimp
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.collection: 
- m365-security
- tier3
ms.subservice: mde
search.appverid: met150
ms.date: 03/06/2023
---

# Onboard Windows devices in Azure Virtual Desktop

6 minutes to read

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Windows multi-session running on Azure Virtual Desktop (AVD)
- [Windows 10 Enterprise Multi-Session](/azure/virtual-desktop/windows-10-multisession-faq)

Microsoft Defender for Endpoint supports monitoring both VDI and Azure Virtual Desktop sessions. Depending on your organization's needs, you might need to implement VDI or Azure Virtual Desktop sessions to help your employees access corporate data and apps from an unmanaged device, remote location, or similar scenario. With Microsoft Defender for Endpoint, you can monitor these virtual machines for anomalous activity.

## Before you begin

Familiarize yourself with the [considerations for non-persistent VDI](/microsoft-365/security/defender-endpoint/configure-endpoints-vdi#onboard-non-persistent-virtual-desktop-infrastructure-vdi-devices-1). While [Azure Virtual Desktop](/azure/virtual-desktop/overview) doesn't provide non-persistence options, it does provide ways to use a golden Windows image that can be used to provision new hosts and redeploy machines. This increases volatility in the environment and thus impacts what entries are created and maintained in the Microsoft Defender for Endpoint portal, potentially reducing visibility for your security analysts.

> [!NOTE]
> Depending on your choice of onboarding method, devices can appear in Microsoft Defender for Endpoint portal as either:
>
> - Single entry for each virtual desktop
> - Multiple entries for each virtual desktop

Microsoft recommends onboarding Azure Virtual Desktop as a single entry per virtual desktop. This ensures that the investigation experience in the Microsoft Defender for Endpoint portal is in the context of one device based on the machine name. Organizations that frequently delete and redeploy AVD hosts should strongly consider using this method as it prevents multiple objects for the same machine from being created in the Microsoft Defender for Endpoint portal. This can lead to confusion when investigating incidents. For test or non-volatile environments, you may opt to choose differently.

Microsoft recommends adding the Microsoft Defender for Endpoint onboarding script to the AVD golden image. This way, you can be sure that this onboarding script runs immediately at first boot. It's executed as a startup script at first boot on all the AVD machines that are provisioned from the AVD golden image. However, if you're using one of the gallery images without modification, place the script in a shared location and call it from either local or domain group policy.

> [!NOTE]
> The placement and configuration of the VDI onboarding startup script on the AVD golden image configures it as a startup script that runs when the AVD starts. It's **not** recommended to onboard the actual AVD golden image. Another consideration is the method used to run the script. It should run as early in the startup/provisioning process as possible to reduce the time between the machine being available to receive sessions and the device onboarding to the service. Below scenarios 1 and 2 take this into account.

### Scenarios

There are several ways to onboard an AVD host machine:

- Run the script in the golden image (or from a shared location) during startup.
- Use a management tool to run the script.
- Through [Integration with Microsoft Defender for Cloud](azure-server-integration.md)

#### *Scenario 1: Using local group policy*

This scenario requires placing the script in a golden image and uses local group policy to run early in the boot process.

Use the instructions in [Onboard the non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md).

Follow the instructions for a single entry for each device.

#### *Scenario 2: Using domain group policy*

This scenario uses a centrally located script and runs it using a domain-based group policy. You can also place the script in the golden image and run it in the same way.

##### Download the WindowsDefenderATPOnboardingPackage.zip file from the Microsoft 365 Defender portal

1. Open the VDI configuration package .zip file (WindowsDefenderATPOnboardingPackage.zip)

    1. In the Microsoft 365 Defender portal navigation pane, select **Settings** \> **Endpoints** \> **Onboarding** (under **Device Management**).
    1. Select Windows 10 or Windows 11 as the operating system.
    1. In the **Deployment method** field, select VDI onboarding scripts for non-persistent endpoints.
    1. Click **Download package** and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the device. You should have a folder called **OptionalParamsPolicy** and the files **WindowsDefenderATPOnboardingScript.cmd** and **Onboard-NonPersistentMachine.ps1**.

##### Use Group Policy management console to run the script when the virtual machine starts

1. Open the Group Policy Management Console (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

2. In the Group Policy Management Editor, go to **Computer configuration** \> **Preferences** \> **Control panel settings**.

3. Right-click **Scheduled tasks**, click **New**, and then click **Immediate Task** (At least Windows 7).

4. In the Task window that opens, go to the **General** tab. Under **Security options** click **Change User or Group** and type SYSTEM. Click **Check Names** and then click OK. NT AUTHORITY\SYSTEM appears as the user account the task will run as.

5. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check box.

6. Go to the **Actions** tab and click **New**. Ensure that **Start a program** is selected in the Action field. Enter the following:

   `Action = "Start a program"`

   `Program/Script = C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe`

   `Add Arguments (optional) = -ExecutionPolicy Bypass -command "& \\Path\To\Onboard-NonPersistentMachine.ps1"`

   Then select **OK** and close any open GPMC windows.

#### *Scenario 3: Onboarding using management tools*

If you plan to manage your machines using a management tool, you can onboard devices with Microsoft Endpoint Configuration Manager.

For more information, see [Onboard Windows devices using Configuration Manager](configure-endpoints-sccm.md).

> [!WARNING]
> If you plan to use [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md), note that the rule "[Block process creations originating from PSExec and WMI commands](attack-surface-reduction-rules-reference.md#block-process-creations-originating-from-psexec-and-wmi-commands)" should not be used, because that rule is incompatible with management through Microsoft Endpoint Configuration Manager. The rule blocks WMI commands that the Configuration Manager client uses to function correctly.

> [!TIP]
> After onboarding the device, you can choose to run a detection test to verify that the device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md).

#### Tagging your machines when building your golden image

As part of your onboarding, you may want to consider setting a machine tag to differentiate AVD machines more easily in the Microsoft Security Center. For more information, see
[Add device tags by setting a registry key value](machine-tags.md#add-device-tags-by-setting-a-registry-key-value).

#### Other recommended configuration settings

When building your golden image, you may want to configure initial protection settings as well. For more information, see [Other recommended configuration settings](configure-endpoints-gp.md#other-recommended-configuration-settings).

Also, if you're using FSlogix user profiles, we recommend you exclude the following files from always-on protection:

**Exclude Files:**

`%ProgramFiles%\FSLogix\Apps\frxdrv.sys`

`%ProgramFiles%\FSLogix\Apps\frxdrvvt.sys`

`%ProgramFiles%\FSLogix\Apps\frxccd.sys`

`%TEMP%\*.VHD`

`%TEMP%\*.VHDX`

`%Windir%\TEMP\*.VHD`

`%Windir%\TEMP\*.VHDX`

`\\storageaccount.file.core.windows.net\share\*\*.VHD`

`\\storageaccount.file.core.windows.net\share\*\*.VHDX`

**Exclude Processes:**

`%ProgramFiles%\FSLogix\Apps\frxccd.exe`

`%ProgramFiles%\FSLogix\Apps\frxccds.exe`

`%ProgramFiles%\FSLogix\Apps\frxsvc.exe`

#### Licensing requirements

Note on licensing: When using Windows Enterprise multi-session, depending on your requirements, you can choose to either have all users licensed through Microsoft Defender for Endpoint (per user), Windows Enterprise E5, Microsoft 365 E5 Security, or Microsoft 365 E5, or have the VM licensed through Microsoft Defender for Cloud.
Licensing requirements for Microsoft Defender for Endpoint can be found at: [Licensing requirements](minimum-requirements.md#licensing-requirements).

### Known issues and limitations

Only Microsoft Edge is supported for web filtering in Windows 10 multi-session.

#### Related Links

[Add exclusions for Defender for Endpoint via PowerShell](/azure/architecture/example-scenario/wvd/windows-virtual-desktop-fslogix#add-exclusions-for-microsoft-defender-for-cloud-by-using-powershell)

[FSLogix anti-malware exclusions](/fslogix/overview-prerequisites#configure-antivirus-file-and-folder-exclusions)

[Configure Microsoft Defender Antivirus on a remote desktop or virtual desktop infrastructure environment](/microsoft-365/security/defender-endpoint/deployment-vdi-microsoft-defender-antivirus)
