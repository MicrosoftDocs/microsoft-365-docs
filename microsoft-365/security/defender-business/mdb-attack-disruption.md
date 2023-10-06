---
title: Automatic attack disruption in Microsoft Defender for Business           
description: Get an overview of automatic attack disruption capabilities in Microsoft Defender for Business            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 10/06/2023
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

A human-operated attack is an active attack by cybercriminals who infiltrate an organization, elevate their privileges, navigate the network, and deploy ransomware or steal information. To learn more, see [Human-operated ransomware attacks](/security/ransomware/human-operated-ransomware#human-operated-ransomware-attacks).

To help protect against human-operated attacks, [automatic attack disruption](../defender/automatic-attack-disruption.md) capabilities were recently added to Microsoft 365 Defender. Now, these capabilities are coming to Defender for Business! 

With automatic attack disruption, as soon as a human-operated attack is detected on a device, steps are taken immediately to contain the affected device and user accounts on the device. An an incident is created in the Microsoft 365 Defender portal. Your security team can view details about the risk and containment status of compromised assets during and after the process. An Incident page provides details about the attack and up-to-date status of affected assets.



## View details about an attack in the Action center

Your security team can view all the details about a detected attack in the Action center (https://security.microsoft.com/action-center).


## How to get automatic attack disruption

<!---

Using the power of XDR, Microsoft 365 Defender correlates millions of individual signals to identify active ransomware campaigns or other sophisticated attacks in the environment with high confidence. While an attack is in progress, Microsoft 365 Defender disrupts the attack by automatically containing compromised assets that the attacker is using through automatic attack disruption.

Automatic attack disruption limits lateral movement early on and reduces the overall impact of an attack, from associated costs to loss of productivity. At the same time, it leaves the SOC team in complete control of investigating, remediating, and bringing assets back online.

if the beginning of a human-operated attack is detected on a single device, attack disruption will simultaneously stop the campaign on that device and inoculate all other devices in the organization. The adversary has nowhere to go. 


Automated response actions
In automatic attack disruption, we leverage Microsoft-based XDR response actions. Examples of these actions are:

Device contain - based on Microsoft Defender for Endpoint's capability, this action is an automatic containment of a suspicious device to block any incoming/outgoing communication with the said device.
Disable user - based on Microsoft Defender for Identity's capability, this action is an automatic suspension of a compromised account to prevent additional damage like lateral movement, malicious mailbox use, or malware execution.
For more information, see remediation actions in Microsoft 365 Defender.

--->

