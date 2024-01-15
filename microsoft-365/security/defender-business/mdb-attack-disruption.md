---
title: Automatic attack disruption in Microsoft Defender for Business           
description: Learn about automatic attack disruption in Microsoft Defender for Business            
author: siosulli
ms.author: siosulli
manager: dansimp 
ms.date: 10/12/2023
ms.topic: conceptual
ms.service: defender-business
ms.localizationpriority: medium 
ms.collection: 
- m365-security
- tier1
ms.reviewer: efratka 
search.appverid: MET150
f1.keywords: NOCSH 
audience: Admin
---

# Automatic attack disruption in Microsoft Defender for Business

A human-operated attack is an active attack by cybercriminals who infiltrate an organization, elevate their privileges, navigate the network, and deploy ransomware or steal information. These types of attacks can be catastrophic to business operations, tend to be difficult to address, and sometimes continue to threaten business operations after the initial encounter. For more information, see [Human-operated ransomware attacks](/security/ransomware/human-operated-ransomware#human-operated-ransomware-attacks).

To help protect against human-operated or other advanced attacks, Microsoft Defender XDR added [automatic attack disruption](../defender/automatic-attack-disruption.md) in November 2022 for enterprise customers. Now, these capabilities are coming to Defender for Business! This article describes how automatic attack disruption works, how to view details about an attack, and how to get these capabilities.

## How automatic attack disruption works

Automatic attack disruption is designed to:

- Contain advanced attacks that are in progress;
- Limit the impact and progression of attacks on your business assets (like devices); and
- Provide more time for your IT/security team to remediate an attack fully. 

Automatic attack disruption uses insights from Microsoft security researchers and advanced AI models to counteract the complexities of advanced attacks. It limits a threat actor's progress early on and dramatically reduces the overall impact of an attack, from associated costs to loss of productivity. See some examples at the [Microsoft Security Blog](https://aka.ms/ContainUserSecBlog).

With automatic attack disruption, as soon as a human-operated attack is detected on a device, steps are taken immediately to contain the affected device and user accounts on the device. An incident is created in the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). There, your IT/security team can view details about the risk and containment status of compromised assets during and after the process. An **Incident** page provides details about the attack and up-to-date status of affected assets. 

Automated response actions include:

- Containing a device by blocking incoming/outgoing communication
- Containing a user account by disconnecting current user connections at the device level

> [!IMPORTANT]
> - To view information about a detected advanced attack, you must have the Security Reader, Security Administrator, or Global Administrator role assigned.
> - To take remediation actions, release a contained device/user, or re-enable a user account, you must have either the Security Administrator or Global Administrator role assigned.
> - See [Security roles and permissions in Defender for Business](mdb-roles-permissions.md).

<a name='view-details-about-an-attack-in-the-microsoft-365-defender-portal'></a>

## View details about an attack in the Microsoft Defender portal

1. In the Microsoft Defender portal, go to **Incidents**.

2. Select an incident that is tagged with *Attack Disruption*.

3. Review the incident graph, which enables you to get the entire attack story and assess the attack disruption impact and status.

4. When you're ready to release a contained device or user account, or re-enable a user account, take one of the following steps:

   - To release a contained device, select the device, and then choose **Release from containment**.
   - To release a contained user, select the user account, and then, in the side pane, select **Undo**.

Disrupted incidents include a tag for `Attack Disruption` and the specific threat type identified (such as ransomware). If your IT/security team receives [incident email notifications](mdb-email-notifications.md), these tags also appear in the emails.

When an incident is disrupted, highlighted text appears below the incident title. Contained devices or user accounts are listed with a label that indicates their status. 

## Track attack disruption actions in the Action center

The [Action center](mdb-review-remediation-actions.md) brings together all remediation and response actions, whether those actions were taken automatically or manually. You can view all automatic attack disruption actions in the Action center. And, after your IT/security team has mitigated the risk and completed the investigation of an incident, they can release contained assets.

1. In the Microsoft Defender portal, go to **Actions & submissions** > **Action center**.

2. Select the **History** tab.

3. Select an action, such as **Contain user** or **Contain device**, and then choose **Undo**.

For more information, see [Review remediation actions in the Action center](mdb-review-remediation-actions.md).

## How to get automatic attack disruption

Automatic attack disruption is built into Defender for Business; you don't have to explicitly turn on these capabilities. It's important to [onboard all your organization's devices](mdb-onboard-devices.md) (computers, phones, and tablets) to Defender for Business so that they're protected as soon as possible. 

Additionally, sign up to receive [preview features](mdb-preview.md) so that you get the latest and greatest capabilities as soon as they're available. 

