---
title: Use network protection to help prevent connections to bad sites
description: Protect your network by preventing users from accessing known malicious and suspicious network addresses
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 06/19/2023
audience: ITPro
author: denisebmsft
ms.author: deniseb
ms.reviewer: oogunrinde
manager: dansimp
ms.custom: asr
ms.subservice: mde
ms.topic: overview
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Protect your network

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows
- macOS
- Linux

Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Overview of network protection

Network protection helps protect devices from Internet-based events. Network protection is an attack surface reduction capability. It helps prevent employees from accessing dangerous domains through applications. Domains that host phishing scams, exploits, and other malicious content on the Internet are considered dangerous. Network protection expands the scope of [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) to block all outbound HTTP(s) traffic that attempts to connect to low-reputation sources (based on the domain or hostname).

Network protection extends the protection in [Web protection](web-protection-overview.md) to the operating system level, and is a core component for Web Content Filtering (WCF). It provides the web protection functionality found in Microsoft Edge to other supported browsers and non-browser applications. Network protection also provides visibility and blocking of indicators of compromise (IOCs) when used with [Endpoint detection and response](overview-endpoint-detection-response.md). For example, network protection works with your [custom indicators](manage-indicators.md) that you can use to block specific domains or host names.

### Network protection coverage

The following table summarizes network protection areas of coverage.

| Feature | Microsoft Edge | 3rd-party browsers | Non-browser processes <br> (e.g. PowerShell) |
|:---|:---|:---|:---|
| Web Threat Protection | SmartScreen must be enabled | NP has to be in block mode | NP has to be in block mode |
| Custom Indicators | SmartScreen must be enabled | NP has to be in block mode | NP has to be in block mode |
| Web Content Filtering | SmartScreen must be enabled | NP has to be in block mode | Not supported |

> [!NOTE]
> On Mac and Linux, you must have network protection in block mode to get support for these features in Edge.
> On Windows, network protection does not monitor Microsoft Edge. For processes other than Microsoft Edge and Internet Explorer, web protection scenarios leverage network protection for inspection and enforcement.
> - IP is supported for all three protocols (TCP, HTTP, and HTTPS (TLS)).
> - Only single IP addresses are supported (no CIDR blocks or IP ranges) in custom indicators.
> - Encrypted URLs (full path) can only be blocked on first party browsers (Internet Explorer, Edge).
> - Encrypted URLs (FQDN only) can be blocked in third party browsers (i.e. other than Internet Explorer, Edge).
> - Full URL path blocks can be applied for unencrypted URLs.
>
> There may be up to 2 hours of latency (usually less) between the time the action is taken, and the URL and IP being blocked.

Watch this video to learn how Network protection helps reduce the attack surface of your devices from phishing scams, exploits, and other malicious content.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4r4yZ]

## Requirements for network protection

Network protection requires Windows 10 or 11 (Pro or Enterprise), Windows Server version 1803 or later, macOS version 11 or later, or Defender Supported Linux versions, and Microsoft Defender Antivirus real-time protection.

| Windows version | Microsoft Defender Antivirus |
|:---|:---|
| Windows 10 version 1709 or later, Windows 11, Windows Server 1803 or later | Make sure that [Microsoft Defender Antivirus real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) and [cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) are enabled (active) |
| Windows Server 2012 R2 and Windows Server 2016 with the unified agent | Platform Update version 4.18.2001.x.x or newer |

## Why network protection is important

Network protection is a part of the attack surface reduction group of solutions in Microsoft Defender for Endpoint. Network protection enables layer the network layer of blocking URLs and IP addresses. Network protection can block URLs from being accessed by using certain browsers and standard network connections. By default, network protection guards your computers from known malicious URLs using the SmartScreen feed, which blocks malicious URLs in a manner similar to SmartScreen in Microsoft Edge browser. The network protection functionality can be extended to:

- Block IP/URL addresses from your own threat intelligence ([indicators](indicator-ip-domain.md))
- Block unsanctioned services from [Microsoft Defender for Cloud Apps](/defender-cloud-apps/what-is-defender-for-cloud-apps)
- Block sites based on category ([Web content filtering](web-content-filtering.md))

Network protection is a critical part of the Microsoft protection and response stack.

> [!TIP]
> For details about network protection for Windows Server, Linux, MacOS and Mobile Threat Defense (MTD), see [Proactively hunt for threats with advanced hunting](advanced-hunting-overview.md).

### Block Command and Control attacks

