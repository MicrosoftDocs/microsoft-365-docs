---
title: Take response actions on a file in Microsoft Defender for Endpoint
description: Take response actions on file-related alerts by stopping and quarantining a file or blocking a file and checking activity details.
keywords: respond, stop and quarantine, block file, deep analysis
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Take response actions on a file

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](/microsoft-365/security/defender-endpoint/defender-endpoint-plan-1)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-responddile-abovefoldlink)

Quickly respond to detected attacks by stopping and quarantining files or blocking a file. After taking action on files, you can check on activity details in the Action center.

Response actions are available on a file's detailed profile page. Once on this page, you can switch between the new and old page layouts by toggling **new File page**. The rest of this article describes the newer page layout.

Response actions run along the top of the file page, and include:

- Stop and Quarantine File
- Add Indicator
- Download file 
- Collect file
- Ask Defender Experts
- Action center

You can also submit files for deep analysis, to run the file in a secure cloud sandbox. When the analysis is complete, you'll get a detailed report that provides information about the behavior of the file. You can submit files for deep analysis and read past reports by selecting the **Deep analysis** tab. It's located below the file information cards.

Some actions require certain permissions. The following table describes what action certain permissions can take on portable executable (PE) and non-PE files:

|Permission|PE files|Non-PE files|
|---|:---:|:---:|
|View data|X|X|
|Alerts investigation|&#x2611;|X|
|Live response basic|X|X|
|Live response advanced|&#x2611;|&#x2611;|

For more information on roles, see [Create and manage roles for role-based access control](user-roles.md).

## Stop and quarantine files in your network

You can contain an attack in your organization by stopping the malicious process and quarantining the file where it was observed.

> [!IMPORTANT]
> You can only take this action if:
>
> - The device you're taking the action on is running Windows 10, version 1703 or later, Windows 11, and Windows Server 2012 R2+
> - The file does not belong to trusted third-party publishers or is not signed by Microsoft
> - Microsoft Defender Antivirus must at least be running on Passive mode. For more information, see [Microsoft Defender Antivirus compatibility](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).

The **Stop and Quarantine File** action includes stopping running processes, quarantining the files, and deleting persistent data such as registry keys.

This action takes effect on devices with Windows 10, version 1703 or later, and Windows 11 and Server 2012 R2+, where the file was observed in the last 30 days.

> [!NOTE]
> You'll be able to restore the file from quarantine at any time.

### Stop and quarantine files

