---
title: Firewall in Microsoft Defender for Business
description: Learn about Windows Defender Firewall settings in Defender for Business. Firewall can help prevent unwanted network traffic from flowing to your company devices.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 08/11/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Firewall in Microsoft Defender for Business

Defender for Business includes firewall capabilities through [Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security). Firewall protection helps secure devices by establishing rules that determine what network traffic is permitted to flow to and from devices.

You can use firewall protection to specify whether to allow or to block connections on devices in various locations. For example, your firewall settings can allow inbound connections on devices that are connected to your company's internal network but prevent connections when the device is on a network with untrusted devices.

**This article describes**:

- [Default firewall settings in Defender for Business](#default-firewall-settings-in-defender-for-business)
- [Firewall settings you can configure in Defender for Business](#firewall-settings-you-can-configure-in-defender-for-business)


## Default firewall settings in Defender for Business

Defender for Business includes default firewall policies and settings to help protect your company's devices from day one. As soon as your company's devices are onboarded to Defender for Business, your default firewall policy works as follows:

- Outbound connections from devices are allowed by default, regardless of location.
- When devices are connected to your company's network, all inbound connections are blocked by default.
- When devices are connected to a public network or a private network, all inbound connections are blocked by default.

In Defender for Business, you can define exceptions to block or allow incoming connections. You define these exceptions by creating custom rules. See [Manage custom rules for firewall policies](mdb-custom-rules-firewall.md).

## Firewall settings you can configure in Defender for Business

Defender for Business includes firewall protection through Windows Defender Firewall. The following table lists settings that can be configured in Defender for Business.

| Setting | Description |
|--|--|
| **Domain network** | The domain network profile applies to your company's network. Firewall settings for your domain network apply to inbound connections that are initiated on other devices on the same network. By default, incoming connections is set to **Block all**.  |
| **Public network** | The public network profile applies to networks that you can use in a public location, such as a coffee shop or airport. Firewall settings for public networks apply to inbound connections that are initiated on other devices on the same network. Because a public network can include devices that you don't know or don't trust, incoming connections is set to **Block all** by default.  |
| **Private network** | The private network profile applies to networks in a private location, such as your home. Firewall settings for private networks apply to inbound connections that are initiated on other devices on the same network. In general, on a private network, it's assumed that all other devices on the same network are trusted devices. However, by default, incoming connections is set to **Block all**. |
| **Custom rules** | [Custom rules](mdb-custom-rules-firewall.md) let you block or allow specific connections. For example, suppose that you want to block all incoming connections on devices that are connected to a private network except for connections through a specific app on a device. In this case, you'd set **Private network** to block all incoming connections, and then add a custom rule to define the exception. <p>You can use custom rules to define exceptions for specific files or apps, an Internet protocol (IP) address, or a range of IP addresses. Depending on the type of custom rule you're creating, here are some examples of values you could use: <br/>- Application file path: `C:\Windows\System\Notepad.exe or %WINDIR%\Notepad.exe` <br/>- IP: A valid IPv4/IPv6 address, such as `192.168.11.0` or `192.168.1.0/24` <br/>- IP: A valid IPv4/IPv6 address range, formatted like `192.168.1.0-192.168.1.9` (with no spaces included) |

## Next steps

- [Manage firewall settings in Defender for Business](mdb-custom-rules-firewall.md)
- [Learn more about Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)