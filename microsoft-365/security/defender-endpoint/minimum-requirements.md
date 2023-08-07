---
title: Minimum requirements for Microsoft Defender for Endpoint
description: Understand the licensing requirements and requirements for onboarding devices to the service
ms.service: microsoft-365-security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 07/12/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Minimum requirements for Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
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

[Defender for Endpoint Plan 1 and Plan 2](defender-endpoint-plan-1-2.md) (standalone or as part of other Microsoft 365 plans) don't include server licenses. To onboard servers to those plans, you need either Microsoft Defender for Cloud or Microsoft Defender for Business servers.

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

Devices on your network must be running one of these editions. New features or capabilities are typically provided only on operating systems that haven't yet reached the end of their support lifecycle. See [Supported Microsoft Defender for Endpoint capabilities by platform](/microsoft-365/security/defender-endpoint/supported-capabilities-by-platform) for more information. Microsoft recommends the installation of the latest available security patches for any operating system.

### Supported Windows versions

- Windows 11 Enterprise
- Windows 11 Education
- Windows 11 Pro
- Windows 11 Pro Education
- Windows 10 Enterprise
- [Windows 10 Enterprise LTSC 2016 (or later)](/windows/whats-new/ltsc/)
- Windows 10 Enterprise IoT*
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows 8.1 Enterprise**
- Windows 8.1 Pro**
- Windows 7 SP1 Enterprise**
- Windows 7 SP1 Pro**
- Windows server
  - Windows Server 2008 R2 SP1**
  - Windows Server 2012 R2
  - Windows Server 2016
  - Windows Server, version 1803 or later
  - Windows Server 2019 and later
  - Windows Server 2019 core edition
  - Windows Server 2022
  - Windows Server 2022 core edition
- Azure Virtual Desktop
- Windows 365 running one of the above operating systems/versions

### Other supported operating systems

- [macOS](microsoft-defender-endpoint-mac.md)
- [Linux](microsoft-defender-endpoint-linux.md)
- [Android](microsoft-defender-endpoint-android.md)
- [iOS](microsoft-defender-endpoint-ios.md)

> [!NOTE]
> You'll need to confirm the Linux distributions and versions of Android, iOS, and macOS are compatible with Defender for Endpoint.
> - *While Windows 10 IoT Enterprise is a supported OS in Microsoft Defender for Endpoint and enables OEMs/ODMs to distribute it as part of their product or solution, customers should follow the OEM/ODM's guidance around host-based installed software and supportability.
> - **Requires the use of the [Log Analytics](/azure/azure-monitor/agents/log-analytics-agent) / Microsoft Monitoring Agent (MMA)
> - Endpoints running mobile versions of Windows (such as Windows CE and Windows 10 Mobile) aren't supported.
> - Virtual Machines running Windows 10 Enterprise 2016 LTSB may encounter performance issues if run on non-Microsoft virtualization platforms.
> - For virtual environments, we recommend using Windows 10 Enterprise LTSC 2019 or later.
> - The standalone versions of [Defender for Endpoint Plan 1 and Plan 2](defender-endpoint-plan-1-2.md) do not include server licenses. To onboard servers to those plans, you'll need an additional license, such as Microsoft Defender for Servers Plan 1 or Plan 2 (as part of the [Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) offering). To learn more. see [Defender for Endpoint onboarding Windows Server](onboard-windows-server.md).

### Hardware requirements
The minimum hardware requirements for Defender for Endpoint on Windows devices are the same as the requirements for the operating system itself (that is, they are not in addition to the requirements for the operating system).

> Cores: 2 minimum, 4 preferred
> Memory: 1 GB minimum, 4 preferred

### Network and data storage and configuration requirements

When you run the onboarding wizard for the first time, you must choose where your Microsoft Defender for Endpoint-related information is stored: in the European Union, the United Kingdom, or the United States datacenter.

> [!NOTE]
>
> - You cannot change your data storage location after the first-time setup.
> - Review the [Microsoft Defender for Endpoint data storage and privacy](data-storage-privacy.md) for more information on where and how Microsoft stores your data.

#### IP stack

IPv4 (Internet Protocol Version 4) stack must be enabled on devices for communication to the Defender for Endpoint cloud service to work as expected.

Alternatively, if you must use an IPv6-only configuration, consider adding dynamic IPv6/IPv4 transitional mechanisms, such as DNS64/NAT64 to ensure end-to-end IPv6 connectivity to Microsoft 365 without any other network reconfiguration.

#### Internet connectivity

Internet connectivity on devices is required either directly or through proxy.

For more information on additional proxy configuration settings, see [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md).

## Microsoft Defender Antivirus configuration requirement

The Defender for Endpoint agent depends on the ability of Microsoft Defender Antivirus to scan files and provide information about them.

Configure Security intelligence updates on the Defender for Endpoint devices whether Microsoft Defender Antivirus is the active antimalware or not. For more information, see [Manage Microsoft Defender Antivirus updates and apply baselines](/windows/security/threat-protection/microsoft-defender-antivirus/manage-updates-baselines-microsoft-defender-antivirus).

When Microsoft Defender Antivirus isn't the active antimalware in your organization and you use the Defender for Endpoint service, Microsoft Defender Antivirus goes into passive mode.

If your organization has turned off Microsoft Defender Antivirus through group policy or other methods, devices that are onboarded must be excluded from this group policy.

If you're onboarding servers and Microsoft Defender Antivirus isn't the active antimalware on your servers, Microsoft Defender Antivirus will either need to be configured to go on passive mode or uninstalled. The configuration is dependent on the server version. For more information, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

> [!NOTE]
> Your regular group policy doesn't apply to Tamper Protection, and changes to Microsoft Defender Antivirus settings will be ignored when Tamper Protection is on.

## Microsoft Defender Antivirus Early Launch Antimalware (ELAM) driver is enabled

If you're running Microsoft Defender Antivirus as the primary antimalware product on your devices, the Defender for Endpoint agent will successfully onboard.

If you're running a third-party antimalware client and use Mobile Device Management solutions or Microsoft Configuration Manager (current branch), you need to ensure the Microsoft Defender Antivirus ELAM driver is enabled. For more information, see [Ensure that Microsoft Defender Antivirus is not disabled by policy](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy).

## Related topics

- [Set up Microsoft Defender for Endpoint deployment](production-deployment.md)
- [Onboard devices](onboard-configure.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
