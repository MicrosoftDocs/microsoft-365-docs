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

## View and edit your firewall policies in Microsoft Defender for Business

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Endpoints** > **Device configuration**, and review the list of policies.

3. In the **Firewall** section, select an existing policy, or add a new policy.

4. On the **Configuration settings** step, review the settings. Make any needed changes to **Domain network**, **Public network**, and **Private network**.

5. Set **Allow local policy merge** to **Yes** to honor firewall settings on users' devices. Alternately, you can set it to **No**, which will ignore firewall settings on users' devices and apply only the firewall settings defined in Microsoft Defender for Business.

6. To create a custom rule, follow these steps: 

   1. Under **Custom rules**, choose **+ Add rule**. (You can have up to 150 custom rules.)
   2. On the **Create new rule** flyout, specify a name and description for the rule.
   3. Select a profile. (Your options include **Domain network**, **Public network**, or **Private network**.)
   4. In the **Remote address type** list, select either **IP** or **Application file path**.
   5. In the **Value** box, specify an appropriate value. Depending on what you selected in step 6d, you might specify an IP address, an IP address range, or an application file path. (See [Firewall settings](mdb-configuration-settings.md#firewall).)
   6. On the **Create new rule** flyout, select **Create rule**. 

7. On the **Configuration settings** screen, choose **Next**.

8. On the **Review your policy** screen, review the changes that were made to firewall policy settings. Make any needed changes, and then choose **Create policy**.

## Edit a custom rule

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Endpoints** > **Device configuration**, and review the list of policies.

3. In the **Firewall** section, select an existing policy, or add a new policy.

4. Under **Custom rules**, review the list of rules.

5. Select a rule, and then choose **Edit**. Its flyout opens.

6. To edit your custom rule, follow these steps:

   1. On the **Edit rule** flyout, review and edit the rule's name and description.
   2. Review and if necessary, edit the rule's profile. (Your options include **Domain network**, **Public network**, or **Private network**.)
   4. In the **Remote address type** list, select either **IP** or **Application file path**.
   5. In the **Value** box, specify an appropriate value. Depending on what you selected in step 6d, you might specify an IP address, an IP address range, or an application file path. (See [Firewall settings](mdb-configuration-settings.md#firewall).)
   6. On the **Edit rule** flyout, select **Update rule**. 
