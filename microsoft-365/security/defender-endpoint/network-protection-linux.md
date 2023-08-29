---
title: Use network protection to help prevent Linux connections to bad sites
description: Protect your network by preventing Linux users from accessing known malicious and suspicious network addresses
keywords: Network protection, Linux exploits, malicious website, ip, domain, domains, command and control, SmartScreen, toast notification
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: dansimp
ms.author: dansimp
ms.reviewer: oogunrinde
manager: dansimp
ms.custom: asr
ms.subservice: mde
ms.topic: overview
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 02/17/2023
---

# Network protection for Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Overview

Microsoft is bringing Network Protection functionality to Linux.

Network protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host:

- phishing scams
- exploits
- other malicious content on the Internet

Network protection expands the scope of Microsoft Defender [SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) to block all outbound HTTP(s) traffic that attempts to connect to low-reputation sources. The blocks on outbound HTTP(s) traffic are based on the domain or hostname.

## Web content filtering for Linux

You can use web content filtering for testing with Network protection for Linux. See [Web content filtering](web-content-filtering.md).

### Known issues

- Network Protection is implemented as a virtual private network (VPN) tunnel. Advanced packet routing options using custom nftables/iptables scripts are available.
- Block/Warn UX isn't available
  - Customer feedback is being collected to drive further design improvements

> [!NOTE]
> To evaluate the effectiveness of Linux Web Threat Protection, we recommend using the Firefox browser which is the default for all the distributions.

### Prerequisites

