---
title: Create indicators for files
ms.reviewer: 
description: Create indicators for a file hash that define the detection, prevention, and exclusion of entities.
keywords: file, hash, manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Create indicators for files

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. If you know a potentially malicious portable executable (PE) file, you can block it. This operation will prevent it from being read, written, or executed on devices in your organization.

There are three ways you can create indicators for files:

- By creating an indicator through the settings page
- By creating a contextual indicator using the add indicator button from the file details page
- By creating an indicator through the [Indicator API](ti-indicator.md)

## Before you begin

It's important to understand the following prerequisites prior to creating indicators for files:

- This feature is available if your organization uses **Microsoft Defender Antivirus (in active mode)** and **Cloud-based protection is enabled**. For more information, see [Manage cloud-based protection](/windows/security/threat-protection/microsoft-defender-antivirus/deploy-manage-report-microsoft-defender-antivirus).

- The Antimalware client version must be 4.18.1901.x or later. See [Monthly platform and engine versions](manage-updates-baselines-microsoft-defender-antivirus.md#monthly-platform-and-engine-versions)

- Supported on devices with Windows 10, version 1703 or later, Windows Server 2016 and 2019.

- To start blocking files, you first need to [turn on the "block or allow" feature](advanced-features.md) in Settings.

This feature is designed to prevent suspected malware (or potentially malicious files) from being downloaded from the web. It currently supports portable executable (PE) files, including .exe and .dll files. The coverage will be extended over time.

## Create an indicator for files from the settings page

1. In the navigation pane, select **Settings > Indicators**.

2. Select the **File hash** tab.

3. Select **Add indicator**.

4. Specify the following details:
    - Indicator - Specify the entity details and define the expiration of the indicator.
    - Action - Specify the action to be taken and provide a description.
    - Scope - Define the scope of the device group.

5. Review the details in the Summary tab, then select **Save**.

## Create a contextual indicator from the file details page

One of the options when taking [response actions on a file](respond-file-alerts.md) is adding an indicator for the file. When you add an indicator hash for a file, you can choose to raise an alert and block the file whenever a device in your organization attempts to run it.

Files automatically blocked by an indicator won't show up in the file's Action center, but the alerts will still be visible in the Alerts queue.

>[!IMPORTANT]
>- Typically, file blocks are enforced and removed within a couple of minutes, but can take upwards of 30 minutes.
>- If there are conflicting file indicator policies, the enforcement policy of the more secure policy is applied. For example, a SHA-256 file hash indicator policy takes precedence over an MD5 file hash indicator policy if both hash types define the same file.
>- If EnableFileHashComputation group policy is disabled, the blocking accuracy of the file IoC is reduced. However, enabling EnableFileHashComputation may impact device performance.
>    - For example, copying large files from a network share onto your local device, especially over a VPN connection, may have an effect on device performance.
>    - For more information about the EnableFileHashComputation group policy, see [Defender CSP](/windows/client-management/mdm/defender-csp)

## Policy conflict handling  

Cert and File IoC policy handling conflict will follow the below order:

- If the file is not allowed by Windows Defender Application Control and AppLocker enforce mode policy/policies, then **Block**

- Else if the file is allowed by the Defender Anti-Virus Exclusion, then **Allow**

- Else if the file is blocked or warned by a block or warn file IoC, then **Block/Warn**

- Else if the file is allowed by an allow file IOC policy, then **Allow**

- Else if the file is blocked by ASR rules, CFA, AV, SmartScreen, then **Block**  

- Else **Allow** (passes Windows Defender Application Control & AppLocker policy, no IoC rules apply to it)

If there are conflicting file IoC policies with the same enforcement type and target, the policy of the more secure (meaning longer) hash will be applied. For example, a SHA-256 file hash IoC policy will win over a MD5 file hash IoC policy if both hash types define the same file.

Note that threat and vulnerability management's block vulnerable application features uses the file IoCs for enforcement and will follow the above conflict handling order.

### Examples

|Component |Component enforcement |File indicator Action |Result
|--|--|--|--|
|Attack surface reduction file path exclusion |Allow |Block |Block
|Attack surface reduction rule |Block |Allow |Allow
|Windows Defender Application Control |Allow |Block |Allow |
|Windows Defender Application Control |Block |Allow |Block
|Microsoft Defender Antivirus exclusion |Allow |Block |Allow

## See also

- [Create indicators](manage-indicators.md)
- [Create indicators for IPs and URLs/domains](indicator-ip-domain.md)
- [Create indicators based on certificates](indicator-certificates.md)
- [Manage indicators](indicator-manage.md)
