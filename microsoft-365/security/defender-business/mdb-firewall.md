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

## Next steps

- [Manage firewall settings in Microsoft Defender for Business](mdb-manage-firewall.md)

- [Learn more about firewall settings in Microsoft Defender for Business](mdb-configuration-settings.md#firewall)

- [Learn more about Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security)