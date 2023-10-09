---
title: Automatic attack disruption in Microsoft Defender for Business           
description: Get an overview of automatic attack disruption capabilities in Microsoft Defender for Business            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 10/09/2023
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

# Automatic attack disruption in Microsoft Defender for Business

A human-operated attack is an active attack by cybercriminals who infiltrate an organization, elevate their privileges, navigate the network, and deploy ransomware or steal information. These types of attacks can be catastrophic to business operations, tend to be difficult to address, and sometimes continue to threaten business operations after the initial encounter. For more information, see [Human-operated ransomware attacks](/security/ransomware/human-operated-ransomware#human-operated-ransomware-attacks).

To help protect against human-operated or other advanced attacks, Microsoft 365 Defender added [automatic attack disruption](../defender/automatic-attack-disruption.md) in November, 2022. Now, these capabilities are coming to Defender for Business! This article describes how automatic attack disruption works, how to view details about an attack, and how to get these capabilities.

## How automatic attack disruption works

Automatic attack disruption is designed to:

- Contain advanced attacks that are in progress;
- Limit the impact and progression of such attacks on your business assets (such as devices); and
- Provide more time for your IT team or security team to remediate an attack fully. 

Automatic attack disruption uses insights from Microsoft security researchers and advanced AI models to counteract the complexities of advanced attacks. It limits a threat actor's progress early on and dramatically reduces the overall impact of an attack, from associated costs to loss of productivity.

With automatic attack disruption, as soon as a human-operated attack is detected on a device, steps are taken immediately to contain the affected device and user accounts on the device. An incident is created in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). There, your IT team or security team can view details about the risk and containment status of compromised assets during and after the process. An **Incident** page provides details about the attack and up-to-date status of affected assets. 

Automated response actions include:

- Containing a device by blocking incoming/outgoing communication
- Containing a user account by disconnecting user connections at the device level (your IT team doesn't have to access Azure Active Directory, or Azure AD)
- Disabling a user account by automatically suspending the account in Azure AD

## View details about an attack in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal, go to **Incidents**.

2. Select an incident that is tagged with *Attack Disruption*.

3. Review the incident graph, which enables you to get the entire attack story and assess the attack disruption impact and status.

4. When you're ready to release a contained device or user account, or re-enable a user account, take one of the following steps:

   1. To release a contained device, select the device, and then choose **Release from containment**.

   2. To release a contained user, select the user account, and then, in the side pane, select **Undo**.

   3. To re-enable a user account, select the user account, and then select **Enable user**.

Disrupted incidents include a tag for `Attack Disruption` and the specific threat type identified (such as ransomware). If your IT team or security team receives [incident email notifications](mdb-email-notifications.md), these tags also appear in the emails.

When an incident is disrupted, highlighted text appears below the incident title. Suspended users and contained devices appear with a label indicating their status. 

## Track the actions in the Action center

The Action center (https://security.microsoft.com/action-center) brings together remediation and response actions across your devices, email & collaboration content, and identities. Actions listed include remediation actions that were taken automatically or manually. You can view automatic attack disruption actions in the Action center.

After you mitigate the risk and complete the investigation of an incident, you can release the contained assets from the action details pane (e.g., enable a disabled user account or release a device from containment). For more information about the action center, see Action center.

## How to get automatic attack disruption

Automatic attack disruption is built into Defender for Business; you don't have to explicitly turn these capabilities on. One important step to take is to onboard all your organization's devices (computers, phones, and tablets) to Defender for Business so that they're protected. Additionally, sign up to receive preview features so that you get the latest and greatest capabilities as soon as they're available. 

See the following articles for more information:

- [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md)
- [Microsoft Defender for Business preview features](mdb-preview.md)


