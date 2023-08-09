---
title: Device health Microsoft Defender Antivirus health report
description: Use the Microsoft Defender Antivirus report to track antivirus status and Microsoft Defender Antivirus engine, intelligence, and platform versions.
keywords: Microsoft Defender Antivirus report, engine version, intelligence version, and platform versions, antivirus
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
ms.date: 09/06/2022
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
ms.reviewer: mkaminska
---

# Device health, Microsoft Defender Antivirus health report

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

The Device Health report provides information about the devices in your organization. The report includes trending information showing the antivirus status and Microsoft Defender Antivirus engine, intelligence, and platform versions.

> [!IMPORTANT]
> For devices to appear in Microsoft Defender Antivirus device health reports they must meet the following pre-requisites:  
>
> - Device is onboarded to Microsoft Defender for Endpoint
> - OS: Windows 10, Windows 11, Windows Server 2012 R2/, 2016 R2/ 2019/2022 (non MMA), MacOS, Linux 
> - Sense (MsSense.exe): **10.8210.** \*+. See [Prerequisites](#prerequisites) section for related details.
>
> For Windows&nbsp;Server&nbsp;2012&nbsp;R2 and Windows&nbsp;Server&nbsp;2016 to appear in device health reports, these devices must be onboarded using the modern unified solution package. For more information, see [New functionality in the modern unified solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution).

In the Microsoft 365 Security dashboard navigation panel, select **Reports**, and then open **Device health and compliance**. The [**Microsoft Defender Antivirus health** tab](#microsoft-defender-antivirus-health-tab) has eight cards that report on the following aspects of Microsoft Defender Antivirus:

- [Antivirus mode card](#antivirus-mode-card)
- [Antivirus engine version card](#antivirus-engine-version-card)
- [Antivirus security intelligence version card](#antivirus-security-intelligence-version-card)
- [Antivirus platform version card](#antivirus-platform-version-card)
- [Recent antivirus scan results card](#recent-antivirus-scan-results-card)
- [Antivirus engine updates card](#antivirus-engine-updates-card)
- [Security intelligence updates card](#security-intelligence-updates-card)
- [Antivirus platform updates card](#antivirus-platform-updates-card)

## Report access permissions

To access the Device health and antivirus compliance report in the Microsoft 365 Security dashboard, the following permissions are required:

| Permission name | Permission type |
|:---|:---|
| View Data | Threat and vulnerability management (TVM) |

To Assign these permissions:

1. Sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> using account with Security administrator or Global administrator role assigned.
1. In the navigation pane, select **Settings** \> **Endpoints** \> **Roles** (under **Permissions**).
1. Select the role you'd like to edit.
1. Select **Edit**.
1. In **Edit role**, on the **General** tab, in **Role name**, type a name for the role.
1. In **Description** type a brief summary of the role.
1. In **Permissions**, select **View Data**, and under **View Data** select **Threat and vulnerability management** (TVM).

For more information about user role management, see [Create and manage roles for role-based access control](user-roles.md).

## Microsoft Defender Antivirus health tab

The Microsoft Defender Antivirus health tab contains eight cards that report on several aspects of Microsoft Defender Antivirus in your organization:

Two cards, [Antivirus mode card](#antivirus-mode-card) and [Recent antivirus scan results card](#recent-antivirus-scan-results-card), report about Microsoft Defender Antivirus functions.

The remaining six cards report about the Microsoft Defender Antivirus status for devices in your organization:

| _version_ cards: | _update_ cards{<a id="fn1">1</a>} |
|:---|:---|
| [Antivirus engine version card](#antivirus-engine-version-card) <br> [Antivirus security intelligence version card](#antivirus-security-intelligence-version-card) <br> [Antivirus platform version card](#antivirus-platform-version-card) | [Antivirus engine updates card](#antivirus-engine-updates-card) <br> [Security intelligence updates card](#security-intelligence-updates-card) <br> [Antivirus platform updates card](#antivirus-platform-updates-card) |
| The three version cards provide flyout reports that provide additional information, and enable further exploration. | The three up-to-date reporting cards provide links to resources to learn more. |

<sup>{[1](#fn1)}</sup> For the three _updates_ cards (also known as up-to-date reporting cards), "**No data available**" (or "Unknown" value) indicates devices that aren't reporting update status. Devices that aren't reporting update status can be due to various reasons, such as:

- Computer is disconnected from the network.
- Computer is powered down or in a hibernation state.
- Microsoft Defender Antivirus is disabled.
- Device is a non-Windows (Mac or Linux) device.
- Cloud protection isn't enabled.
- Device doesn't meet pre-requisites for Antivirus engine or platform version.

### Prerequisites

Up-to-date reporting generates information for devices that meet the following criteria:

- Engine version: 1.1.19300.2+
- Platform version: 4.18.2202.1+
- Cloud protection enabled
- Sense (MsSense.exe): **10.8210.** \*+
- Windows OS - Windows 10 1809 or later

  > [!NOTE]
  > \* Currently up to date reporting is only available for Windows devices. Cross platform devices such as Mac and Linux are listed under "No data available"/Unknown.

:::image type="content" source="images/device-health-defender-antivirus-health-tab.png" alt-text="Shows the Microsoft Defender Antivirus Health tab." lightbox="images/device-health-defender-antivirus-health-tab.png":::

### Card functionality

The functionality is essentially the same for all cards. By clicking on a numbered bar in any of the cards, the **Microsoft Defender Antivirus details** flyout opens enabling you to review information about all the devices configured with the version number of an aspect on that card.

:::image type="content" source="images/device-health-defender-antivirus-health-antivirus-details.png" alt-text="Shows the Microsoft Defender Antivirus details flyout." lightbox="images/device-health-defender-antivirus-health-antivirus-details.png":::

If the version number that you clicked on is:

- A current version, then **Remediation required** and **Security recommendation** aren't present.
- An outdated version, a notification at the top of the report is present, indicating **Remediation required**, and a **Security recommendation** link is present. Select the security recommendation link to navigate to the threat and vulnerability management console, which can recommend appropriate antivirus updates.

To add or remove specific types of information on the **Microsoft Defender Antivirus details** flyout, select **Customize Columns**. In **Customize Columns**, select or clear items to specify what you want included in the Microsoft Defender Antivirus details report.

:::image type="content" source="images/device-health-defender-antivirus-engine-version-details-custom-columns.png" alt-text="Shows custom column options for Microsoft Defender Antivirus health reporting." lightbox="images/device-health-defender-antivirus-engine-version-details-custom-columns.png":::

#### New Microsoft Defender Antivirus filter definitions

The following table contains a list of terms that are new to Microsoft Defender Antivirus reporting.

| Column name | Description |
|:---|:---|
| Security intelligence publish time | Indicates Microsoft's release date of the security intelligence update version on the device. Devices with a security intelligence publish time greater than seven days are considered out of date in the reports. |
| Last seen | Indicates date when device last had connection. |
| Data refresh timestamp | Indicates when client events were last received for reporting on: AV mode, AV engine version, AV platform version, AV security intelligence version, and scan information. |
| Signature refresh time | Indicates when client events were last received for reporting on engine, platform, and signature up to date status. |

Within the flyout: clicking on the name of the device will redirect you to the "Device page" for that device, where you can access detailed reports.

#### Export report

There are two levels of reports that you can export:

##### Top level export

There are two different export csv functionalities through the portal:

- **Top level export**. You can use the top-level **Export** button to gather an all-up Microsoft Defender Antivirus health report (500-K limit).

:::image type="content" source="images/device-health-defender-antivirus-health-tab-export.png" alt-text="Screenshot that shows the top-level export report button." lightbox="images/device-health-defender-antivirus-health-tab-export.png":::

- **Flyout level export**. You can use the **Export** button within the flyouts to export a report to an Excel spreadsheet (100-K limit).

Exported reports capture information based on your entry point into the details report and which filters or customized columns you have set.

For information on exporting using API, see the following articles:

- [Export device antivirus health report](device-health-export-antivirus-health-report-api.md)
- [Export device antivirus health details API methods and properties](device-health-api-methods-properties.md)

> [!IMPORTANT]
>
> Currently, only the [Antivirus Health JSON Response](device-health-api-methods-properties.md#13-export-device-antivirus-health-details-api-properties-json-response) is generally available. [Antivirus Health API via files](device-health-api-methods-properties.md#14-export-device-antivirus-health-details-api-properties-via-files) is only available in public preview.
>
> [Advanced Hunting custom query](run-advanced-query-api.md) is currently only available in public preview, even if the queries are visible.

### Microsoft Defender Antivirus version and update cards functionality

Following are descriptions for the six cards that report about the _version_ and _update_ information for Microsoft Defender Antivirus engine, security intelligence, and platform components:

#### Full report

In any of the three _version_ cards, select **View full report** to display the nine most recent Microsoft Defender Antivirus _version_ reports for each of the three device types: Windows, Mac, and Linux; if fewer than nine exist, they're all shown. An **Other** category captures recent antivirus engine versions ranking tenth and below, if detected.

:::image type="content" source="images/device-health-defender-antivirus-health-view-full-report.png" alt-text="Shows the distribution of the top nine operating systems of each type" lightbox="images/device-health-defender-antivirus-health-view-full-report.png":::

A primary benefit of the three _version_ cards is that they provide quick indicators as to whether the most current versions of the antivirus engines, platforms, and security intelligence are being utilized. Coupled with the detailed information that is linked to the card, the versions cards become a powerful tool to check if versions are up to date and to gather information about individual computers, or groups of computers.
Ideally, when you run these reports, they'll indicate that the most current antivirus versions are installed, as opposed to older versions.
Use these reports to determine whether your organization is taking full advantage of the most current versions.

:::image type="content" source="images/device-health-defender-antivirus-health-antivirus-details-up-to-date.png" alt-text="Shows Microsoft Defender Antivirus version details" lightbox="images/device-health-defender-antivirus-health-antivirus-details-up-to-date.png":::

To help ensure your anti-malware solution detects the latest threats, get updates automatically as part of Windows Update.

For more details on the current versions and how to update the different Microsoft Defender Antivirus components, visit [Microsoft Defender Antivirus platform support](microsoft-defender-antivirus-updates.md).

### Card descriptions

Following are brief summaries of the collected information reported in each of the _Antivirus version_ cards:

#### Antivirus mode card

Reports on how many devices in your organization – on the date indicated on the card – are in any of the following Microsoft Defender Antivirus modes:

| value | mode |
|---|---|
| 0 | Active |
| 1 | Passive |
| 2 | Disabled (uninstalled, disabled, or SideBySidePassive {also known as Low Periodic Scan}) |
| 3 | Others (Not running, Unknown) |
| 4 | EDRBlocked |

:::image type="content" source="images/device-health-defender-antivirus-health-antivirus-mode.png" alt-text="Shows filtering Microsoft Defender Antivirus modes" lightbox="images/device-health-defender-antivirus-health-antivirus-mode.png":::

Following are descriptions for each mode:

- **Active** mode - In active mode, Microsoft Defender Antivirus is used as the primary antivirus app on the device. Files are scanned, threats are remediated, and detected threats are listed in your organization's security reports and in your Windows Security app.
- **Passive** mode - In passive mode, Microsoft Defender Antivirus isn't used as the primary antivirus app on the device. Files are scanned, and detected threats are reported, but threats aren't remediated by Microsoft Defender Antivirus. IMPORTANT: Microsoft Defender Antivirus can run in passive mode only on endpoints that are onboarded to Microsoft Defender for Endpoint. See [Requirements for Microsoft Defender Antivirus to run in passive mode](microsoft-defender-antivirus-compatibility.md#requirements-for-microsoft-defender-antivirus-to-run-in-passive-mode).
- **Disabled** mode - synonymous with: uninstalled, disabled, sideBySidePassive, and Low Periodic Scan. When disabled, Microsoft Defender Antivirus isn't used. Files aren't scanned, and threats aren't remediated. In general, Microsoft doesn't recommend disabling or uninstalling Microsoft Defender Antivirus.
- **Others** mode - Not running, Unknown
- **EDR in Block** mode - In endpoint detection and response (EDR) blocked mode. See [Endpoint detection and response in block mode](edr-in-block-mode.md)

Devices that are in either passive, LPS, or Off present a potential security risk and should be investigated.

For details about LPS, see [Use limited periodic scanning in Microsoft Defender Antivirus](limited-periodic-scanning-microsoft-defender-antivirus.md).

#### Recent antivirus scan results card

This card has two bars graphs showing all-up results for quick scans and full scans. In both graphs, the first bar indicates the completion rate for scans, and indicate **Completed**, **Canceled**, or **Failed**. The second bar in each section provides the error codes for failed scans.
By scanning the **Mode** and **Recent scan results** columns, you can quickly identify devices that aren't in active antivirus scan mode, and devices that have failed or canceled recent antivirus scans. You can return to the report with this information and gather more details and security recommendations. If any error codes are reported in this card, there will be a link to learn more about error codes.

For more details on the current Microsoft Defender Antivirus versions and how to update the different Microsoft Defender Antivirus components, visit [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md).

#### Antivirus engine version card

Shows the real-time results of the most current Microsoft Defender Antivirus engine versions installed across Windows Devices, Mac devices, and Linux devices in your organization. Microsoft Defender Antivirus engine is updated monthly.
For more information on the current versions and how to update the different Microsoft Defender Antivirus components, see [Microsoft Defender Antivirus platform support](microsoft-defender-antivirus-updates.md).

#### Antivirus security intelligence version card

Lists the most common _Microsoft Defender Antivirus security intelligence_ versions installed on devices on your network.
Microsoft continually updates Microsoft Defender security intelligence to address the latest threats, and to refine detection logic. These refinements to security intelligence enhance Microsoft Defender Antivirus' (and other Microsoft anti-malware solutions') ability to accurately identify potential threats. This security intelligence works directly with cloud-based protection to deliver AI-enhanced, next-generation protection that is fast and powerful.

##### Antivirus platform version card

Shows the real-time results of the most current Microsoft Defender Antivirus platform versions installed across versions of Windows, Mac, and Linux devices in your organization. Microsoft Defender Antivirus platform is updated monthly.
For more information on the current versions and how to update the different Microsoft Defender Antivirus components, see [Microsoft Defender Antivirus platform support](microsoft-defender-antivirus-updates.md)

#### Up-to-date cards

The up-to-date cards show the up-to-date status for **Antivirus engine**, **Antivirus platform**, and **Security intelligence** update versions. There are three possible states: _Up to date_ ('True'), _out of date_ ('False'), and _no data available_ ('Unknown').

> [!IMPORTANT]
>
> The logic used to make up-to-date determinations has recently been enhanced and simplified. The new behavior is documented in this section.

Definitions for _Up to date_, _out of date_, and _no data available_ are provided for each card below.

Microsoft Defender Antivirus uses the additional criteria of "Signature refresh time" (the last time device communicated with up to date reports) to make up-to-date reports and determinations for engine, platform, and security intelligence updates.

The up-to-date status is automatically marked as "unknown" or "no data available" if the device hasn't communicated with reports for more than seven days (signature refresh time >7).

For more information about the aforementioned terms, refer back to the section: [New Microsoft Defender Antivirus filter definitions](#new-microsoft-defender-antivirus-filter-definitions)

> [!NOTE]
>
> Up to date reporting **prerequisites**
>
> Up to date reporting generates information for devices that meet the following criteria:
>
> - Engine version: 1.1.19300.2+
> - Platform version: 4.18.2202.1+
> - Cloud protection enabled
> - Windows OS*
>
>*Currently up to date reporting is only available for Windows devices. Cross platform devices such as Mac and Linux are listed under "no data available"
>

##### Up-to-date definitions

Following are up-to-date definitions for engine and platform:

| The engine/platform on the device is considered: | Situation |
|:---|:---|
| **up-to-date** | If the device communicated with the Defender report event ('Signature refresh time') within last seven days, and the Engine or Platform version build time is within last 60 days. |
| **out-of-date** | If the device communicated with the Defender report event ('Signature refresh time') within last seven days, but Engine or Platform version build time is older than 60 days. |
| **unknown (no data available)** | If the device hasn't communicated with the report event ('Signature refresh time') for more than seven days. |

Following is the definitions for up-to-date security intelligence:

| The security intelligence update is considered: | Situation |
|:---|:---|
|**up-to-date** | If the security intelligence version on the device was written in the past seven days and the device has communicated with the report event in past seven days. |

For more information, see:

- [Antivirus engine updates card](#antivirus-engine-updates-card)
- [Security intelligence updates card](#security-intelligence-updates-card)
- [Antivirus platform updates card](#antivirus-platform-updates-card)

##### Antivirus engine updates card

This card identifies devices that have antivirus engine versions that are up to date versus out of date.

**The general definition of 'up to date'** - The engine version on the device is the most recent engine release. The engine is _typically_ released monthly, via Windows Update (WU)). There's a three-day grace period given from the day when Windows Update (WU) is released.

The following table lays out the possible values for up to date reports for **Antivirus Engine**. Reported Status is based on the last time reporting event was received (_signature refresh time_). If the device hasn't communicated with reports for more than seven days (signature refresh time >7 days), then the status is automatically marked as 'Unknown' / 'No Data Available'.

| Event's Last Refresh Time (also known as "Signature Refresh Time" in reports) | _Reported Status_: |
|:----|:----|
| < 7 days (new) | whatever client reports (_Up to date <br/> Out of date <br/> Unknown)_ |
| > 7 days (old) | _Unknown_ |

For information about Manage Microsoft Defender Antivirus update versions, see [Monthly platform and engine versions](microsoft-defender-antivirus-updates.md#monthly-platform-and-engine-versions).

#### Antivirus platform updates card

This card identifies devices that have Antivirus platform versions that are up to date versus out of date.

**The general definition of 'up to date'** is that the platform version on the device is the most recent platform release. Platform is _typically_ released monthly, via Windows Update (WU). There's a three-day grace period from the day when WU is released.

The following table lays out the possible up to date report values for **Antivirus Platform**. Reported values are based on the last time reporting event was received (signature refresh time). If the device hasn't communicated with reports for more than seven days (signature refresh time >7 days) then the status is automatically marked as 'Unknown'/ 'No Data Available'.

| Event's Last Refresh Time (also known as "Signature Refresh Time" in reports) | _Reported Status_ |
|:----|:----|
| < 7 days (new) | whatever client reports (_Up to date <br/> Out of date <br/> Unknown)_ |
| > 7 days (old) | _Unknown_ |

For information about Manage Microsoft Defender Antivirus update versions, see [Monthly platform and engine versions](microsoft-defender-antivirus-updates.md#monthly-platform-and-engine-versions).

##### Security intelligence updates card

This card identifies devices that have security intelligence versions that are up to date versus out of date.

**The general definition of 'up to date'** is that the security intelligence version on the device was written in the past 7 days.

The following table lays out the possible up to date report values for **Security Intelligence** updates. Reported values are based on the last time reporting event was received, and the security intelligence publish time. If the device hasn't communicated with reports for more than seven days (signature refresh time >7 days), then the status is automatically marked as 'Unknown/ No Data Available'. Otherwise, the determination is made based on whether the security intelligence publish time is within seven days.

| Event's Last Refresh Time <br/> (Also known as "Signature Refresh Time" in reports) | Security Intelligence Publish Time | _Reported Status_ |
|:----|:----|:----|
| >7 days (old) | >7 days (old) | _Unknown_ |
| <7 days (new) | >7 days (old) | _Out of date_ |
| >7 days (old) | <7 days (new) | _Unknown_ |
| <7 days (new) | <7 days (new) | Up to date |

## See also

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are:
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions.
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).

- [Export device antivirus health details API methods and properties](device-health-api-methods-properties.md)
- [Export device antivirus health report](device-health-api-methods-properties.md)
- [Threat protection report](threat-protection-reports.md)

> [!TIP]
> For antivirus-related information for other platforms, see:
>
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
