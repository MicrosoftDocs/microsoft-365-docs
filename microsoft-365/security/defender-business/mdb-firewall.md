---
title: Firewall in Microsoft Defender for Business
description: Learn about Windows Defender Firewall in Microsoft Defender for Business, including configuration settings
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/25/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Firewall in Microsoft Defender for Business

Microsoft Defender for Business includes firewall capabilities with Windows Defender Firewall. Firewall protection helps secure devices with rules that determine which network traffic is permitted to enter or flow from devices. You can use firewall protection to specify whether to allow or block connections on devices in various locations. For example, your firewall settings can allow inbound connections on devices that are connected to your company's internal network, but prevent those connections when the device is on a network with untrusted devices.

## Default firewall policies and settings in Microsoft Defender for Business

Microsoft Defender for Business includes default firewall policies and settings to help protect your company's devices from day one. As soon as your company's devices are onboarded to Microsoft Defender for Business, your default firewall policy works as follows:

- Outbound connections from devices are allowed by default, regardless of location.
- When devices are connected to your company's network, all inbound connections are allowed by default.
- When devices are connected to a public network or private network with untrusted devices, all inbound connections are blocked by default.

In Microsoft Defender for Business, you can define exceptions by creating custom rules. These custom rules allow you to block or allow specific connections on devices, regardless of their location or network.

## Configuration settings for firewall protection in Microsoft Defender for Business

Microsoft Defender for Business includes firewall protection through Windows Defender Firewall. The following table lists settings that can be configured for firewall protection in Microsoft Defender for Business. <br/><br/>

| Setting | Description |
|--|--|
| **Domain network** | This profile applies to inbound connections that are initiated on devices that are within your organization's network. By default, incoming connections are set to **Allow all**.  |
| **Public network** | This profile applies to inbound connections that are initiated by devices on a network that you don't trust. By default, incoming connections are set to **Block all**.  |
| **Private network** | This profile applies to inbound connections that are initiated by devices on a network that you trust. Because the network could include devices that you don't necessarily trust yet, by default, incoming connections are set to **Block all**. |
| **Allow local policy merge** | When set to **Yes**, this setting applies firewall settings on users' devices when those settings don't conflict with your firewall policy. <br/><br/>When set to **No**, this setting ignores any firewall settings on users' devices, and applies only your firewall policy settings in Microsoft Defender for Business.  |
| **Custom rules** | Custom rules allow you to block or allow specific connections. For example, suppose that you want to block all incoming connections on devices that are connected to a private network, except for connections through a specific app on a device. In this case, you would set **Private network** to block all incoming connections, and then add a custom rule to define the exception. <br/><br/>You can use custom rules to define exceptions for specific files or apps, an Internet protocol (IP) address, or a range of IP addresses. |
| Values for custom rules | Depending on the type of custom rule you are creating, here are some example values you can use: <br/><br/>Application file path: `C:\Windows\System\Notepad.exe or %WINDIR%\Notepad.exe` <br/><br/>IP: IPv4/IPv6 address such as `192.168.1.0` or `192.168.1.0/24` <br/><br/>IP: A valid IPv4/IPv6 address, such as `192.168.1.0` or `192.168.1.0/24` ​<br/><br/>IP: A valid IPv4/IPv6 address range, formatted like `192.168.1.0-192.168.1.9` (with no spaces included) |

## Next steps

- [Manage firewall settings in Microsoft Defender for Business](mdb-manage-firewall.md)

- [Learn more about firewall settings in Microsoft Defender for Business](mdb-configuration-settings.md#firewall)

- [Learn more about Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security)