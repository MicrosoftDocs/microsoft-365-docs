---
title: Application Guard for Office for admins
keywords: application guard, protection, isolation, isolated container, hardware isolation
f1.keywords:
  - NOCSH
ms.author: maccruz
author: schmurky
manager: dansimp
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
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 1/31/2023
---

# Application Guard for Office for admins

**Applies to:** Word, Excel, and PowerPoint for Microsoft 365 Apps, Windows 10 Enterprise, Windows 11 Enterprise

Microsoft Defender Application Guard for Office (Application Guard for Office) helps prevent untrusted files from accessing trusted resources, keeping your enterprise safe from new and emerging attacks. This article walks admins through setting up supported devices for Application Guard for Office.

## Prerequisites

### Licensing requirements

- Microsoft 365 E5 or Microsoft 365 E5 Security
- [Safe Documents in Microsoft 365](/microsoft-365/security/office-365-security/safe-documents-in-e5-plus-security-about)

### Minimum hardware requirements

- **CPU**: 64-bit, 4 cores (physical or virtual), virtualization extensions (Intel VT-x OR AMD-V), Core i5 equivalent or higher recommended
- **Physical memory**: 8-GB RAM
- **Hard disk**: 10 GB of free space on the system drive (SSD recommended)

### Minimum software requirements

