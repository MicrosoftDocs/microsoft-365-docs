---
title: Firewall in Microsoft Defender for Business
description: Learn about Windows Defender Firewall settings in Defender for Business. Firewall can help prevent unwanted network traffic from flowing to your company devices.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 04/20/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Firewall in Microsoft Defender for Business

Microsoft Defender for Business includes firewall capabilities with [Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security). Firewall protection helps secure devices with rules that determine which network traffic is permitted to enter or flow from devices. 

You can use firewall protection to specify whether to allow or block connections on devices in various locations. For example, your firewall settings can allow inbound connections on devices that are connected to your company's internal network, but prevent those connections when the device is on a network with untrusted devices.

**This article describes**:

- [Default firewall settings in Defender for Business](#default-firewall-settings-in-defender-for-business)
- [Firewall settings you can configure in Defender for Business](#firewall-settings-you-can-configure-in-defender-for-business)

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about security</a>. We'd love to hear from you!
>

## Default firewall settings in Defender for Business

Microsoft Defender for Business includes default firewall policies and settings to help protect your company's devices from day one. As soon as your company's devices are onboarded to Microsoft Defender for Business, your default firewall policy works as follows:

- Outbound connections from devices are allowed by default, regardless of location.
- When devices are connected to your company's network, all inbound connections are blocked by default.
- When devices are connected to a public network or a private network, all inbound connections are blocked by default.

In Microsoft Defender for Business, you can define exceptions to block or allow incoming connections. You define these exceptions by creating custom rules. See [Manage custom rules for firewall policies](mdb-custom-rules-firewall.md).

## Firewall settings you can configure in Defender for Business

Microsoft Defender for Business includes firewall protection through Windows Defender Firewall. The following table lists settings that can be configured for firewall protection in Microsoft Defender for Business.

| Setting | Description |
|--|--|
| **Domain network** | The domain network profile applies to your company's network. Firewall settings for your domain network apply to inbound connections that are initiated on other devices that are on the same network. By default, incoming connections are set to **Block all**.  |
| **Public network** | The public network profile applies to a network that you can use in a public location, such as a coffee shop or an airport. Firewall settings for public networks apply to inbound connections that are initiated on other devices that are on the same network. Because a public network can include devices that you don't know or don't trust, incoming connections are set to **Block all** by default.  |
| **Private network** | The private network profile applies to a network in a private location, such as your home. Firewall settings for private networks apply to inbound connections that are initiated on other devices that are on the same network. In general, on a private network, it's assumed that all other devices on the same network are trusted devices. However, by default, incoming connections are set to **Block all**. |
| **Custom rules** | [Custom rules](mdb-custom-rules-firewall.md) allow you to block or allow specific connections. For example, suppose that you want to block all incoming connections on devices that are connected to a private network, except for connections through a specific app on a device. In this case, you would set **Private network** to block all incoming connections, and then add a custom rule to define the exception. <br/><br/>You can use custom rules to define exceptions for specific files or apps, an Internet protocol (IP) address, or a range of IP addresses. <br/><br/>Depending on the type of custom rule you're creating, here are some example values you can use: <br/><br/>Application file path: `C:\Windows\System\Notepad.exe or %WINDIR%\Notepad.exe` <br/><br/>IP: A valid IPv4/IPv6 address, such as `192.168.11.0` or `192.168.1.0/24` <br/><br/>IP: A valid IPv4/IPv6 address range, formatted like `192.168.1.0-192.168.1.9` (with no spaces included) |

## Next steps

- [Manage firewall settings in Microsoft Defender for Business](mdb-custom-rules-firewall.md)
- [Learn more about Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security)
- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)