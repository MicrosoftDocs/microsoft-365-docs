---
title: Enable your attack surface reduction rules in Microsoft Defender for Business           
description: Get an overview of attack surface reduction capabilities, including ASR rules, in Microsoft Defender for Business            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 05/04/2023
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium 
ms.collection: 
- m365-security
- tier1
ms.reviewer: efratka 
search.appverid: MET150
f1.keywords: NOCSH 
audience: Admin
---

# Enable your attack surface reduction rules in Microsoft Defender for Business

Your attack surfaces as all the places and ways that your organization's network and devices are vulnerable to cyberthreats and attacks. Unsecured devices, unrestricted access to any URL on a company device, and allowing any type of app or script to run on company devices are all examples of attack surfaces. They leave your company vulnerable to cyberattacks. 

To help protect your network and devices, Microsoft Defender for Business includes several attack surface reduction (ASR) capabilities, including ASR rules. This article describes how to set up your ASR rules and describes attack surface reduction capabilities.

> [!NOTE]
> Intune is not included in the standalone version of Defender for Business, but it can be added on.

## Standard protection ASR rules

There are lots of ASR rules available. You don't have to set them all up at once. And, you can set some rules up in audit mode just to see how they'll work for your organization, and change them to work in block mode later. That said, we recommend enabling the following standard protection rules as soon as possible:

- [Block credential stealing from the Windows local security authority subsystem](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-credential-stealing-from-the-windows-local-security-authority-subsystem)
- [Block abuse of exploited vulnerable signed drivers](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-abuse-of-exploited-vulnerable-signed-drivers)
- [Block persistence through WMI event subscription](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-persistence-through-wmi-event-subscription)

These rules help protect your network and devices but shouldn't cause disruption for users. Use Intune to set up your ASR rules.

## Set up ASR rules using Intune

1. As a global administrator, in the Microsoft Intune admin center ([https://intune.microsoft.com/](https://intune.microsoft.com/)), go to **Endpoint security** > **Attack surface reduction**.

2. Choose **Create policy** to create a new policy.

   - For **Platform**, choose **Windows 10, Windows 11, and Windows Server**.
   - For Profile, select **Attack Surface Reduction Rules**, and then choose **Create**.

3. Set up your policy as follows:

   1. Specify a name and description, and then choose **Next**.
   
   2. For at least the following three rules, set each one to **Block**:

      - **Block credential stealing from the Windows local security authority subsystem**
      - **Block persistence through WMI event subscription**
      - **Block abuse of exploited vulnerable signed drivers**

      Then choose **Next**.

   3. On the **Scope tags** step, choose **Next**.

   4. On the **Assignments** step, choose the users or devices to receive the rules, and then choose **Next**. (We recommend selecting **Add all devices**.)

   5. On the **Review + create** step, review the information, and then choose **Create**.

> [!TIP]
> If you prefer, you can set up your ASR rules in audit mode at first to see detections before files or processes are actually blocked. For more detailed information about ASR rules, see [ASR rules deployment overview](../defender-endpoint/attack-surface-reduction-rules-deployment.md).

## View your attack surface reduction report

Defender for Business includes an attack surface reduction report that will show you how ASR rules are working for you.

1. As a global administrator, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Reports**.

2. Under **Endpoints**, choose **Attack surface reduction rules**. The report opens and includes three tabs:

   - **Detections**, where you can view detections that occurred as a result of attack surface reduction rules
   - **Configuration**, where you can view data for standard protection rules or additional ASR rules
   - **Add exclusions**, where you can add items to be excluded from attack surface reduction rules (use these sparingly; every exclusion reduces your level of security protection)

To learn more about ASR rules, see the following articles:

- [Attack surface reduction rules overview](../defender-endpoint/attack-surface-reduction.md)
- [ASR rules report](../defender-endpoint/attack-surface-reduction-rules-report.md)
- [ASR rules reference](../defender-endpoint/attack-surface-reduction-rules-reference.md)
- [ASR rules deployment overview](../defender-endpoint/attack-surface-reduction-rules-deployment.md)

## Attack surface reduction capabilities in Defender for Business

ASR rules are part of your attack surface reduction capabilities that are available in Defender for Business. The following table summarizes attack surface reduction capabilities in Defender for Business. Notice how other capabilities, such as next-generation protection and web content filtering, work together with your attack surface reduction capabilities.

| Capability | How to set it up |
|:---|:---|
| **Attack surface reduction rules** <br/> Also referred to as ASR rules, attack surface reduction rules prevent specific actions that are commonly associated with malicious activity to run on Windows devices. | [Enable your standard protection ASR rules](#standard-protection-asr-rules) (section in this article). |
| **Controlled folder access** <br/>Controlled folder access allows only trusted apps to access protected folders on Windows devices. Think of this capability as ransomware mitigation. | [Set up controlled folder access policy in Microsoft Defender for Business](mdb-controlled-folder-access.md). |
| **Network protection** <br/>Network protection prevents people from accessing dangerous domains through applications on their Windows and Mac devices. Network protection is also a key component of [Web content filtering in Microsoft Defender for Business](mdb-web-content-filtering.md). | Network protection is already enabled by default when devices are onboarded to Defender for Business and [next-generation protection policies in Defender for Business](mdb-next-generation-protection.md) are applied. Your default policies are configured to use recommended security settings. |
| **Web protection** <br/>Web protection integrates with web browsers and works with network protection to protect against web threats and unwanted content. Web protection includes web content filtering and web threat reports. | [Set up Web content filtering in Microsoft Defender for Business](mdb-web-content-filtering.md).  |
| **Firewall protection** <br/>Firewall protection determines what network traffic is permitted to flow to or from your organization's devices. | Firewall protection is already enabled by default when devices are onboarded to Defender for Business and [firewall policies in Defender for Business](mdb-firewall.md) are applied. |

## Next steps

- [Review settings for advanced features and the Microsoft 365 Defender portal](mdb-portal-advanced-feature-settings.md).
- [Use your vulnerability management dashboard](mdb-view-tvm-dashboard.md)
- [View and manage incidents](mdb-view-manage-incidents.md)
- [View reports](mdb-reports.md)

