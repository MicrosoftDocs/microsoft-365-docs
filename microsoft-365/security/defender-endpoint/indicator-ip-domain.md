---
title: Create indicators for IPs and URLs/domains
ms.reviewer: thdoucet
description: Create indicators for IPs and URLs/domains that define the detection, prevention, and exclusion of entities.
ms.service: microsoft-365-security
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
ms.date: 07/20/2023
---

# Create indicators for IPs and URLs/domains

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

## Overview

By creating indicators for IPs and URLs or domains, you can now allow or block IPs, URLs, or domains based on your own threat intelligence. You can also warn users with a prompt if they open a risky app. The prompt won't stop them from using the app but you can provide a custom message and links to a company page that describes appropriate usage of the app. Users can still bypass the warning and continue to use the app if they need.

To block malicious IPs/URLs (as determined by Microsoft), Defender for Endpoint can use:

- Windows Defender SmartScreen for Microsoft browsers
- Network Protection for non-Microsoft browsers, or calls made outside of a browser

The threat-intelligence data set to block malicious IPs/URLs is managed by Microsoft.

You can block malicious IPs/URLs through the settings page or by machine groups, if you deem certain groups to be more or less at risk than others.

> [!NOTE]
> Classless Inter-Domain Routing (CIDR) notation for IP addresses is not supported.

## Before you begin

It's important to understand the following prerequisites prior to creating indicators for IPS, URLs, or domains:

### Network Protection requirements

URL/IP allow and block requires that the Microsoft Defender for Endpoint component _Network Protection_ is enabled in block mode. For more information on Network Protection and configuration instructions, see [Enable network protection](enable-network-protection.md).

### Supported operating systems

- Windows 10, version 1709 or later
- Windows 11
- Windows Server 2016
- Windows Server 2012 R2
- Windows Server 2019
- Windows Server 2022
- Android and iOS devices

### Windows Server 2016 and Windows Server 2012 R2 requirements

Windows Server 2016 and Windows Server 2012 R2 must be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016).

### Microsoft Defender Antivirus version requirements

The _Antimalware client version_ must be 4.18.1906.x or later.

### Custom network indicators requirements

Ensure that **Custom network indicators** is enabled in **Microsoft 365 Defender** \> **Settings** \> **Advanced features**. For more information, see [Advanced features](advanced-features.md).