- Licensing: Microsoft Defender for Endpoint tenant (can be trial) and platform specific requirements found in [Microsoft Defender for Endpoint for non-Windows platforms](non-windows.md#licensing-requirements)
- Onboarded Machines:
  - **Minimum Linux version**: For a list of supported distributions, see [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md).
  - **Microsoft Defender for Endpoint Linux client version**: 101.78.13 -insiderSlow(Preview)

## Instructions

Deploy Linux manually, see [Deploy Microsoft Defender for Endpoint on Linux manually](linux-install-manually.md)

The following example shows the sequence of commands needed to the mdatp package on ubuntu 20.04 for insiders-Slow channel.

```bash
curl -o microsoft.list https://packages.microsoft.com/config/ubuntu/20.04/insiders-slow.list
sudo mv ./microsoft.list /etc/apt/sources.list.d/microsoft-insiders-slow.list
sudo apt-get install gpg
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt install -y mdatp
```

### Device Onboarding

To onboard the device, you must download the Python onboarding package for Linux server from Microsoft 365 Defender -> Settings -> Device Management -> Onboarding and run:

```bash
sudo python3 MicrosoftDefenderATPOnboardingLinuxServer.py
```

### Validation

A. Check Network Protection has effect on always blocked sites:

- [http://www.smartscreentestratings2.net](http://www.smartscreentestratings2.net)
- [https://www.smartscreentestratings2.net](https://www.smartscreentestratings2.net)

B. Inspect diagnostic logs

```bash
$ sudo mdatp log level set --level debug
$ sudo tail -f /var/log/microsoft/mdatp/microsoft_defender_np_ext.log
```

#### To exit the validation mode

Disable network protection and restart the network connection:

```bash
$ sudo mdatp config network-protection enforcement-level --value disabled
```

## Advanced configuration

By default, Linux network protection is active on the default gateway; routing and tunneling are internally configured.
To customize the network interfaces, change the **networkSetupMode** parameter from the **/opt/microsoft/mdatp/conf/**  configuration file and restart the service:

```bash
sudo systemctl restart  mdatp
```

The configuration file also enables the user to customize:

- proxy setting
- SSL certificate stores
- tunneling device name
- IP
- and more

The default values were tested for all distributions as described in [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)

### Microsoft Defender portal

Also, make sure that in **Microsoft Defender** \> **Settings** \> **Endpoints** \> **Advanced features** that **'Custom network indicators'** toggle is set _enabled_.

> [!IMPORTANT]
> The above **'Custom network indicators'** toggle controls **Custom Indicators** enablement **for ALL platforms with Network Protection support, including Windows. Reminder that - on Windows - for indicators to be enforced you also must have Network Protection explicitly enabled.

>:::image type="content" source="images/network-protection-linux-defender-security-center-advanced-features-settings.png" alt-text="MEM Create Profile" lightbox="images/network-protection-linux-defender-security-center-advanced-features-settings.png":::

## How to explore the features

1. Learn how to [Protect your organization against web threats](web-threat-protection.md) using web threat protection.
   - Web threat protection is part of web protection in Microsoft Defender for Endpoint. It uses network protection to secure your devices against web threats.
2. Run through the [Custom Indicators of Compromise](indicator-ip-domain.md) flow to get blocks on the Custom Indicator type.
3. Explore [Web content filtering](web-content-filtering.md).

   > [!NOTE]
   > If you are removing a policy or changing device groups at the same time, this might cause a delay in policy deployment.
   > Pro tip: You can deploy a policy without selecting any category on a device group. This action will create an audit only policy, to help you understand user behavior before creating a block policy.
   >
   > Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.
 
4. [Integrate Microsoft Defender for Endpoint with Defender for Cloud Apps](/defender-cloud-apps/mde-integration) and your network protection-enabled macOS devices will have endpoint policy enforcement capabilities.

   > [!NOTE]
   > Discovery and other features are currently not supported on these platforms.

## Scenarios

The following scenarios are supported during public preview:

### Web threat protection

Web threat protection is part of Web protection in Microsoft Defender for Endpoint. It uses network protection to secure your devices against web threats. By integrating with Microsoft Edge and popular third-party browsers like Chrome and Firefox, web threat protection stops web threats without a web proxy. Web threat protection can protect devices while they're on premises or away. Web threat protection stops access to the following types of sites:

- phishing sites
- malware vectors
- exploit sites
- untrusted or low-reputation sites
- sites you've blocked in your custom indicator list

>:::image type="content" source="images/network-protection-reports-web-protection.png" alt-text="Web Protection reports web threat detections." lightbox="images/network-protection-reports-web-protection.png":::

For more information, see [Protect your organization against web threat](web-threat-protection.md)

#### Custom Indicators of Compromise  

Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).

Create indicators that define the detection, prevention, and exclusion of entities. You can define the action to be taken as well as the duration for when to apply the action and the scope of the device group to apply it to.

Currently supported sources are the cloud detection engine of Defender for Endpoint, the automated investigation and remediation engine, and the endpoint prevention engine (Microsoft Defender Antivirus).

>:::image type="content" source ="images/network-protection-add-url-domain-indicator.png" alt-text="Shows network protection add URL or domain indicator." lightbox="images/network-protection-add-url-domain-indicator.png":::

For more information, see: [Create indicators for IPs and URLs/domains](indicator-ip-domain.md).

### Web content filtering

Web content filtering is part of the [Web protection](web-protection-overview.md) capabilities in Microsoft Defender for Endpoint and Microsoft Defender for Business. Web content filtering enables your organization to track and regulate access to websites based on their content categories. Many of these websites (even if they're not malicious) might be problematic because of compliance regulations, bandwidth usage, or other concerns.

Configure policies across your device groups to block certain categories. Blocking a category prevents users within specified device groups from accessing URLs associated with the category. For any category that's not blocked, the URLs are automatically audited. Your users can access the URLs without disruption, and you'll gather access statistics to help create a more custom policy decision. Your users will see a block notification if an element on the page they're viewing is making calls to a blocked resource.

Web content filtering is available on the major web browsers, with blocks performed by Windows Defender SmartScreen (Microsoft Edge) and Network Protection (Chrome, Firefox, Brave, and Opera). For more information about browser support, see [Prerequisites](#prerequisites).

> :::image type="content" source="images/network-protection-wcf-add-policy.png" alt-text="Shows network protection web content filtering add policy." lightbox="images/network-protection-wcf-add-policy.png":::

For more information about reporting, see [Web content filtering](web-content-filtering.md).

### Microsoft Defender for Cloud Apps

The Microsoft Defender for Cloud Apps / Cloud App Catalog identifies apps you would want end users to be warned upon accessing with Microsoft 365 Defender for Endpoint, and mark them as _Monitored_. The domains listed under monitored apps would be later synced to Microsoft 365 Defender for Endpoint:

> :::image type="content" source="images/network-protection-macos-mcas-monitored-apps.png" alt-text="Shows network protection mcas monitored apps." lightbox="images/network-protection-macos-mcas-monitored-apps.png":::

Within 10-15 minutes, these domains will be listed in Microsoft 365 Defender under Indicators > URLs/Domains with Action=Warn. Within the enforcement SLA (see details at the end of this article).

> :::image type="content" source="images/network-protection-macos-mcas-cloud-app-security.png" alt-text="Shows network protection mcas cloud app security." lightbox="images/network-protection-macos-mcas-cloud-app-security.png":::

## See also

- [Protect your network](network-protection.md)
- [Turn on network protection](enable-network-protection.md)
- [Web protection](web-protection-overview.md)
- [Create indicators](manage-indicators.md)
- [Web content filtering](web-content-filtering.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)


[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