Command and Control (C2) server computers are used by malicious users to send commands to systems compromised by malware, and then exert some type of control over compromised systems. C2 attacks typically hide in cloud-based services such as file-sharing and webmail services, enabling the C2 servers to avoid detection by blending in with typical traffic.

C2 servers can be used to initiate commands that can:

- Steal data (for example, by way of phishing)
- Control compromised computers in a botnet
- Disrupt legitimate applications
- Spread malware, such as ransomware

The network protection component of Defender for Endpoint identifies and blocks connections to C2 infrastructures used in human-operated ransomware attacks, using techniques like machine learning and intelligent indicator-of-compromise (IoC) identification.

#### Network protection: C2 detection and remediation

In its initial form, ransomware is a commodity threat, pre-programmed and focused on limited, specific outcomes (for example, encrypting a computer). However, ransomware has evolved into a sophisticated threat that is human-driven, adaptive, and focused on larger scale and more widespread outcomes, like holding an entire organization's assets or data for ransom.

Support for Command and Control servers (C2) is a key part of this ransomware evolution and is what enables these attacks to adapt to the environment they target. Breaking the link to the command-and-control infrastructure stops the progression of an attack to its next stage. For additional information about C2 detection and remediation, see [Detecting and remediating command and control attacks at the network layer](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/detecting-and-remediating-command-and-control-attacks-at-the/ba-p/3650607).

#### Network protection: New toast notifications

| New mapping  | Response category  | Sources |
| :--- | :--- | :--- |
| phishing | Phishing | SmartScreen |
| malicious | Malicious | SmartScreen |
| command and control | C2 | SmartScreen |
| command and control | COCO | SmartScreen |
| malicious | Untrusted | SmartScreen |
| by your IT admin | CustomBlockList |   |
| by your IT admin | CustomPolicy |   |

> [!NOTE]
> **customAllowList** does not generate notifications on endpoints.

### New notifications for network protection determination

A new, publicly available capability in network protection utilizes functions in SmartScreen to block phishing activities from malicious command and control sites.

When an end user attempts to visit a website in an environment in which network protection is enabled, three scenarios are possible:

- The URL has a **known good reputation** - In this case the user is permitted access without obstruction, and there's no toast notification presented on the endpoint. In effect, the domain or URL is set to _Allowed_.
- The URL has an **unknown or uncertain reputation** - The user's access is blocked, but with the ability to circumvent (unblock) the block. In effect, the domain or url is set to _Audit_.
- The URL has a **known bad (malicious) reputation** - The user is prevented from access. In effect, the domain or url is set to _Block_.

#### Warn experience

A user visits a website:

- If the url has an unknown or uncertain reputation, a toast notification will present the user with the following options:

  - **Ok** - The toast notification is released (removed), and the attempt to access the site is ended.
  - **Unblock** - The user won't need to access the Windows Defender Security Intelligence (WDSI) portal to gain site access. The user will have access to the site for 24 hours; at which point the block is reenabled for another 24 hours. The user can continue to use **Unblock** to access the site until such time that the administrator prohibits (blocks) the site, thus removing the option to **Unblock**.
  - **Feedback** - The toast notification presents the user with a link to submit a ticket, which the user can use to submit feedback to the administrator in an attempt to justify access to the site.

    :::image type="content" source="images/network-protection-phishing-warn-2.png" alt-text="Shows a network protection phishing content warn notification.":::

  > [!NOTE]
  > The images shown here for warn experience and block experience (below) both list **"blocked url"** as example placeholder text; in a functioning environment the actual url or domain will be listed.  

#### Block experience

A user visits a website:

- If the url has a bad reputation, a toast notification will present the user with the following options:
  - **Ok** The toast notification is released (removed), and the attempt to access the site is ended.
  - **Feedback** The toast notification presents the user with a link to submit a ticket, which the user can use to submit feedback to the administrator in an attempt to justify access to the site.

    :::image type="content" source="images/network-protection-phishing-blocked.png" alt-text="Shows a network protection known phishing content blocked notification." lightbox="images/network-protection-phishing-blocked.png":::

## SmartScreen Unblock

With indicators in Defender for Endpoint, administrators can allow end users to bypass warnings that are generated for some URLs and IPs. Depending on why the URL was blocked, when a SmartScreen block is encountered it may offer administrators the ability to unblock the site for up to 24 hours. In such cases, a Windows Security toast notification will appear, permitting the end-user to **Unblock** the URL or IP for the defined period of time.  

:::image type="content" source="images/network-protection-smart-screen-block-notification.png" alt-text="Windows Security notification for network protection.":::

