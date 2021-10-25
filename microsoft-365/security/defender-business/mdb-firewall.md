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

Microsoft Defender for Business includes firewall capabilities with Windows Defender Firewall. Firewall protection helps secure devices with rules that determine which network traffic is permitted to enter devices and which network traffic is allowed to be sent from devices. You can use firewall protection to specify whether to allow or block connections on devices in various locations. For example, your firewall settings can allow inbound connections on devices that are connected to your company's internal network, but prevent those connections when the device is on a network with untrusted devices.

## Default firewall policies and settings in Microsoft Defender for Business

Microsoft Defender for Business includes default firewall policies and settings to help protect your company's devices from day one. As soon as your company's devices are onboarded to Microsoft Defender for Business, your default firewall policy works as follows:

- Outbound connections from devices are allowed by default, regardless of location.
- When devices are connected to your company's network, all inbound connections are allowed by default.
- When devices are connected to a public network or private network with untrusted devices, all inbound connections are blocked by default.

In Microsoft Defender for Business, you can define exceptions by creating custom rules. These custom rules allow you to block or allow specific connections on devices, regardless of their location or network.

## Manage firewall settings in Microsoft Defender for Business

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Endpoints** > **Device configuration**, and review the list of policies.

3. In the **Firewall** section, select an existing policy, or add a new policy.

4. On the **Configuration settings** step, review the settings. Make any needed changes to **Domain network**, **Public network**, and **Private network**.

5. Set **Allow local policy merge** to **Yes** to honor firewall settings on users' devices. Alternately, you can set it to **No**, which will ignore firewall settings on users' devices and apply only the firewall settings defined in Microsoft Defender for Business.

6. To define an exception to your firewall settings, follow these steps: 

   1. Under **Custom rules**, choose **+ Add rule**. 
   2. On the **Create new rule** flyout, specify a name and description for the rule.
   3. Select a profile (Domain network, Public network, or Private network).
   4. In the **Remote address type** list, select either **IP address** or **Application file path**.