For support of indicators on iOS, see [Microsoft Defender for Endpoint on iOS](/microsoft-365/security/defender-endpoint/ios-configure-features#configure-custom-indicators).

For support of indicators on Android, see [Microsoft Defender for Endpoint on Android](/microsoft-365/security/defender-endpoint/android-configure#configure-custom-indicators).

### IoC indicator list limitations

Only external IPs can be added to the indicator list. Indicators can't be created for internal IPs. For web protection scenarios, we recommend using the built-in capabilities in Microsoft Edge. Microsoft Edge leverages [Network Protection](network-protection.md) to inspect network traffic and allows blocks for TCP, HTTP, and HTTPS (TLS).

### Non Microsoft Edge and Internet Explorer processes

For processes other than Microsoft Edge and Internet Explorer, web protection scenarios leverage Network Protection for inspection and enforcement:

- IP is supported for all three protocols (TCP, HTTP, and HTTPS (TLS))
- Only single IP addresses are supported (no CIDR blocks or IP ranges) in custom indicators
- Encrypted URLs (full path) can only be blocked on first party browsers (Internet Explorer, Edge)
- Encrypted URLs (FQDN only) can be blocked in third party browsers (that is, other than Internet Explorer, Edge)
- Full URL path blocks can be applied for unencrypted URLs
- If there are conflicting URL indicator policies, the longer path is applied. For example, the URL indicator policy `https://support.microsoft.com/office` takes precedence over the URL indicator policy `https://support.microsoft.com`.

## Network protection and the TCP three-way handshake

With network protection, the determination of whether to allow or block access to a site is made after the completion of the [three-way handshake via TCP/IP](/troubleshoot/windows-server/networking/three-way-handshake-via-tcpip). Thus, when a site is blocked by network protection, you might see an action type of `ConnectionSuccess` under `NetworkConnectionEvents` in the Microsoft 365 Defender portal, even though the site was blocked. `NetworkConnectionEvents` are reported from the TCP layer, and not from network protection. After the three-way handshake has completed, access to the site is allowed or blocked by network protection.

Here's an example of how that works:

1. Suppose that a user attempts to access a website on their device. The site happens to be hosted on a dangerous domain, and it should be blocked by network protection.  

2. The three-way handshake via TCP/IP commences. Before it completes, a `NetworkConnectionEvents` action is logged, and its `ActionType` is listed as `ConnectionSuccess`. However, as soon as the three-way handshake process completes, network protection blocks access to the site. All of this happens quickly. A similar process occurs with [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview); it's when the three-way handshake completes that a determination is made, and access to a site is either blocked or allowed.

3. In the Microsoft 365 Defender portal, an alert is listed in the [alerts queue](alerts-queue.md). Details of that alert include both `NetworkConnectionEvents` and `AlertEvents`. You can see that the site was blocked, even though you also have a `NetworkConnectionEvents` item with the ActionType of `ConnectionSuccess`.

### Warn mode controls

When using warn mode, you can configure the following controls:

- **Bypass ability**
  - Allow button in Edge
  - Allow button on toast (Non-Microsoft browsers)
  - Bypass duration parameter on the indicator
  - Bypass enforcement across Microsoft and Non-Microsoft browsers

- **Redirect URL**
  - Redirect URL parameter on the indicator
  - Redirect URL in Edge
  - Redirect URL on toast (Non-Microsoft browsers)

For more information, see [Govern apps discovered by Microsoft Defender for Endpoint](/cloud-app-security/mde-govern).

## IoC IP URL and domain policy conflict handling order

Policy conflict handling for domains/URLs/IP addresses differ from policy conflict handling for certs.

In the case where multiple different action types are set on the same indicator (for example, **block**,  **warn**, and **allow**,  action types set for Microsoft.com), the order those action types would take effect is:

1. Allow
2. Warn
3. Block

_Allow_ overrides _warn_ which overrides _block_: Allow > Warn > Block. Therefore, in the above example, Microsoft.com would be allowed.

### Policy conflict handling follows the order below

- Defender for Cloud Apps creates an unsanctioned indicator for all users but URL is allowed for a specific device group, the specific device group is Blocked access to the URL.
- If the IP, URL/Domain is allowed
- If the IP, URL/Domain is not allowed
- If the IP, URL/Domain is allowed
- If the IP, URL/Domain is not allowed
- If the IP, URL/Domain is allowed

Threat and vulnerability management's block vulnerable application features uses the file IoCs for enforcement and will follow the above conflict handling order.

If there are conflicting file IoC policies with the same enforcement type and target, the policy of the more secure will be applied.

## Policy precedence

Microsoft Defender for Endpoint policy has precedence over Microsoft Defender Antivirus policy. In situations when Defender for Endpoint is set to **Allow**, but Microsoft Defender Antivirus is set to **Block**, the policy will default to **Allow**.

### Precedence for multiple active policies

Applying multiple different web content filtering policies to the same device will result in the more restrictive policy applying for each category. Consider the following scenario:

- **Policy 1** blocks categories 1 and 2 and audits the rest
- **Policy 2** blocks categories 3 and 4 and audits the rest

The result is that categories 1-4 are all blocked. This is illustrated in the following image.

:::image type="content" source="images/web-content-filtering-policies-mode-precedence.png" alt-text="Diagram that shows the precedence of web content filtering policy block mode over audit mode.":::

## Create an indicator for IPs, URLs, or domains from the settings page

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Indicators** (under **Rules**).

2. Select the **IP addresses or URLs/Domains** tab.

3. Select **Add item**.

4. Specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

5. Review the details in the **Summary** tab, then select **Save**.

> [!NOTE]
> There may be up to 2 hours of latency between the time a policy is created and the URL or IP being blocked on the device.

## Related articles

- [Create indicators](manage-indicators.md)
- [Create indicators for files](indicator-file.md)
- [Create indicators based on certificates](indicator-certificates.md)
- [Manage indicators](indicator-manage.md)
- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
