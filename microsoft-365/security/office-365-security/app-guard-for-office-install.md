---
title: Application Guard for Office for admins
f1.keywords:
  - NOCSH
ms.author: maccruz
author: schmurky
manager: deniseb
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.collection:
- m365-security
- tier3
description: Get the latest in hardware-based isolation. Prevent current and emerging attacks like exploits or malicious links from disrupting employee productivity and enterprise security.
ms.service: defender-office-365
ms.date: 11/27/2023
---

# Application Guard for Office for admins

**Applies to:** Word, Excel, and PowerPoint for Microsoft 365 Apps, Windows 10 Enterprise, Windows 11 Enterprise

> [!IMPORTANT]
> Microsoft Defender Application Guard for Office is being deprecated and is no longer being updated. This deprecation also includes the [Windows.Security.Isolation APIs](/uwp/api/windows.security.isolation) that are used for Microsoft Defender Application Guard for Office. We recommend transitioning to Microsoft Defender for Endpoint [attack surface reduction rules](../defender-endpoint/overview-attack-surface-reduction.md) along with [Protected View](recommended-settings-for-eop-and-office365.md#global-settings-for-safe-attachments) and [Windows Defender Application Control](/windows/security/application-security/application-control/windows-defender-application-control/wdac).

Microsoft Defender Application Guard for Office (Application Guard for Office) helps prevent untrusted files from accessing trusted resources, keeping your enterprise safe from new and emerging attacks. This article walks admins through setting up supported devices for Application Guard for Office.

## Prerequisites

### Licensing requirements

- Microsoft 365 E5 or Microsoft 365 E5 Security
- [Safe Documents in Microsoft 365](safe-documents-in-e5-plus-security-about.md)

### Minimum hardware requirements

- **CPU**: 64-bit, four cores (physical or virtual), virtualization extensions (Intel VT-x OR AMD-V), Core i5 equivalent or higher recommended.
- **Physical memory**: 8 GB of RAM.
- **Hard disk**: 10 GB of free space on the system drive (SSD recommended).

### Minimum software requirements

- **Windows**: Windows 10 Enterprise edition, Client Build version 2004 (20H1) build 19041 or later. All versions of Windows 11 are supported.
- **Office**: Microsoft 365 Apps with build 16.0.13530.10000 or later. For Current Channel and Monthly Enterprise Channel installations, this version is equivalent to 2011. For Semi-Annual Enterprise Channel and Semi-Annual Enterprise Channel (Preview), the minimum version is 2108 or later. Both 32-bit and 64-bit versions are supported.
- **Update package**: Windows 10 cumulative monthly security update [KB4571756](https://support.microsoft.com/help/4571756/windows-10-update-KB4571756)

For detailed system requirements, refer to [System requirements for Microsoft Defender Application Guard](/windows/security/threat-protection/microsoft-defender-application-guard/reqs-md-app-guard). Also, refer to your computer manufacturer's guides on how to enable virtualization technology.
To learn more about Microsoft 365 Apps update channels, see [Overview of update channels for Microsoft 365 Apps](/deployoffice/overview-update-channels).

## Deploy Application Guard for Office

### Enable Application Guard for Office

1. Operating system requirements:
   - **Windows 10**: Verify [September 8. 2020 KB4571756](https://support.microsoft.com/topic/b7de4a66-00ce-c620-ab48-b4e3a89954ed) is installed.
   - **Windows 11**: No specific requirements.

2. In **Windows Features**, select **Microsoft Defender Application Guard**, and then select **OK**. Enabling the Application Guard feature prompts for a system reboot. You can reboot now or after step 3.

   :::image type="content" source="../../media/ag03-deploy.png" alt-text="The Windows Features dialog box showing AG" lightbox="../../media/ag03-deploy.png":::

   You can also enable Application Guide in Windows PowerShell by running the following command as an administrator:

   ```powershell
   Enable-WindowsOptionalFeature -Online -FeatureName Windows-Defender-ApplicationGuard
   ```

3. In **Group Policy Editor**, go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Application Guard**.

   Enable the **Turn on Microsoft Defender Application Guard in Managed Mode** setting. Set the value in the **Options** section to either of the following values:

   - **2**: Enable Microsoft Defender Application Guard for isolated Windows environments ONLY.
   - **3**: Enable Microsoft Defender Application Guard for Microsoft Edge AND isolated Windows environments.

   :::image type="content" source="../../media/ag04-deploy.png" alt-text="The option to turn on AG in Managed Mode" lightbox="../../media/ag04-deploy.png":::

   Alternatively, you can set the corresponding CSP policy:

   > OMA-URI: **./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/AllowWindowsDefenderApplicationGuard**
   > Data type: **Integer**
   > Value: **2**

4. Restart the computer, if you haven't already.

### Set Diagnostics & feedback to send full data

> [!NOTE]
> This step isn't required. However, configuring optional diagnostics data can help diagnose reported issues.

This step ensures that the data necessary to identify and fix problems is reaching Microsoft. Follow these steps to enable diagnostics on your Windows device:

1. Open **Settings** from the Start menu.
2. On **Windows Settings**, select **Privacy**.
3. Under Privacy, select **Diagnostics & feedback** and select **Optional diagnostic data**.

For more on configuring Windows diagnostic settings, refer to [Configuring Windows diagnostic data in your organization](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enterprise-management).

### Confirm that Application Guard for Office is enabled and working

Before confirming that Application Guard for Office is enabled, do the following steps:

1. Launch Word, Excel, or PowerPoint on a device where the policies have been deployed.
2. From the app you launched, go to **File** \> **Account**. On the **Account** page, verify that the expected license is shown.

To confirm that Application Guard for Office is enabled, open an untrusted document. For example, you can open a document that was downloaded from the internet or an email attachment from someone outside your organization.

When you first open an untrusted file, the following Office splash screen is shown. Application Guard for Office is being activated and the file is being opened. Subsequent openings of untrusted files are typically faster.

:::image type="content" source="../../media/ag08-confirm.png" alt-text="The Office app splash page" lightbox="../../media/ag08-confirm.png":::

After the file opens, there are a few visual indicators that signal that the file is open inside Application Guard for Office:

- A callout in the ribbon

  :::image type="content" source="../../media/ag09-confirm.png" alt-text="The Doc file showing small App Guard note" lightbox="../../media/ag09-confirm.png":::

- The application icon with a shield in the taskbar

  :::image type="icon" source="../../media/ag12-limitations.png" border="false":::

## Configure Application Guard for Office

Office supports the following policies to configure Application Guard for Office. These policies can be configured through group policies or through the [Office cloud policy service](/DeployOffice/overview-office-cloud-policy-service).

> [!NOTE]
> Configuring these policies can disable some functionality for files opened in Application Guard for Office.

|Policy|Description|
|---|---|
|Don't use Application Guard for Office|Forces Word, Excel, and PowerPoint to use the Protected View isolation container instead of Application Guard for Office.|
|Configure Application Guard for Office container precreation|Determines if the Application Guard for Office container is precreated for improved run-time performance. When you enable this policy, you can specify the number of days to continue precreating a container or let the Office built-in heuristic precreate the container.
|Configure copy and paste from Office documents opened in Application Guard|Allows you to control whether users can copy and paste content from Office to and from documents opened in Application Guard, as well as the allowed formats.|
|Disable hardware acceleration in Application Guard for Office|Controls whether Application Guard for Office uses hardware acceleration to render graphics. If you enable this setting, Application Guard for Office uses software-based (CPU) rendering and doesn't load any third-party graphics drivers or interact with any connected graphics hardware.
|Disable unsupported file types protection in Application Guard for Office|Controls whether Application Guard for Office blocks unsupported file types from being opened or if it enables redirection to Protected View.
|Turn off camera and microphone access for documents opened in Application Guard for Office|Enabling this policy removes Office access to the camera and microphone inside Application Guard for Office.|
|Restrict printing from documents opened in Application Guard for Office|Limits the printers that a user can print to from a file opened in Application Guard for Office. For example, you can use this policy to restrict users to only print to PDF.|
|Prevent users from removing Application Guard for Office protection on files|Removes the option (within the Office application experience) to disable Application Guard for Office protection or to open a file outside Application Guard for Office. <br/><br/> **Note:** Users can still bypass this policy by manually removing the mark-of-the-web property from the file or by moving a document to a trusted location.|

> [!NOTE]
> For the following policies to take effect, users are required to sign out of Windows and sign in again:
>
> - Configure copy and paste from Office documents opened in Application Guard.
> - Disable hardware acceleration in Application Guard for Office.
> - Restrict printing for documents opened in Application Guard for Office.
> - Turn off camera and microphone access to documents opened in Application Guard for Office.

## Submit feedback

### Submit feedback via Feedback Hub

If you encounter any issues when launching Application Guard for Office, you're encouraged to submit your feedback via Feedback Hub:

1. Open the **Feedback Hub app** and sign in.
2. If you get an error dialog while launching Application Guard, select **Report to Microsoft** in the error dialog to start a new feedback submission. Otherwise, navigate to <https://aka.ms/mdagoffice-fb> to select the correct category for Application Guard, then select **Add new feedback** near the top right.
3. Enter a summary in the **Summarize your feedback** box.
4. Enter a detailed description of the issue and the steps you took to debug in the **Explain in more detail** box, then select **Next**.
5. Select the bubble next to **Problem**. Make sure the category selected is **Security and Privacy \> Microsoft Defender Application Guard – Office**, then select **Next**.
6. Select **New feedback**, then **Next**.
7. Collect traces about the issue:
   1. Expand the **Recreate my problem** tile.
   2. If the issue you're experiencing occurs while Application Guard is running, open an Application Guard instance. Opening an instance allows additional traces to be collected from within the Application Guard container.
   3. Select **Start recording**, and wait for the tile to stop spinning and say *Stop recording*.
   4. Fully reproduce the issue with Application Guard. Reproduction might include attempting to launch an Application Guard instance and waiting until it fails, or reproducing an issue in a running Application Guard instance.
   5. Select the **Stop recording** tile.
   6. Keep any running Application Guard instance(s) open, even for a few minutes after submission, so that container diagnostics can also be collected.
8. Attach any relevant screenshots or files related to the problem.
9. Select **Submit**.

### Submit feedback via One Customer Voice

You can also submit feedback from within Word, Excel, and PowerPoint if the issue happens when files are opened in Application Guard. Refer to [Provide feedback](https://insider.office.com/handbook#Provide-feedback) for detailed guidance.

## Integration with Microsoft Defender for Endpoint and Microsoft Defender for Office 365

Application Guard for Office is integrated with Microsoft Defender for Endpoint to provide monitoring and alerting on malicious activity that happens in the isolated environment.

[Safe Documents in Microsoft E365 E5](safe-documents-in-e5-plus-security-about.md) is a feature that uses Microsoft Defender for Endpoint to scan documents opened in Application Guard for Office. For an additional layer of protection, users can't leave Application Guard for Office until the results of the scan have been determined.

## Limitations and considerations

- Application Guard for Office is a protected mode that isolates untrusted documents so that they can't access trusted corporate resources. For example, an intranet, the user's identity, and arbitrary files on the computer. If a user tries an action that requires access to trusted resources (for example, inserting a local picture file), the action fails and displays a prompt like the following example. To enable an untrusted document to access trusted resources, users must remove Application Guard protection from the document.

  :::image type="content" source="../../media/ag09-confirm.png" alt-text="The Dialog box stating safety message and the feature status" lightbox="../../media/ag09-confirm.png":::

  > [!NOTE]
  > Advise users to remove protection only if they trust the file and the source of the file.

- Active content like macros and ActiveX controls are disabled in Application Guard for Office. To enable active content, the Application Guard protection must be removed.

- Untrusted files from network shares or files shared from OneDrive, OneDrive for Business, or SharePoint Online open as read-only in Application Guard. Users can save a local copy of such files to continue working in the container or remove protection to directly work with the original file.

- Files that are protected by Information Rights Management (IRM) are blocked by default. If users want to open such files in Protected View, an administrator must configure policy settings for unsupported file types for the organization.

- Any customizations to Office applications in Application Guard for Office don't persist after a user signs out and signs in again or after the device restarts.

- Only Accessibility tools that use the UIA framework can provide an accessible experience for files opened in Application Guard for Office.

- Network connectivity is required for the first launch of Application Guard after installation.

- In the document's info section, the *Last Modified By* property might display **WDAGUtilityAccount** as the user. WDAGUtilityAccount is the anonymous account used by Application Guard. The desktop user's identity isn't available inside the Application Guard container.

## Performance optimizations for Application Guard for Office

Application Guard uses a virtualized container, similar to a virtual machine, to isolate untrusted documents away from the system. The process of creating a container and setting up the Application Guard container to open Office documents has a performance overhead that might negatively affect user experience when users open an untrusted document.

To provide users with the expected file-opening experience, Application Guard uses logic to precreate a container when the following heuristic is met on a system: A user has opened a file in either Protected View or Application Guard in the past 28 days.

When this heuristic is met, Office precreates an Application Guard container for the user after they sign in to Windows. While this precreate operation is in progress, the system might experience slow performance, but the effect resolves as soon as the operation completes.

> [!NOTE]
> The hints needed for the heuristic to pre-create the container are generated by Office applications as a user uses them. If a user installs Office on a new system where Application Guard is enabled, Office doesn't pre-create the container until after the first time a user opens an untrusted document on the system. This first file takes longer to open in Application Guard.

## Known issues

- The default setting for the unsupported file types protection policy is to block opening untrusted, unsupported file types that are encrypted or have Information Rights Management (IRM) set. This setting includes files that are encrypted by using sensitivity labels from Microsoft Purview Information Protection.
- HTML files aren't supported at this time.
- Application Guard for Office currently doesn't work with NTFS compressed volumes. If you see the error: "ERROR_VIRTUAL_DISK_LIMITATION" try uncompressing the volume.
- If you see an error mentioning that the hypervisor might not be enabled, check the following items:
  - Virtualization is enabled in the BIOS.
  - Hyper-V is turned on.
  - The Host Network Service is running.
- Updates to .NET might cause files to fail to open in Application Guard. You can resolve this issue by restarting the machine.
- Application Guard requires "Virtual Machines" to be granted "Logon as a service" permission, and "wdagutilityaccount" must **not** be added to the "Deny logon as a service" security policy setting.
- For more information, see [Frequently asked questions - Microsoft Defender Application Guard for additional information](/windows/security/threat-protection/microsoft-defender-application-guard/faq-md-app-guard).