Microsoft Defender for Endpoint administrators can configure SmartScreen Unblock functionality in the [Microsoft 365 Defender portal](https://security.microsoft.com) using an "allow" indicator for IPs, URLs, and domains.

:::image type="content" source="images/network-protection-smart-screen-block-configuration.png" alt-text="Network protection SmartScreen block configuration ULR and IP form.":::

See [Create indicators for IPs and URLs/domains](indicator-ip-domain.md).

## Using network protection

Network protection is enabled per device, which is typically done using your management infrastructure. For supported methods, see [Turn on network protection](enable-network-protection.md).

> [!NOTE]
> Microsoft Defender Antivirus must be active to enable network protection.

You can enable network protection in **Audit** mode or **Block** mode. If you want to evaluate the impact of enabling network protection before actually blocking IP addresses or URLs, you can enable network protection in Audit mode for time to gather data on what would be blocked. Audit mode logs when end users have connected to an address or site that would otherwise have been blocked by network protection. Note that in order for indicators of compromise (IoC) or Web content filtering (WCF) to work, network protection must be in "Block mode"

For information about network protection for Linux and macOS see: [Network protection for Linux](network-protection-linux.md) and [Network protection for macOS](network-protection-macos.md).

## Advanced hunting

If you're using advanced hunting to identify audit events, you'll have up to 30 days history available from the console. See [Advanced hunting](advanced-hunting-overview.md).

You can find the audit events in **Advanced hunting** in the Defender for Endpoint portal ([https://security.microsoft.com](https://security.microsoft.com)).  

Audit events are in DeviceEvents with an ActionType of `ExploitGuardNetworkProtectionAudited`. Blocks are shown with an ActionType of `ExploitGuardNetworkProtectionBlocked`.  

Here's an example query for viewing Network Protection events for third-party browsers:

```kusto

DeviceEvents
|where ActionType in ('ExploitGuardNetworkProtectionAudited','ExploitGuardNetworkProtectionBlocked')

```

:::image type="content" source="images/network-protection-advanced-hunting.png" alt-text="Advanced hunting for auditing and identifying events." lightbox="images/network-protection-advanced-hunting.png":::

> [!TIP]
> These entries have data in the **AdditionalFields** column which gives you great info around the action, if you expand **AdditionalFields** you can also get the fields: **IsAudit**, **ResponseCategory**, and **DisplayName**.

Here's another example:

```kusto

DeviceEvents
|where ActionType contains "ExploitGuardNetworkProtection"
|extend ParsedFields=parse_json(AdditionalFields)
|project DeviceName, ActionType, Timestamp, RemoteUrl, InitiatingProcessFileName, IsAudit=tostring(ParsedFields.IsAudit), ResponseCategory=tostring(ParsedFields.ResponseCategory), DisplayName=tostring(ParsedFields.DisplayName)
|sort by Timestamp desc

```

The Response category tells you what caused the event, for example:

| ResponseCategory | Feature responsible for the event |
|:---|:---|
| CustomPolicy |  WCF  |
| CustomBlockList  |   Custom indicators   |
| CasbPolicy   |   Defender for Cloud Apps   |
| Malicious   |   Web threats  |
| Phishing  |   Web threats  |

For more information, see [Troubleshoot endpoint blocks](web-protection-overview.md#troubleshoot-endpoint-blocks).

Note that Microsoft Defender SmartScreen events for the Microsoft Edge browser specifically, needs a different query:

```kusto

DeviceEvents
| where ActionType == "SmartScreenUrlWarning"
| extend ParsedFields=parse_json(AdditionalFields)
| project DeviceName, ActionType, Timestamp, RemoteUrl, InitiatingProcessFileName 

```

You can use the resulting list of URLs and IPs to determine what would have been blocked if the device was in block mode, and which feature blocked them. Review each item on the list to identify URLS or IPs whether any are necessary to your environment. If you find any entries that have been audited which are critical to your environment, create an Indicator to allow them in your network. Allow URL / IP indicators take precedence over any block.

Once you've created an indicator, you can look at resolving the underlying issue:

- SmartScreen – request review
- Indicator – modify existing indicator
- MCA – review unsanctioned APP
- WCF – request recategorization

Using this data you can make an informed decision on enabling Network protection in Block mode. See [Order of precedence for Network protection blocks](web-protection-overview.md#order-of-precedence).

> [!NOTE]
> As this is a per device setting if there are devices that cannot move to Block mode you can simply leave them on audit until you can rectify the challenge and you will still receive the auditing events.

For information about how to report false positives see [Report false positives](web-protection-overview.md#report-false-positives).

For details on how to create your own Power BI reports, see [Create custom reports using Power BI](api-power-bi.md).

## Configuring network protection

For more information about how to enable network protection, see **[Enable network protection](enable-network-protection.md)**. Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.

After you've enabled the services, you might need to configure your network or firewall to allow the connections between the services and your devices (also referred to as endpoints).

- `.smartscreen.microsoft.com`
- `.smartscreen-prod.microsoft.com`

## Viewing network protection events

Network protection works best with [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md), which gives you detailed reporting into exploit protection events and blocks as part of [alert investigation scenarios](investigate-alerts.md).

When network protection blocks a connection, a notification is displayed from the Action Center. Your security operations team can [customize the notification](attack-surface-reduction-rules-deployment-implement.md#customize-attack-surface-reduction-rules) with your organization's details and contact information. In addition, individual attack surface reduction rules can be enabled and customized to suit certain techniques to monitor.

You can also use [audit mode](audit-windows-defender.md) to evaluate how network protection would impact your organization if it were enabled.

## Review network protection events in the Microsoft 365 Defender portal

Defender for Endpoint provides detailed reporting into events and blocks as part of its [alert investigation scenarios](investigate-alerts.md). You can view these details in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) in the [alerts queue](review-alerts.md) or by using [advanced hunting](advanced-hunting-overview.md). If you're using [audit mode](audit-windows-defender.md), you can use advanced hunting to see how network protection settings would affect your environment if they were enabled.

## Review network protection events in Windows Event Viewer

You can review the Windows event log to see events that are created when network protection blocks (or audits) access to a malicious IP or domain:

1. [Copy the XML directly](event-views.md).

2. Select **OK**.

This procedure creates a custom view that filters to only show the following events related to network protection:

|Event ID|Description|
|---|---|
|5007|Event when settings are changed|
|1125|Event when network protection fires in audit mode|
|1126|Event when network protection fires in block mode|

## Network protection and the TCP three-way handshake

With network protection, the determination of whether to allow or block access to a site is made after the completion of the [three-way handshake via TCP/IP](/troubleshoot/windows-server/networking/three-way-handshake-via-tcpip). Thus, when a site is blocked by network protection, you might see an action type of `ConnectionSuccess` under `NetworkConnectionEvents` in the Microsoft 365 Defender portal, even though the site was blocked. `NetworkConnectionEvents` are reported from the TCP layer, and not from network protection. After the three-way handshake has completed, access to the site is allowed or blocked by network protection.

Here's an example of how that works:

1. Suppose that a user attempts to access a website on their device. The site happens to be hosted on a dangerous domain, and it should be blocked by network protection.  

2. The three-way handshake via TCP/IP commences. Before it completes, a `NetworkConnectionEvents` action is logged, and its `ActionType` is listed as `ConnectionSuccess`. However, as soon as the three-way handshake process completes, network protection blocks access to the site. All of this happens quickly. A similar process occurs with [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview); it's when the three-way handshake completes that a determination is made, and access to a site is either blocked or allowed.

3. In the Microsoft 365 Defender portal, an alert is listed in the [alerts queue](alerts-queue.md). Details of that alert include both `NetworkConnectionEvents` and `AlertEvents`. You can see that the site was blocked, even though you also have a `NetworkConnectionEvents` item with the ActionType of `ConnectionSuccess`.

## Considerations for Windows virtual desktop running Windows 10 Enterprise Multi-Session

Due to the multi-user nature of Windows 10 Enterprise, keep the following points in mind:

1. Network protection is a device-wide feature and can't be targeted to specific user sessions.

2. Web content filtering policies are also device wide.

3. If you need to differentiate between user groups, consider creating separate Windows Virtual Desktop host pools and assignments.

4. Test network protection in audit mode to assess its behavior before rolling out.

5. Consider resizing your deployment if you have a large number of users or a large number of multi-user sessions.

### Alternative option for network protection

For Windows Server 2012R2/2016 unified MDE client, Windows Server version 1803 or newer, Windows Server 2019 or newer, and Windows 10 Enterprise Multi-Session 1909 and up, used in Windows Virtual Desktop on Azure, network protection for Microsoft Edge can be enabled using the following method:

1. Use [Turn on network protection](enable-network-protection.md) and follow the instructions to apply your policy.

2. Execute the following PowerShell commands:

   - `Set-MpPreference -EnableNetworkProtection Enabled`
   - `Set-MpPreference -AllowNetworkProtectionOnWinServer 1`
   - `Set-MpPreference -AllowNetworkProtectionDownLevel 1`
   - `Set-MpPreference -AllowDatagramProcessingOnWinServer 1`

> [!NOTE]
> In some cases, depending on your infrastructure, volume of traffic, and other conditions, `Set-MpPreference -AllowDatagramProcessingOnWinServer 1` can have an effect on network performance.

### Network protection for Windows Servers

Following is information specific to Windows Servers.

#### Verify that network protection is enabled

Verify whether network protection is enabled on a local device by using Registry Editor.

1. Select the **Start** button in the task bar and type **regedit** to open the Registry Editor.
1. Select **HKEY_LOCAL_MACHINE** from the side menu.
1. Navigate through the nested menus to **SOFTWARE** > **Policies** > **Microsoft** > **Windows defender** > **Windows Defender Exploit Guard** > **Network Protection**.

   (If the key is not present, navigate to **SOFTWARE** > **Microsoft** > **Windows Defender** > **Windows Defender Exploit Guard** > **Network Protection**)

4. Select **EnableNetworkProtection** to see the current state of network protection on the device:

   - 0 = Off
   - 1 = On (enabled)
   - 2 = Audit mode

For additional information, see: [Turn on network protection](enable-network-protection.md)

##### Network protection suggestion

For Windows Server 2012R2/2016 unified MDE client, Windows Server version 1803 or newer, Windows Server 2019 or newer, and Windows 10 Enterprise Multi-Session 1909 and up (used in Windows Virtual Desktop on Azure), there are additional registry keys that must be enabled:

**HKEY_LOCAL_MACHINE**\**SOFTWARE**\**Policies**\**Microsoft**\**Windows Defender**\**Windows Defender Exploit Guard**\**Network Protection**

**AllowNetworkProtectionDownLevel** (dword) 1 (hex)
**AllowNetworkProtectionOnWinServer** (dword) 1 (hex)
**EnableNetworkProtection** (dword) 1 (hex)

> [!NOTE]
> Depending on your infrastructure, volume of traffic, and other conditions, **HKEY_LOCAL_MACHINE**\\**SOFTWARE**\\**Policies**\\**Microsoft**\\**Windows Defender** \\**NIS**\\**Consumers**\\**IPS** - **AllowDatagramProcessingOnWinServer (dword) 1 (hex)** can have an effect on network performance.

For additional information, see: [Turn on network protection](enable-network-protection.md)

#### Windows Servers and Windows Multi-session configuration requires PowerShell

For Windows Servers and Windows Multi-session, there are additional items that you must enable by using PowerShell cmdlets. For Windows Server 2012R2/2016 unified MDE client, Windows Server version 1803 or newer, Windows Server 2019 or newer, and Windows 10 Enterprise Multi-Session 1909 and up, used in Windows Virtual Desktop on Azure.

1. Set-MpPreference -EnableNetworkProtection Enabled
1. Set-MpPreference -AllowNetworkProtectionOnWinServer 1
1. Set-MpPreference -AllowNetworkProtectionDownLevel 1
1. Set-MpPreference -AllowDatagramProcessingOnWinServer 1

> [!NOTE]
> In some cases, depending on your infrastructure, volume of traffic, and other conditions, **Set-MpPreference -AllowDatagramProcessingOnWinServer 1** can have an effect on network performance.


## Network protection troubleshooting

Due to the environment where network protection runs, Microsoft might not be able to detect operating system proxy settings. In some cases, network protection clients are unable to reach the cloud service. To resolve the connectivity problem, [configure a static proxy for Microsoft Defender Antivirus](configure-proxy-internet.md#configure-a-static-proxy-for-microsoft-defender-antivirus).

## Optimizing network protection performance

Network protection now has a performance optimization that allows Block mode to start asynchronously inspecting long connections after they're validated and allowed by SmartScreen, which might provide a potential reduction in the cost that inspection has on bandwidth and can also help with app compatibility problems. This optimization capability is on by default. You can turn off this capability by using the following PowerShell cmdlet:

`Set-MpPreference -AllowSwitchToAsyncInspection $false`

## See also

- [Evaluate network protection](evaluate-network-protection.md) | Undertake a quick scenario that demonstrates how the feature works, and what events would typically be created.
- [Enable network protection](enable-network-protection.md) | Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.
- [Configuring attack surface reduction capabilities in Microsoft Intune](/mem/intune/protect/endpoint-security-asr-policy)
- [Network protection for Linux](network-protection-linux.md) | To learn about using Microsoft Network protection for Linux devices.
- [Network protection for macOS](network-protection-macos.md) | To learn more about Microsoft Network protection for macOS
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