1. Select the file you want to stop and quarantine. You can select a file from any of the following views or use the Search box:

   - **Alerts** - select the corresponding links from the Description or Details in the Alert Story timeline
   - **Search box** - select **File** from the drop-down menu and enter the file name

   > [!NOTE]
   > The stop and quarantine file action is limited to a maximum of 1000 devices. To stop a file on a larger number of devices, see [Add indicator to block or allow file](#add-indicator-to-block-or-allow-a-file).

2. Go to the top bar and select **Stop and Quarantine File**.

   :::image type="content" source="images/atp-stop-quarantine-file.png" alt-text="The stop and quarantine file action" lightbox="images/atp-stop-quarantine-file.png":::

3. Specify a reason, then select **Confirm**.

   :::image type="content" source="images/atp-stop-quarantine.png" alt-text="The stop and quarantine file page" lightbox="images/atp-stop-quarantine.png":::

   The Action center shows the submission information:

   :::image type="content" source="images/atp-stopnquarantine-file.png" alt-text="The stop and quarantine file action center" lightbox="images/atp-stopnquarantine-file.png":::

   - **Submission time** - Shows when the action was submitted.
   - **Success** - Shows the number of devices where the file has been stopped and quarantined.
   - **Failed** - Shows the number of devices where the action failed and details about the failure.
   - **Pending** - Shows the number of devices where the file is yet to be stopped and quarantined from. This can take time for cases when the device is offline or not connected to the network.

4. Select any of the status indicators to view more information about the action. For example, select **Failed** to see where the action failed.

#### Notification on device user

When the file is being removed from a device, the following notification is shown:

:::image type="content" source="images/atp-notification-file.png" alt-text="The notification a on device user" lightbox="images/atp-notification-file.png":::

In the device timeline, a new event is added for each device where a file was stopped and quarantined.

A warning is shown before the action is implemented for files widely used throughout an organization. It's to validate that the operation is intended.

## Restore file from quarantine

You can roll back and remove a file from quarantine if you've determined that it's clean after an investigation. Run the following command on each device where the file was quarantined.

1. Open an elevated command-line prompt on the device:

   1. Go to **Start** and type _cmd_.

   1. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

   ```dos
   "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Restore -Name EUS:Win32/CustomEnterpriseBlock -All
   ```

   > [!NOTE]
   > In some scenarios, the **ThreatName** may appear as: EUS:Win32/CustomEnterpriseBlock!cl.
   >
   > Defender for Endpoint will restore all custom blocked files that were quarantined on this device in the last 30 days.

> [!IMPORTANT]
> A file that was quarantined as a potential network threat might not be recoverable. If a user attempts to restore the file after quarantine, that file might not be accessible. This can be due to the system no longer having network credentials to access the file. Typically, this is a result of a temporary log on to a system or shared folder and the access tokens expired.

## Download or collect file

Selecting **Download file** from the response actions allows you to download a local, password-protected .zip archive containing your file. A flyout will appear where you can record a reason for downloading the file, and set a password.

By default, you should be able to download files that are in quarantine.

The **Download file** button can have the following states:

- **Active** - You'll be able to collect the file. 

- **Disabled** - If the button is grayed out or disabled during an active collection attempt, you may not have appropriate RBAC permissions to collect files.

  The following permissions are required: 

    For Portable Executable file (.exe, .sys, .dll, and others)
    - Global admin or Advanced live response or Alerts 

    Non-Portable Executable file (.txt, .docx, and others) 
    - Global admin or Advanced live response


:::image type="content" source="images/atp-download-file-action.png" alt-text="The download file action" lightbox="images/atp-download-file-action.png":::

### Download quarantined files

Files that have been quarantined by Microsoft Defender Antivirus or your security team will be saved in a compliant way according to your [sample submission configurations](enable-cloud-protection-microsoft-defender-antivirus.md). Your security team can download the files directly from the file's detail page via the "Download file" button. **This feature is turned 'On' by default**.

The location depends on your organization's geo settings (either EU, UK, or US). A quarantined file will only be collected once per organization. Learn more about Microsoft's data protection from the Service Trust Portal at https://aka.ms/STP.

Having this setting turned on can help security teams examine potentially bad files and investigate incidents quickly and in a less risky way. However, if you need to turn off this setting, go to **Settings** \> **Endpoints** \> **Advanced features** \> **Download quarantined files** to adjust the setting. [Learn more about advanced features](advanced-features.md)

#### Backing up quarantined files

Users may be prompted to provide explicit consent before backing up the quarantined file, depending on your [sample submission configuration](enable-cloud-protection-microsoft-defender-antivirus.md#use-group-policy-to-turn-on-cloud-protection).

This feature won't work if sample submission is turned off. If automatic sample submission is set to request permission from the user, only samples that the user agrees to send will be collected.

> [!IMPORTANT]
> Download quarantined file requirements:
>
> - Your organization uses Microsoft Defender Antivirus in active mode
> - Antivirus engine version is 1.1.17300.4 or later. See [Monthly platform and engine versions](manage-updates-baselines-microsoft-defender-antivirus.md#monthly-platform-and-engine-versions)
> - Cloud–based protection is enabled. See [Turn on cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)
> - Sample submission is turned on
> - Devices have Windows 10 version 1703 or later, or Windows server 2016 or 2019, or Windows Server 2022, or Windows 11

### Collect files

If a file isn't already stored by Microsoft Defender for Endpoint, you can't download it. Instead, you'll see a **Collect file** button in the same location.

The **Collect file** button can have the following states:

- **Active** - You'll be able to collect the file. 

- **Disabled** - If the button is grayed out or disabled during an active collection attempt, you may not have appropriate RBAC permissions to collect files. 


    The following permissions are required: 

    For Portable Executable file (.exe, .sys, .dll, and others)
    - Global admin or Advanced live response or Alerts 

    Non-Portable Executable file (.txt, .docx, and others) 
    - Global admin or Advanced live response


If a file hasn't been seen in the organization in the past 30 days, **Collect file** will be disabled. 


> [!Important]
> A file that was quarantined as a potential network threat might not be recoverable. If a user attempts to restore the file after quarantine, that file might not be accessible. This can be due to the system no longer having network credentials to access the file. Typically, this is a result of a temporary log on to a system or shared folder and the access tokens expired.

## Add indicator to block or allow a file

Prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. If you know a potentially malicious portable executable (PE) file, you can block it. This operation will prevent it from being read, written, or executed on devices in your organization.

> [!IMPORTANT]
>
> - This feature is available if your organization uses Microsoft Defender Antivirus and Cloud-delivered protection is enabled. For more information, see [Manage cloud-delivered protection](/windows/security/threat-protection/microsoft-defender-antivirus/deploy-manage-report-microsoft-defender-antivirus).
>
> - The Antimalware client version must be 4.18.1901.x or later.
> - This feature is designed to prevent suspected malware (or potentially malicious files) from being downloaded from the web. It currently supports portable executable (PE) files, including _.exe_ and _.dll_ files. The coverage will be extended over time.
> - This response action is available for devices on Windows 10, version 1703 or later, and Windows 11.
> - The allow or block function cannot be done on files if the file's classification exists on the device's cache prior to the allow or block action.

> [!NOTE]
> The PE file needs to be in the device timeline for you to be able to take this action.
>
> There may be a couple of minutes of latency between the time the action is taken and the actual file being blocked.

### Enable the block file feature

To start blocking files, you first need to [turn the **Block or allow** feature on](advanced-features.md) in Settings.

### Allow or block file

When you add an indicator hash for a file, you can choose to raise an alert and block the file whenever a device in your organization attempts to run it.

Files automatically blocked by an indicator won't show up in the file's Action center, but the alerts will still be visible in the Alerts queue.

See [manage indicators](manage-indicators.md) for more details on blocking and raising alerts on files.

To stop blocking a file, remove the indicator. You can do so via the **Edit Indicator** action on the file's profile page. This action will be visible in the same position as the **Add Indicator** action, before you added the indicator.

You can also edit indicators from  the **Settings** page, under **Rules** \> **Indicators**. Indicators are listed in this area by their file's hash.

## Consult a threat expert

Select Ask Defender Experts to get more insights from Microsoft experts on a potentially compromised device, or already compromised devices. Microsoft Defender Experts are engaged directly from within the Microsoft 365 Defender portal for timely and accurate response. Experts provide insights on a potentially compromised device and help you understand complex threats and targeted attack notifications. They can also provide information about the alerts or a threat intelligence context that you see on your portal dashboard.

See [Ask Defender Experts](experts-on-demand.md) for details.

## Check activity details in Action center

The **Action center** provides information on actions that were taken on a device or file. You can view the following details:

- Investigation package collection
- Antivirus scan
- App restriction
- Device isolation

All other related details are also shown, such as submission date/time, submitting user, and if the action succeeded or failed.

:::image type="content" source="images/action-center-details.png" alt-text="The action center with information" lightbox="images/action-center-details.png":::

## Deep analysis

Cyber security investigations are typically triggered by an alert. Alerts are related to one or more observed files that are often new or unknown. Selecting a file takes you to the file view where you can see the file's metadata. To enrich the data related to the file, you can submit the file for deep analysis.

The Deep analysis feature executes a file in a secure, fully instrumented cloud environment. Deep analysis results show the file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IPs.
Deep analysis currently supports extensive analysis of portable executable (PE) files (including _.exe_ and _.dll_ files).

Deep analysis of a file takes several minutes. Once the file analysis is complete, the Deep Analysis tab will update to display a summary and the date and time of the latest available results.

The deep analysis summary includes a list of observed *behaviors*, some of which can indicate malicious activity, and *observables*, including contacted IPs and files created on the disk. If nothing was found, these sections will display a brief message.

Results of deep analysis are matched against threat intelligence and any matches will generate appropriate alerts.

Use the deep analysis feature to investigate the details of any file, usually during an investigation of an alert or for any other reason where you suspect malicious behavior. This feature is available within the **Deep analysis** tab, on the file's profile page.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4aAYy?rel=0]

**Submit for deep analysis** is enabled when the file is available in the Defender for Endpoint backend sample collection, or if it was observed on a Windows 10 device that supports submitting to deep analysis.

> [!NOTE]
> Only files from Windows 10, Windows 11, and Windows Server 2012 R2+ can be automatically collected.

You can also submit a sample through the [Microsoft 365 Defender Portal](https://www.microsoft.com/security/portal/submission/submit.aspx) if the file wasn't observed on a Windows 10 device (or Windows 11 or Windows Server 2012 R2+), and wait for **Submit for deep analysis** button to become available.

> [!NOTE]
> Due to backend processing flows in the Microsoft 365 Defender Portal, there could be up to 10 minutes of latency between file submission and availability of the deep analysis feature in Defender for Endpoint.

### Submit files for deep analysis

1. Select the file that you want to submit for deep analysis. You can select or search a file from any of the following views:

    - **Alerts** - select the file links from the **Description** or **Details** in the Alert Story timeline
    - **Devices list** - select the file links from the **Description** or **Details** in the **Device in organization** section
    - **Search box** - select **File** from the drop-down menu and enter the file name

2. In the **Deep analysis** tab of the file view, select **Submit**.

   :::image type="content" source="images/submit-file.png" alt-text="The submit PE files button" lightbox="images/submit-file.png":::

   > [!NOTE]
   > Only PE files are supported, including _.exe_ and _.dll_ files.

   A progress bar is displayed and provides information on the different stages of the analysis. You can then view the report when the analysis is done.

> [!NOTE]
> Depending on device availability, sample collection time can vary. There is a 3-hour timeout for sample collection. The collection will fail and the operation will abort if there is no online Windows 10 device (or Windows 11 or Windows Server 2012 R2+) reporting at that time. You can re-submit files for deep analysis to get fresh data on the file.

### View deep analysis reports

View the provided deep analysis report to see more in-depth insights on the file you submitted. This feature is available in the file view context.

You can view the comprehensive report that provides details on the following sections:

- Behaviors
- Observables

The details provided can help you investigate if there are indications of a potential attack.

1. Select the file you submitted for deep analysis.
2. Select the **Deep analysis** tab. If there are any previous reports, the report summary will appear in this tab.

   :::image type="content" source="images/analysis-results-nothing500.png" alt-text="The deep analysis report showing detailed information across a number of categories" lightbox="images/analysis-results-nothing500.png":::

#### Troubleshoot deep analysis

If you come across a problem when trying to submit a file, try each of the following troubleshooting steps.

1. Ensure that the file in question is a PE file. PE files typically have _.exe_ or _.dll_ extensions (executable programs or applications).

2. Ensure the service has access to the file, that it still exists, and hasn't been corrupted or modified.

3. Wait a short while and try to submit the file again. The queue may be full, or there was a temporary connection or communication error.

4. If the sample collection policy isn't configured, then the default behavior is to allow sample collection. If it's configured, then verify the policy setting allows sample collection before submitting the file again. When sample collection is configured, then check the following registry value:

    ```text
    Path: HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection
    Name: AllowSampleCollection
    Type: DWORD
    Hexadecimal value :
      Value = 0 - block sample collection
      Value = 1 - allow sample collection
    ```

5. Change the organizational unit through the Group Policy. For more information, see [Configure with Group Policy](configure-endpoints-gp.md).

6. If these steps don't resolve the issue, contact support.

## Related topics

- [Take response actions on a device](respond-machine-alerts.md)
- [Investigate files](investigate-files.md)
- [Manual response actions in Microsoft Defender for Endpoint Plan 1](defender-endpoint-plan-1.md#manual-response-actions)
