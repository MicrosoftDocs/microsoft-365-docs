---
title: Create indicators for IPs and URLs/domains
ms.reviewer:
description: Create indicators for IPs and URLs/domains that define the detection, prevention, and exclusion of entities.
keywords: ip, url, domain, manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.subservice: mde
search.appverid: met150
---

# Create indicators for IPs and URLs/domains

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Defender for Endpoint can block what Microsoft deems as malicious IPs/URLs, through Windows Defender SmartScreen for Microsoft browsers, and through Network Protection for non-Microsoft browsers or calls made outside of a browser.

The threat intelligence data set for this has been managed by Microsoft.

By creating indicators for IPs and URLs or domains, you can now allow or block IPs, URLs, or domains based on your own threat intelligence. You can also warn users with a prompt if they open a risky app. The prompt won't stop  them from using the app but you can provide a custom message and links to a company page that describes appropriate usage of the app. Users can still bypass the warning and continue to use the app if they need.

You can do this through the settings page or by machine groups if you deem certain groups to be more or less at risk than others.

> [!NOTE]
> Classless Inter-Domain Routing (CIDR) notation for IP addresses is not supported.

## Before you begin

It's important to understand the following prerequisites prior to creating indicators for IPS, URLs, or domains:

- URL/IP allow and block relies on the Defender for Endpoint component Network Protection to be enabled in block mode. For more information on Network Protection and configuration instructions, see [Enable network protection](enable-network-protection.md).
- The Antimalware client version must be 4.18.1906.x or later. 
- Supported on machines on Windows 10, version 1709 or later, Windows 11, Windows Server 2016, Windows Server 2012 R2, Windows Server 2019, Windows Server 2022, and Android and iOS devices.

    > [!NOTE]
    > Windows Server 2016 and Windows Server 2012 R2 will need to be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016) for this feature to work.

- Ensure that **Custom network indicators** is enabled in **Microsoft 365 Defender** \> **Settings** \> **Advanced features**. For more information, see [Advanced features](advanced-features.md).
- For support of indicators on iOS, see [Microsoft Defender for Endpoint on iOS](/microsoft-365/security/defender-endpoint/ios-configure-features#configure-custom-indicators).
- For support of indicators on Android, see [Microsoft Defender for Endpoint on Android](/microsoft-365/security/defender-endpoint/android-configure#configure-custom-indicators).

> [!IMPORTANT]
> Only external IPs can be added to the indicator list. Indicators cannot be created for internal IPs.
> For web protection scenarios, we recommend using the built-in capabilities in Microsoft Edge. Microsoft Edge leverages [Network Protection](network-protection.md) to inspect network traffic and allows blocks for TCP, HTTP, and HTTPS (TLS).
> If there are conflicting URL indicator policies, the longer path is applied. For example, the URL indicator policy `https://support.microsoft.com/office` takes precedence over the URL indicator policy `https://support.microsoft.com`.

> [!NOTE]
> For processes other than Microsoft Edge and Internet Explorer, web protection scenarios leverage Network Protection for inspection and enforcement:
>
> - IP is supported for all three protocols (TCP, HTTP, and HTTPS (TLS))
> - Only single IP addresses are supported (no CIDR blocks or IP ranges) in custom indicators
> - Encrypted URLs (full path) can only be blocked on first party browsers (Internet Explorer, Edge)
> - Encrypted URLs (FQDN only) can be blocked in third party browsers (i.e. other than Internet Explorer, Edge)
> - Full URL path blocks can be applied for unencrypted URLs
>
> There may be up to 2 hours of latency (usually less) between the time the action is taken, and the URL and IP being blocked.

When using the warn mode, you can configure the following controls:

**Bypass ability**:

- Allow button in Edge
- Allow button on toast (Non-Microsoft browsers)
- Bypass duration parameter on the indicator
- Bypass enforcement across Microsoft and Non-Microsoft browsers

**Redirect URL**:

- Redirect URL parameter on the indicator
- Redirect URL in Edge
- Redirect URL on toast (Non-Microsoft browsers)

For more information, see [Govern apps discovered by Microsoft Defender for Endpoint](/cloud-app-security/mde-govern).

## Create an indicator for IPs, URLs, or domains from the settings page

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Indicators** (under **Rules**).

2. Select the **IP addresses or URLs/Domains** tab.

3. Select **Add item**.

4. Specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

5. Review the details in the Summary tab, then click **Save**.

## Related topics

- [Create indicators](manage-indicators.md)
- [Create indicators for files](indicator-file.md)
- [Create indicators based on certificates](indicator-certificates.md)
- [Manage indicators](indicator-manage.md)