- **Windows**: Windows 10 Enterprise edition, Client Build version 2004 (20H1) build 19041 or later. All versions of Windows 11 are supported.
- **Office**: Microsoft 365 Apps with build 16.0.13530.10000 or later. For Current Channel and Monthly Enterprise Channel installations, this equals to version 2011. For Semi-Annual Enterprise Channel and Semi-Annual Enterprise Channel (Preview), the minimum version is 2108 or later. Both 32-bit and 64-bit versions are supported.
- **Update package**: Windows 10 cumulative monthly security update [KB4571756](https://support.microsoft.com/help/4571756/windows-10-update-KB4571756)

For detailed system requirements, refer to [System requirements for Microsoft Defender Application Guard](/windows/security/threat-protection/microsoft-defender-application-guard/reqs-md-app-guard). Also, please refer to your computer manufacturer's guides on how to enable virtualization technology.
To learn more about Microsoft 365 Apps update channels, see [Overview of update channels for Microsoft 365 Apps](/deployoffice/overview-update-channels).

## Deploy Application Guard for Office

### Enable Application Guard for Office

1. If you're running Windows 10, download and install **Windows 10 cumulative monthly security updates KB4571756**. Note that if you're running Windows 11, you don't need to download and install the security update. Simply follow the rest of the process steps.

2. Select **Microsoft Defender Application Guard** under Windows Features and select **OK**. Enabling the Application Guard feature will prompt a system reboot. You can choose to reboot now or after step 3.

   :::image type="content" source="../../media/ag03-deploy.png" alt-text="The Windows Features dialog box showing AG" lightbox="../../media/ag03-deploy.png":::

   The feature can also be enabled by running the following PowerShell command as administrator:

   ```powershell
   Enable-WindowsOptionalFeature -online -FeatureName Windows-Defender-ApplicationGuard
   ```

3. From the Group Policy Editor window, expand **Computer Configuration -> Administrative Templates -> Windows Components -> Microsoft Defender Application Guard**. Enable the **Turn on Microsoft Defender Application Guard in Managed Mode** setting. Set the value under Options as **2** or **3**.

   :::image type="content" source="../../media/ag04-deploy.png" alt-text="The option to turn on AG in Managed Mode" lightbox="../../media/ag04-deploy.png":::

   Alternatively, you can set the corresponding CSP policy:

   > OMA-URI: **./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/AllowWindowsDefenderApplicationGuard** <br> Data type: **Integer** <br> Value: **2**

4. Restart the system.

### Set Diagnostics & feedback to send full data

> [!NOTE]
> This is not required, however, configuring optional diagnostics data will help diagnose reported issues.

This step ensures that the data necessary to identify and fix problems is reaching Microsoft. Follow these steps to enable diagnostics on your Windows device:

1. Open **Settings** from the Start menu.

2. On **Windows Settings**, select **Privacy**.

3. Under Privacy, select **Diagnostics & feedback** and select **Optional diagnostic data**.

For more on configuring Windows diagnostic settings, refer to [Configuring Windows diagnostic data in your organization](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enterprise-management).

### Confirm that Application Guard for Office is enabled and working

Before confirming that Application Guard for Office is enabled:

1. Launch Word, Excel, or PowerPoint on a device where the policies have been deployed.

2. From the app you launched, go to **File -> Account**. On the Account page, verify that the expected license is shown.

To confirm that Application Guard for Office is enabled, open an untrusted document. For example, you can open a document that was downloaded from the internet or an email attachment from someone outside your organization.

When you first open an untrusted file, you see an Office splash screen like the following example. Application Guard for Office is being activated and the file is being opened. Subsequent openings of untrusted files are typically faster.

:::image type="content" source="../../media/ag08-confirm.png" alt-text="The Office app splash page" lightbox="../../media/ag08-confirm.png":::

After the file opens, there are a few visual indicators that signal that the file is open inside Application Guard for Office:

- A callout in the ribbon

  :::image type="content" source="../../media/ag09-confirm.png" alt-text="The Doc file showing small App Guard note" lightbox="../../media/ag09-confirm.png":::

- The application icon with a shield in the taskbar

  ![Icon in taskbar.](../../media/ag12-limitations.png)

## Configure Application Guard for Office

Office supports the following policies to configure Application Guard for Office. These policies can be configured through group policies or through the [Office cloud policy service](/DeployOffice/overview-office-cloud-policy-service).

> [!NOTE]
> Configuring these policies can disable some functionality for files opened in Application Guard for Office.

|Policy|Description|
|---|---|
|Don't use Application Guard for Office|Enabling this policy forces Word, Excel, and PowerPoint to use the Protected View isolation container instead of Application Guard for Office.|
|Configure Application Guard for Office container pre-creation|This policy determines if the Application Guard for Office container is pre-created for improved run-time performance. When you enable this policy, you can specify the number of days to continue pre-creating a container or let the Office built-in heuristic pre-create the container.
|Configure copy and paste from Office documents opened in Application Guard|This policy setting allows you to control whether users can copy and paste content from Office to and from documents opened in Application Guard, as well as the allowed formats.|
|Disable hardware acceleration in Application Guard for Office|This policy controls whether Application Guard for Office uses hardware acceleration to render graphics. If you enable this setting, Application Guard for Office uses software-based (CPU) rendering and won't load any third-party graphics drivers or interact with any connected graphics hardware.
|Disable unsupported file types protection in Application Guard for Office|This policy controls whether Application Guard for Office will block unsupported file types from being opened or if it will enable the redirection to Protected View.
|Turn off camera and microphone access for documents opened in Application Guard for Office|Enabling this policy removes Office access to the camera and microphone inside Application Guard for Office.|
|Restrict printing from documents opened in Application Guard for Office|Enabling this policy limits the printers that a user can print to from a file opened in Application Guard for Office. For example, you can use this policy to restrict users to only print to PDF.|
|Prevent users from removing Application Guard for Office protection on files|Enabling this policy removes the option (within the Office application experience) to disable Application Guard for Office protection or to open a file outside Application Guard for Office. <p> **Note:** Users can still bypass this policy by manually removing the mark-of-the-web property from the file or by moving a document to a trusted location.|
|

> [!NOTE]
> For the following policies to take effect, users are required to sign out and sign in again to Windows:
>
> - Configure copy and paste from Office documents opened in Application Guard
> - Disable hardware acceleration in Application Guard for Office
> - Restrict printing for documents opened in Application Guard for Office
> - Turn off camera and microphone access to documents opened in Application Guard for Office

## Submit feedback

### Submit feedback via Feedback Hub

If you encounter any issues when launching Application Guard for Office, you're encouraged to submit your feedback via Feedback Hub:

1. Open the **Feedback Hub app** and sign in.

2. If you get an error dialog while launching Application Guard, select **Report to Microsoft** in the error dialog to start a new feedback submission. Otherwise, navigate to <https://aka.ms/mdagoffice-fb> to select the correct category for Application Guard, then select **+&nbsp;Add new feedback** near the top right.

3. Enter a summary in the **Summarize your feedback** box.

4. Enter a detailed description of the issue and what steps you completed to debug in the **Explain in more detail** box, then select **Next**.

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

You may also submit feedback from within Word, Excel, and PowerPoint if the issue happens when files are opened in Application Guard. Refer to [Provide feedback](https://insider.office.com/handbook#Provide-feedback) for detailed guidance.

## Integration with Microsoft Defender for Endpoint and Microsoft Defender for Office 365

Application Guard for Office is integrated with Microsoft Defender for Endpoint to provide monitoring and alerting on malicious activity that happens in the isolated environment.

[Safe Documents in Microsoft E365 E5](/microsoft-365/security/office-365-security/safe-documents-in-e5-plus-security-about) is a feature that uses Microsoft Defender for Endpoint to scan documents opened in Application Guard for Office. For an additional layer of protection, users can't leave Application Guard for Office until the results of the scan have been determined.

## Limitations and considerations

- Application Guard for Office is a protected mode that isolates untrusted documents so that they can't access trusted corporate resources, an intranet, the user's identity, and arbitrary files on the computer. As a result, if a user tries to access a feature that has a dependency on such access—for example, inserting a picture from a local file on disk—the access fails and displays a prompt like the following example. To enable an untrusted document to access trusted resources, users must remove Application Guard protection from the document.

  :::image type="content" source="../../media/ag09-confirm.png" alt-text="The Dialog box stating safety message and the feature status" lightbox="../../media/ag09-confirm.png":::

  > [!NOTE]
  > Advise users to only remove protection if they trust the file and the source of the file.

- Active content like macros and ActiveX controls are disabled in Application Guard for Office. To enable active content, the Application Guard protection must be removed.

- Untrusted files from network shares or files shared from OneDrive, OneDrive for Business, or SharePoint Online open as read-only in Application Guard. Users can save a local copy of such files to continue working in the container or remove protection to directly work with the original file.

- Files that are protected by Information Rights Management (IRM) are blocked by default. If users want to open such files in Protected View, an administrator must configure policy settings for unsupported file types for the organization.

- Any customizations to Office applications in Application Guard for Office do not persist after a user signs out and signs in again or after the device restarts.

- Only Accessibility tools that use the UIA framework can provide an accessible experience for files opened in Application Guard for Office.

- Network connectivity is required for the first launch of Application Guard after installation.

- In the document's info section, the *Last Modified By* property may display **WDAGUtilityAccount** as the user. WDAGUtilityAccount is the anonymous account used by  Application Guard. The desktop user's identity isn't available inside the Application Guard container.

## Performance optimizations for Application Guard for Office

Application Guard uses a virtualized container, similar to a virtual machine, to isolate untrusted documents away from the system. The process of creating a container and setting up the Application Guard container to open Office documents has a performance overhead that might negatively affect user experience when users open an untrusted document.

To provide users with the expected file-opening experience, Application Guard uses logic to pre-create a container when the following heuristic is met on a system: A user has opened a file in either Protected View or Application Guard in the past 28 days.

When this heuristic is met, Office will pre-create an Application Guard container for the user after they sign in to Windows. While this pre-create operation is in progress, the system may experience slow performance, but the effect will resolve as soon as the operation completes.

> [!NOTE]
> The hints needed for the heuristic to pre-create the container are generated by Office applications as a user uses them. If a user installs Office on a new system where Application Guard is enabled, Office will not pre-create the container until after the first time a user opens an untrusted document on the system. The user will observe that this first file takes longer to open in Application Guard.

## Known issues

- The default setting for unsupported file types protection policy is to block opening untrusted unsupported file types that are encrypted or have Information Rights Management (IRM) set. This includes files that are encrypted by using sensitivity labels from Microsoft Purview Information Protection.
- HTML files are not supported at this time.
- Application Guard for Office currently does not work with NTFS compressed volumes. If you are seeing an error "ERROR_VIRTUAL_DISK_LIMITATION" please try uncompressing the volume.
- If you are seeing an error mentioning that the hypervisor may not be enabled, check the following items:
  - Virtualization is enabled in the BIOS.
  - Hyper-V is turned on.
  - The Host Network Service is running.
- Updates to .NET might cause files to fail to open in Application Guard. This can be resolved by restarting the machine.
- Application Guard requires "Virtual Machines" to be granted "Logon as a service" permission, and "wdagutilityaccount" must **not** be added to the "Deny logon as a service" security policy setting.
- Please see [Frequently asked questions - Microsoft Defender Application Guard for additional information.](/windows/security/threat-protection/microsoft-defender-application-guard/faq-md-app-guard).
