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

With automatic attack disruption, as soon as a human-operated attack is detected on a device, steps are taken immediately to contain the affected device and user accounts on the device. An incident is created in the Microsoft 365 Defender portal, where your security team can view details about the risk and containment status of compromised assets during and after the process. In the portal, an Incident page provides details about the attack and up-to-date status of affected assets. 

Automated response actions include:

- Containing a device - incoming/outgoing communication is blocked on the device
- Containing a user account - WHAT IS THIS?
- Disabling a user account - an account is automatically suspended

## View details about an attack in the Microsoft 365 Defender portal


Review the incident graph
Microsoft 365 Defender automatic attack disruption is built-in in the Incident view. Reviewing the incident graph enables you to get the entire attack story and assess the attack disruption impact and status.

Here are some examples of what it looks like:

Disrupted incidents include a tag for 'Attack Disruption' and the specific threat type identified (i.e., ransomware). If you subscribe to incident email notifications, these tags also appear in the emails.
A highlighted notification below the incident title indicating that the incident was disrupted.
Suspended users and contained devices appear with a label indicating their status.
To release a user account or a device from containment, click on the contained asset and click release from containment for a device or enable user for a user account.

## Track the actions in the Action center

The Action center (https://security.microsoft.com/action-center) brings together remediation and response actions across your devices, email & collaboration content, and identities. Actions listed include remediation actions that were taken automatically or manually. You can view automatic attack disruption actions in the Action center.

After you mitigate the risk and complete the investigation of an incident, you can release the contained assets from the action details pane (e.g., enable a disabled user account or release a device from containment). For more information about the action center, see Action center.

## How to get automatic attack disruption

Automatic attack disruption is built into Defender for Business; you don't have to explicitly turn these capabilities on. One important step to take is to onboard all your organization's devices (computers, phones, and tablets) to Defender for Business so that they're protected. Additionally, sign up to receive preview features so that you get the latest and greatest capabilities as soon as they're available. 

See the following articles for more information:

- [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md)
- [Microsoft Defender for Business preview features](mdb-preview.md)


