---
title: Attack surface reduction in Microsoft Defender for Business           
description: Get an overview of attack surface reduction capabilities in Microsoft Defender for Business            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/26/2023 
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

# Attack surface reduction capabilities in Microsoft Defender for Business

Think of your attack surfaces as all the places and ways that your organization's network and devices are vulnerable to cyberthreats and attacks. Unsecure devices, unrestricted access to any URL on a company device, and allowing any type of app or script to run on company devices are all examples of attack surfaces. They leave your company vulnerable to cyberattacks. To help protect your network and devices, Microsoft Defender for Business includes attack surface reduction capabilities. This article provides an overview of those capabilities, and includes links to more detailed information.

## Attack surface reduction in Defender for Business

Attack surface reduction capabilities in Defender for Business include:

- **Attack surface reduction rules** (also referred to as ASR rules) prevent specific actions that are commonly associated with malicious activity to run on Windows devices. 
- **Controlled folder access** allows only trusted apps to access protected folders on Windows devices. Think of this capability as ransomware mitigation.
- **Network protection** prevents people from accessing dangerous domains through applications on their Windows and Mac devices. Network protection is also a key component of [web content filtering](mdb-configure-security-settings.md#set-up-web-content-filtering).
- **Web protection** integrates with web browsers and works with network protection to protect against web threats and unwanted content. Web protection includes web content filtering and web threat reports.
- **Firewall protection** determines what network traffic is permitted to flow to or from your organization's devices.

The sections that follow describe how to set up your attack surface reduction capabilities, beginning with your ASR rules.

## Enable your standard protection ASR rules

We recommend enabling the following standard protection rules as soon as possible:

- [Block credential stealing from the Windows local security authority subsystem](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-credential-stealing-from-the-windows-local-security-authority-subsystem)
- [Block abuse of exploited vulnerable signed drivers](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-abuse-of-exploited-vulnerable-signed-drivers)
- [Block persistence through WMI event subscription](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-persistence-through-wmi-event-subscription)

These rules help protect your network and devices but shouldn't cause disruption for users. **To enable these rules quickly and easily, try the [Simplified standard protection option](../defender-endpoint/attack-surface-reduction-rules-report.md#simplified-standard-protection-option)**. If you prefer, you can set up your ASR rules by using Microsoft Intune instead.

### To set up ASR rules using Intune

1. As a global administrator, in the Microsoft Intune ([https://intune.microsoft.com/](https://intune.microsoft.com/)), go to **Endpoint security** > **Attack surface reduction**.

2. Select an existing policy, or choose **Create policy** to create a new policy.

   - For **Platform**, choose **Windows 10 and later**.
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

### View your attack surface reduction report

1. As a global administrator, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Reports**.

2. Under **Endpoints**, choose **Attack surface reduction rules**. The report opens and includes three tabs:

   - **Detections**, where you can view detections that occurred as a result of attack surface reduction rules
   - **Configuration**, where you can apply attack surface reduction rules to devices
   - **Add exclusions**, where you can add items to be excluded from attack surface reduction rules (use these sparingly; every exclusion reduces your level of security protection)



### Learn more about attack surface reduction rules

More detailed information about attack surface reduction rules is available here:

- [Attack surface reduction rules overview](../defender-endpoint/attack-surface-reduction.md)
- [ASR rules report](../defender-endpoint/attack-surface-reduction-rules-report.md)
- [ASR rules reference](../defender-endpoint/attack-surface-reduction-rules-reference.md)
- [ASR rules deployment overview](../defender-endpoint/attack-surface-reduction-rules-deployment.md)

## Set up controlled folder access

INSTRUCTIONS

