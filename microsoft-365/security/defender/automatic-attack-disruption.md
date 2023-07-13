---
title: Automatic attack disruption in Microsoft 365 Defender
description: Automatically contain assets controlled by attackers by using automatic attack disruption in Microsoft 365 Defender.
keywords: attack, disruption, automatic, analyze, response, machines, devices, users, identities, mail, email, mailbox, investigation, graph, evidence
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 05/31/2023
---

# Automatic attack disruption in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Using the power of XDR, Microsoft 365 Defender correlates millions of individual signals to identify active ransomware campaigns or other sophisticated attacks in the environment with high confidence. While an attack is in progress, Microsoft 365 Defender disrupts the attack by automatically containing compromised assets that the attacker is using through automatic attack disruption.

Automatic attack disruption limits lateral movement early on and reduces the overall impact of an attack, from associated costs to loss of productivity. At the same time, it leaves the SOC team in complete control of investigating, remediating, and bringing assets back online.

This article provides an overview of automated attack disruption and includes links to the next steps and additional resources.

## How automatic attack disruption works

Automatic attack disruption is designed to contain attacks in progress, limit the impact on an organization's assets, and provide more time for the SOC to remediate the attack fully. Unlike known protection methods such as prevention and blocking based on a single indicator of compromise, the attack disruption in Microsoft 365 Defender leverages the full breadth of our XDR signal to act at the incident level, taking the entire attack into account.

While many XDR and SOAR solutions allow you to create your automatic response actions, the key difference to Microsoft 365 Defender's automatic attack disruption is that it is built-in and uses insights from our security researchers and advanced AI models to counteract the complexities of advanced attacks. It considers the entire context of signals from different sources to determine compromised assets.

Automatic attack disruption operates in three key stages:

- It uses Microsoft 365 Defender's XDR ability to correlate signals from many different sources into a single, high-confidence incident through insights from endpoints, identities, email and collaboration tools, as well as SaaS apps.
- It identifies assets controlled by the attacker and used to spread the attack.
- It automatically takes response actions across relevant Microsoft Defender products to contain the attack in real-time by isolating affected assets.

This game-changing capability limits a threat actor's progress early on and dramatically reduces the overall impact of an attack, from associated costs to loss of productivity.

## Establishing high confidence when taking automatic action

We understand that taking automatic action sometimes comes with hesitation from security teams, given the potential impact it can have on an organization. Therefore, the automatic attack disruption capabilities in Microsoft 365 Defender are designed to rely on high-fidelity signals. In addition to XDR capabilities that correlate incidents with millions of Defender product signals across email, identity, applications, documents, devices, networks, and files. Insights from the continuous investigation of thousands of incidents by Microsoft's security research team ensure that automatic attack disruption maintains a high signal-to-noise ratio (SNR).

Investigations are integral to monitoring our signals and the attack threat landscape to ensure high quality and accurate protection.

> [!TIP]
> This article describes how attack disruption works. To configure these capabilities, see [Configure attack disruption capabilities](configure-attack-disruption.md) in Microsoft 365 Defender.

## Automated response actions

In automatic attack disruption, we leverage Microsoft-based XDR response actions. Examples of these actions are:

- [Device contain](/microsoft-365/security/defender-endpoint/respond-machine-alerts#contain-devices-from-the-network) - based on Microsoft Defender for Endpoint's capability, this action is an automatic containment of a suspicious device to block any incoming/outgoing communication with the said device.
- [Disable user](/defender-for-identity/remediation-actions) - based on Microsoft Defender for Identity's capability, this action is an automatic suspension of a compromised account to prevent additional damage like lateral movement, malicious mailbox use, or malware execution.

For more information, see [remediation actions](m365d-remediation-actions.md) in Microsoft 365 Defender.

## Identify when an attack disruption happens in your environment

The Microsoft 365 Defender incident page will reflect the automatic attack disruption actions through the attack story and the status indicated by a yellow bar (Figure 1). The incident will show a dedicated disruption tag, highlight the status of the assets contained in the incident graph, and add an action to the Action Center.

:::image type="content" source="../../media/automatic-attack-disruption/Fig1-auto-attack-disruption.png" alt-text="Selecting an incident in the Microsoft 365 Defender portal" lightbox="../../media/automatic-attack-disruption/Fig1-auto-attack-disruption.png":::
*Figure 1. Incident view showing the yellow bar where automatic attack disruption took action*

The Microsoft 365 Defender user experience now includes additional visual cues to ensure visibility of these automatic actions. You will find them across the following experiences:

1. In the incident queue:

    - A tag titled *Attack Disruption* appears next to affected incidents

2. On the incident page:

    - A tag titled *Attack Disruption*
    - A yellow banner at the top of the page that highlights the automatic action taken
    - The current asset status is shown in the incident graph if an action is done on an asset, e.g., account disabled or device contained

3. Via API:

    An **(attack disruption)** string is added to the end of the titles of incidents with high confidence likely to be automatically disrupted. For example:

    *BEC financial fraud attack launched from a compromised account (attack disruption)*

For more information, see [view attack disruption details and results](autoad-results.md).


## Next steps

- [Configuring automatic attack disruption in Microsoft 365 Defender](configure-attack-disruption.md)
- [View details and results](autoad-results.md)


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
