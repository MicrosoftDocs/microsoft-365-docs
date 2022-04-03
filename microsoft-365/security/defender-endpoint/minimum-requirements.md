---
title: Minimum requirements for Microsoft Defender for Endpoint
description: Understand the licensing requirements and requirements for onboarding devices to the service
keywords: minimum requirements, licensing, comparison table
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365-initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Minimum requirements for Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-minreqs-abovefoldlink)

There are some minimum requirements for onboarding devices to the service. Learn about the licensing, hardware and software requirements, and other configuration settings to onboard devices to the service.

> [!TIP]
>
> - This article describes the minimum requirements for Microsoft Defender for Endpoint Plan 2. If you are looking for information about Defender for Endpoint Plan 1, see [Requirements for Defender for Endpoint Plan 1](mde-p1-setup-configuration.md#review-the-requirements).
> - Learn about the latest enhancements in Defender for Endpoint: [Defender for Endpoint Tech Community](https://techcommunity.microsoft.com/t5/Windows-Defender-Advanced-Threat/ct-p/WindowsDefenderAdvanced).
> - Defender for Endpoint demonstrated industry-leading optics and detection capabilities in the recent MITRE evaluation. Read: [Insights from the MITRE ATT&CK-based evaluation](https://cloudblogs.microsoft.com/microsoftsecure/2018/12/03/insights-from-the-mitre-attack-based-evaluation-of-windows-defender-atp/).

## Licensing requirements
For information licensing requirements for Microsoft Defender for Endpoint, see [Microsoft Defender for Endpoint licensing information](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-defender-for-endpoint).


For detailed licensing information, see the [Product Terms site](https://www.microsoft.com/licensing/terms/) and work with your account team to learn more about the terms and conditions.

For more information on the array of features in Windows editions, see [Compare Windows editions](https://www.microsoft.com/windowsforbusiness/compare).

## Browser requirements

Access to Defender for Endpoint is done through a browser, supporting the following browsers:

- Microsoft Edge
- Google Chrome

> [!NOTE]
> While other browsers might work, the mentioned browsers are the ones supported.

## Hardware and software requirements

### Supported Windows versions

- Windows 7 SP1 Enterprise ([Requires ESU for support](/troubleshoot/windows-client/windows-7-eos-faq/windows-7-extended-security-updates-faq).)
- Windows 7 SP1 Pro ([Requires ESU for support](/troubleshoot/windows-client/windows-7-eos-faq/windows-7-extended-security-updates-faq).)
- Windows 8.1 Enterprise
- Windows 8.1 Pro
- Windows 11 Enterprise
- Windows 11 Education
- Windows 11 Pro
- Windows 11 Pro Education
- Windows 10 Enterprise
- [Windows 10 Enterprise LTSC 2016 (or later)](/windows/whats-new/ltsc/)
- Windows 10 Enterprise IoT

    >[!NOTE]
    >While Windows 10 IoT Enterprise is a supported OS in Microsoft Defender for Endpoint and enables OEMs/ODMs to distribute it as part of their product or solution, customers should follow the OEM/ODM's guidance around host-based installed software and supportability.

- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows server
  - Windows Server 2008 R2 SP1 ([Requires ESU for support](/windows-server/get-started/extended-security-updates-deploy))
  - Windows Server 2012 R2
  - Windows Server 2016
  - Windows Server, version 1803 or later
  - Windows Server 2019
  - Windows Server 2022
- Windows Virtual Desktop

Devices on your network must be running one of these editions.

The hardware requirements for Defender for Endpoint on devices are the same for the supported editions.

> Cores: 2 minimum, 4 preferred
> Memory: 1 GB minimum, 4 preferred

For more information on supported versions of Windows 10, see (/windows/release-health/release-information).

> [!NOTE]
> Machines running mobile versions of Windows (such as Windows CE and Windows 10 Mobile) aren't supported.
>
> Virtual Machines running Windows 10 Enterprise 2016 LTSB may encounter performance issues if run on non-Microsoft virtualization platforms.
>
> For virtual environments, we recommend using Windows 10 Enterprise LTSC 2019 or later.

When components are up-to-date on Microsoft Windows operating systems, Microsoft Defender for Endpoint support will follow the respective operating system's lifecycle. For more information, see [Lifecycle FAQ](/lifecycle/faq/general-lifecycle). New features or capabilities are typically provided only on operating systems that have not yet reached the end of their lifecycle. Security intelligence updates (definition and engine updates) and detection logic will continue to be provided until at least:

- The [end of support date](/lifecycle/products/) (for operating systems that do not have an Extended Security Updates (ESU) program).
- The [end of ESU date](/lifecycle/faq/extended-security-updates) (for operating systems that have an ESU program).



### Other supported operating systems

- [Android](microsoft-defender-endpoint-android.md)
- [iOS](microsoft-defender-endpoint-ios.md)
- [Linux](microsoft-defender-endpoint-linux.md)
- [macOS](microsoft-defender-endpoint-mac.md)

> [!NOTE]
> You'll need to confirm the Linux distributions and versions of Android, iOS, and macOS are compatible with Defender for Endpoint for the integration to work.

### Network and data storage and configuration requirements

When you run the onboarding wizard for the first time, you must choose where your Microsoft Defender for Endpoint-related information is stored: in the European Union, the United Kingdom, or the United States datacenter.

> [!NOTE]
>
> - You cannot change your data storage location after the first-time setup.
> - Review the [Microsoft Defender for Endpoint data storage and privacy](data-storage-privacy.md) for more information on where and how Microsoft stores your data.

### Diagnostic data settings

> [!NOTE]
> Microsoft Defender for Endpoint doesn't require any specific diagnostic level as long as it's enabled.

Make sure that the diagnostic data service is enabled on all the devices in your organization.
By default, this service is enabled. It's good practice to check to ensure that you'll get sensor data from them.

#### Use the command line to check the Windows diagnostic data service startup type

1. Open an elevated command-line prompt on the device:
   1. Go to **Start** and type **cmd**.
   2. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

   ```console
   sc qc diagtrack
   ```

   If the service is enabled, then the result should look like the following screenshot:

   :::image type="content" source="images/windefatp-sc-qc-diagtrack.png" alt-text="Result of the sc query command for diagtrack" lightbox="images/windefatp-sc-qc-diagtrack.png":::

You'll need to set the service to automatically start if the **START_TYPE** isn't set to **AUTO_START**.

#### Use the command line to set the Windows diagnostic data service to automatically start

1. Open an elevated command-line prompt on the endpoint:
    1. Go to **Start** and type **cmd**.
    2. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

    ```console
    sc config diagtrack start=auto
    ```

3. A success message is displayed. Verify the change by entering the following command, and press **Enter**:

    ```console
    sc qc diagtrack
    ```

#### Internet connectivity

Internet connectivity on devices is required either directly or through proxy.

The Defender for Endpoint sensor can use a daily average bandwidth of 5 MB to communicate with the Defender for Endpoint cloud service and report cyber data. One-off activities such as file uploads and investigation package collection aren't included in this daily average bandwidth.

For more information on additional proxy configuration settings, see [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md).

Before you onboard devices, the diagnostic data service must be enabled. The service is enabled by default in Windows 10 and Windows 11.

## Microsoft Defender Antivirus configuration requirement

The Defender for Endpoint agent depends on the ability of Microsoft Defender Antivirus to scan files and provide information about them.

Configure Security intelligence updates on the Defender for Endpoint devices whether Microsoft Defender Antivirus is the active antimalware or not. For more information, see [Manage Microsoft Defender Antivirus updates and apply baselines](/windows/security/threat-protection/microsoft-defender-antivirus/manage-updates-baselines-microsoft-defender-antivirus).

When Microsoft Defender Antivirus isn't the active antimalware in your organization and you use the Defender for Endpoint service, Microsoft Defender Antivirus goes on passive mode.

If your organization has turned off Microsoft Defender Antivirus through group policy or other methods, devices that are onboarded must be excluded from this group policy.

If you're onboarding servers and Microsoft Defender Antivirus isn't the active antimalware on your servers, Microsoft Defender Antivirus will either need to be configured to go on passive mode or uninstalled. The configuration is dependent on the server version. For more information, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

> [!NOTE]
> Your regular group policy doesn't apply to Tamper Protection, and changes to Microsoft Defender Antivirus settings will be ignored when Tamper Protection is on.

## Microsoft Defender Antivirus Early Launch Antimalware (ELAM) driver is enabled

If you're running Microsoft Defender Antivirus as the primary antimalware product on your devices, the Defender for Endpoint agent will successfully onboard.

If you're running a third-party antimalware client and use Mobile Device Management solutions or Microsoft Endpoint Manager (current branch), you'll need to ensure the Microsoft Defender Antivirus ELAM driver is enabled. For more information, see [Ensure that Microsoft Defender Antivirus is not disabled by policy](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy).

## Related topics

- [Set up Microsoft Defender for Endpoint deployment](production-deployment.md)
- [Onboard devices](onboard-configure.md)
