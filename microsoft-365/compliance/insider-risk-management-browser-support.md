---
title: Learn about and configure insider risk management browser signal detection
description: Learn about insider risk management browser signal detection in Microsoft Purview
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: 
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
- tier1
---

# Learn about and configure insider risk management browser signal detection

Web browsers are often used by users to access both sensitive and non-sensitive files within an organization. Insider risk management allows your organization to detect and act on browser exfiltration signals for all non-executable files viewed in [Microsoft Edge](https://www.microsoft.com/edge) and [Google Chrome](https://www.google.com/chrome) browsers. With these signals, analysts and investigators can quickly act when any of the following activities are performed by in-scope policy users when using these browsers:

- Files copied to personal cloud storage
- Files printed to local or network devices
- Files transferred or copied to a network share
- Files copied to USB devices
- Browsing risky websites

Signals for these events are detected in Microsoft Edge using built-in browser capabilities and using the *Microsoft Compliance Extension* add-on. In Google Chrome, customers use the *Microsoft Compliance Extension* for signal detection.

The following table summarizes detected activities and extension support for each browser:

| **Detected activities**                        | **Microsoft Edge** | **Google Chrome** |
| ---------------------------------------------- | ------------------ | ----------------- |
| Files copied to personal cloud storage         | Native             | Extension         |
| Files printed to local or network devices      | Native             | Extension         |
| Files transferred or copied to a network share | Extension          | Extension         |
| Files copied to USB devices                    | Extension          | Extension         |
| Browsing risky websites                        | Extension          | Extension         |

## Common requirements

Before installing the Microsoft Edge add-on or Google Chrome extension, customers need to ensure that devices for in-scope policy users meet the following requirements:

- Latest Windows 10 x64 build is recommended, minimum Windows 10 x64 build 1809 for signal detection support. Browser signal detection isn't currently supported on non-Windows devices.
- Current [Microsoft 365 subscription](/microsoft-365/compliance/insider-risk-management-configure#subscriptions-and-licensing) with insider risk management support.
- Devices must be [onboarded](/microsoft-365/compliance/insider-risk-management-settings#enable-device-indicators-and-onboard-devices) to the Microsoft Purview compliance portal.

For specific browser configuration requirements, see the Microsoft Edge and Google Chrome sections later in this article.

## Additional requirements

If you're using policies based on the *Risky browser usage* template, at least one *Browsing indicator* must be selected in **Insider risk management** > **Settings** > **Policy indicators**.

## Configure browser signal detection for Microsoft Edge

### Microsoft Edge browser requirements

- Meet the common requirements
- Latest Microsoft Edge x64, version (91.0.864.41 or higher)
- Latest *Microsoft Compliance Extension* add-on (1.0.0.44 or higher)
- Edge.exe is not configured as an unallowed browser

### Option 1: Basic setup (recommended for testing with Edge)

Use this option to configure a single machine selfhost for each device in your organization when testing browser signal detection.

For the basic setup option, complete the following steps:

1. Navigate to [Microsoft Compliance Extension](https://microsoftedge.microsoft.com/addons/detail/microsoft-compliance-exte/lcmcgbabdcbngcbcfabdncmoppkajglo).
2. Install the extension.

### Option 2: Intune setup for Edge

User this option to configure the extension and requirements for your organization using Intune.

For the Intune setup option, complete the following steps:

1. Sign-in to the [Microsoft Endpoint Manager Admin Center](https://endpoint.microsoft.com) using Administrator permissions.
2. Navigate to **Configuration Profiles**.
3. Select **Create Profile**.
4. Choose **Windows 10** as the platform.
5. Choose **Administrative Templates** as *Profile type* and select **Create.**
6. Select the **Settings** tab.
7. Select **Edge Version 77 and later.**
8. Search for **Extensions** which gives you an overview of all extension-related settings.
9. Select the setting **Control which extensions are installed silently.**
10. Select **Enabled.**
11. Add the extension ID when prompted: *lcmcgbabdcbngcbcfabdncmoppkajglo***.**
12. Select **OK.**

### Option 3: Group Policy setup for Edge

Use this option to configure the extension and requirements organization-wide using Group Policy.

For the Group Policy setup option, complete the following steps:

**Step 1: Import the latest Microsoft Edge Administrative Template (.admx) file.**

Devices must be manageable using Group Policies and all [Microsoft Edge Administrative Templates](https://www.microsoft.com/edge/business/download) need to be imported into the Group Policy Central Store. For more information, see [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store).

**Step 2: Add the *Microsoft Compliance Extension* add-on to the *Force Install* list.**

Complete the following steps to add the extension:

1. In the **Group Policy Management Editor**, navigate to your Organizational Unit (OU).
2. Expand the following path **Computer/User configuration** \> **Policies** \> **Administrative templates** \> **Classic administrative templates** \> **Microsoft Edge** \> **Extensions**. This path may vary depending on the configuration of your organization.
3. Select **Configure which extensions are installed silently.**
4. Right-click and select **Edit**.
5. Check the **Enabled** radio button.
6. Select **Show**.
7. For **Value**, add the following entry: *lcmcgbabdcbngcbcfabdncmoppkajglo;https://edge.microsoft.com/extensionwebstorebase/v1/crx*
8. Select **OK** and the select **Apply**.

## Configure browser signal detection for Google Chrome

Insider risk management browser signal detection support for Google Chrome is enabled through the *Microsoft Compliance Extension*. This extension also supports Endpoint DLP on Chrome. For more information about Endpoint DLP support, see [Get started with the Microsoft Compliance Extension (preview)](/microsoft-365/compliance/dlp-chrome-get-started).

### Google Chrome browser requirements

- Meet common requirements
- Latest version of Google Chrome x64
- Latest *Microsoft Compliance Extension* version (2.0.0.183 or higher)
- Chrome.exe is not configured as an unallowed browser

### Option 1: Basic setup (recommended for testing with Chrome)

Use this option to configure single machine selfhost for each device in your organization when testing browser signal detection.

For the basic setup option, complete the following steps:

**Step 1: Enable required Registry keys with PowerShell**

```PowerShell
Get-Item -path "HKLM:\\SOFTWARE\\Microsoft\\Windows Defender\\Miscellaneous Configuration" | New-ItemProperty -Name DlpDisableBrowserCache -Value 0 -Force
```

>[!Important]
>These registry keys are required to ensure proper functionality of the extension. You must enable these registry keys before testing any signals.*

**Step 2: Install the *Microsoft Compliance Extension***

1. Navigate to [Microsoft Compliance Extension](https://chrome.google.com/webstore/detail/microsoft-compliance-exte/echcggldkblhodogklpincgchnpgcdco).
2. Install the extension.

### Option 2: Intune setup for Chrome

User this option to configure the extension and requirements for your organization using Intune.

For the Intune setup option, complete the following steps:

**Step 1: Enable required Registry key with Intune**

1. Run the following PowerShell script:

```PowerShell
Get-Item -path "HKLM:\\SOFTWARE\\Microsoft\\Windows Defender\\Miscellaneous Configuration" | New-ItemProperty -Name DlpDisableBrowserCache -Value 0 -Force
```

2. Sign-in to the [Microsoft Endpoint Manager Admin Center](https://endpoint.microsoft.com).
3. Navigate to **Devices** \> **Scripts** and select **Add.**
4. Browse to the location of the script created when prompted.
5. Select the following settings:

    - Run this script using the logged-on credentials: *Yes*
    - Enforce script signature check: *No*
    - Run script in 64-bit PowerShell Host: *Yes*

6. Select the appropriate device groups and apply the policy.

**Step 2: Configure Intune Force Install**

Before adding the Microsoft DLP Chrome extension to the list of force installed extensions, you must install the Chrome Administrative Template (.admx) file for Intune management. For step-by-step guidance, see [Manage Chrome Browser with Microsoft Intune](https://support.google.com/chrome/a/answer/9102677?hl=en#zippy=%2Cstep-ingest-the-chrome-admx-file-into-intune). After installing the Administrative Template file, complete the following steps:

1. Sign-in to the [Microsoft Endpoint Manager Admin Center](https://endpoint.microsoft.com).
2. Navigate to **Configuration Profiles**.
3. Select **Create Profile**.
4. Choose **Windows 10** as the *Platform*.
5. Choose **Custom** as the *Profile* type.
6. Select the **Settings** tab.
7. Select **Add.**
8. Enter the following policy information:

    - OMA-URI: *./Device/Vendor/MSFT/Policy/Config/Chrome~Policy~googlechrome~Extensions/ExtensionInstallForcelist*
    - Data type: *String*
    - Value: *\<enabled/\>\<data id="ExtensionInstallForcelistDesc" value="1&\#xF000; echcggldkblhodogklpincgchnpgcdco;https://clients2.google.com/service/update2/crx"/\>*

9. Select **Create**.

### Option 3: Group Policy setup for Chrome

Use this option to configure the extension and requirements organization-wide using Group Policy.

For the Group Policy setup option, complete the following steps:

**Step 1: Import the Chrome Administrative Template file**

Your devices must be manageable using Group Policy and all [Chrome Administrative Templates](https://chromeenterprise.google/browser/download/) need to be imported into the Group Policy Central Store. For more information, see [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store).

**Step 2: Enable required Registry key with PowerShell**

1. Create a PowerShell script with the following contents:

    ```PowerShell
    Get-Item -path "HKLM:\\SOFTWARE\\Microsoft\\Windows Defender\\Miscellaneous Configuration" | New-ItemProperty -Name DlpDisableBrowserCache -Value 0 -Force
    ```

2. Open the **Group Policy Management Console** and navigate to your organizational unit (OU).
3. Right-click and select **Create a GPO in this domain and link it here**. When prompted, assign a descriptive name to this Group Policy Object (GPO). For example, *DLP Chrome Immediate PowerShell Script*.
4. After creating the GPO, right-click and select **Edit**. This selection takes you to the Group Policy Object.
5. Navigate to **Computer configuration** \> **Preferences** \> **Control panel settings** \> **Scheduled tasks**.
6. Right-click on the blank area under **Scheduled Tasks** and select **New** \> **Immediate Task (at least Windows 7).**
7. Enter a task *Name* and *Description*.
8. Choose the corresponding account to run the immediate task. For example, *NT Authority*.
9. Select **Run with highest privileges**.
10. Configure the policy for Windows 10.
11. On the **Actions** tab, choose **Start a program**.
12. Enter the path to the program/script created in **Step 1**.
13. Select **Apply**.

**Step 3: Add the Chrome extension to the Force Install list**

1. In the **Group Policy Management Editor**, navigate to your organizational unit (OU).
2. Expand the following path **Computer/User configuration** \> **Policies** \> **Administrative templates** \> **Classic administrative templates** \> **Google** \> **Google Chrome** \> **Extensions**. This path may vary depending on the configuration for your organization.
3. Select **Configure the list of force installed extensions**.
4. Right-click and select **Edit**.
5. Select the **Enabled** radio button.
6. Select **Show**.
7. For **Value**, add the following entry: *echcggldkblhodogklpincgchnpgcdco;https://clients2.google.com/service/update2/crx*
8. Select **OK** and the select **Apply**.

## Test and verify insider risk management browser signal detections

1. Create an insider risk management policy with device indicators enabled.
2. To test signal detection for files copied to personal cloud storage, complete the following steps from a supported Windows device:

    - Open a file sharing website (Microsoft OneDrive, Google Drive, etc.) with the browser type that you've configured for signal detection.
    - With the browser, upload a non-executable file to the website.
3. To test signal detection for files printed to local or network devices, files transferred or copied to a network share, and files copied to USB devices, complete the following steps from a supported Windows device:

    - Open a non-executable file directly in the browser. The file must be opened directly through File Explorer or opened in a new browser tab for viewing rather than a webpage.
    - Print the file.
    - Save the file to a USB device.
    - Save the file to a network drive.
  
4. After your first insider risk management policy was created, you'll start to receive alerts from activity indicators after about 24 hours. Check the [Alerts dashboard](/microsoft-365/compliance/insider-risk-management-activities#alert-dashboard) for insider risk management alerts for the tested activities.
