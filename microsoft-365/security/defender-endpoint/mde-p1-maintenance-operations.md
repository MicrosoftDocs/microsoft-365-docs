---
title: Manage Microsoft Defender for Endpoint Plan 1
description: Maintain and update Defender for Endpoint Plan 1. Manage settings, get updates, and address false positives/negatives.
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 01/03/2022
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.reviewer: inbadian
f1.keywords: NOCSH
ms.collection: 
- m365-security
- tier1
---

# Manage Microsoft Defender for Endpoint Plan 1

**Applies to**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)

As you use Defender for Endpoint Plan 1 in your organization, your security team can take certain steps to maintain your security solution. As your security team puts together your maintenance and operations plan, make sure to include at least the following activities:

- [Manage security intelligence and product updates](#manage-security-intelligence-and-product-updates)
- [Fine-tune and adjust Defender for Endpoint](#fine-tune-and-adjust-defender-for-endpoint)
- [Address false positives/negatives](#address-false-positivesnegatives)

## Manage security intelligence and product updates

Keeping Microsoft Defender Antivirus up to date is critical to protecting against new malware and attack techniques. Microsoft releases regular updates for security intelligence, antivirus, and antimalware protection. Updates are organized into two categories: 

- Security intelligence updates
- Product updates 

To manage your security intelligence and product updates, see [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).

## Fine-tune and adjust Defender for Endpoint

Defender for Endpoint offers you much flexibility and configuration options. You can adjust and fine-tune your settings to suit your organization's needs. For example, you can use Microsoft Endpoint Manager, Group Policy, and other methods to manage your endpoint security settings. 

To learn more, see [Manage Defender for Endpoint](manage-mde-post-migration.md).

## Address false positives/negatives

A false positive is an artifact, like a file or a process, that was detected as malicious, even though it isn't actually a threat. A false negative is an entity that was not detected as a threat, even though it actually is. False positives/negatives can occur with any endpoint protection solution, including Defender for Endpoint. However, there are steps you can take to address these kinds of issues and fine-tune your solution, as depicted in the following image:

:::image type="content" source="../../media/defender-endpoint/false-positives-overview.png" alt-text="False positives and negatives process overview" lightbox="../../media/defender-endpoint/false-positives-overview.png":::

If you're seeing false positives/negatives in Defender for Endpoint, see [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md).

## Next steps

- [See what's new in Microsoft Defender for Endpoint](whats-new-in-microsoft-defender-endpoint.md)