---
title: Address false positives or false negatives in Microsoft 365 Defender
description: Was something missed or wrongly detected by AIR in Microsoft 365 Defender? Learn how to submit false positives or false negatives to Microsoft for analysis.
keywords: automated, investigation, alert, remediation, false positive, false negative
search.appverid: met150
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
- tier2
ms.topic: how-to
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
ms.date: 07/14/2023
---

# Address false positives or false negatives in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

False positives or negatives can occasionally occur with any threat protection solution. If [automated investigation and response capabilities](m365d-autoir.md) in Microsoft 365 Defender missed or wrongly detected something, there are steps your security operations team can take:

- [Report a false positive/negative to Microsoft](#report-a-false-positivenegative-to-microsoft-for-analysis)
- [Adjust your alerts](#adjust-an-alert-to-prevent-false-positives-from-recurring) (if needed)
- [Undo remediation actions that were taken on devices](#undo-a-remediation-action-that-was-taken-on-a-device)

The following sections describe how to perform these tasks.

## Report a false positive/negative to Microsoft for analysis

|Item missed or wrongly detected |Service  |What to do  |
|---------|---------|---------|
|- Email message <br/>- Email attachment <br/>- URL in an email message<br/>- URL in an Office file      |[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)        |[Submit suspected spam, phish, URLs, and files to Microsoft for scanning](../office-365-security/submissions-admin.md)         |
|File or app on a device    |[Microsoft Defender for Endpoint](/windows/security/threat-protection)         |[Submit a file to Microsoft for malware analysis](https://www.microsoft.com/wdsi/filesubmission)         |

## Adjust an alert to prevent false positives from recurring

|Scenario |Service |What to do |
|--------|--------|--------|
|- An alert is triggered by legitimate use <br/>- An alert is inaccurate    |[Microsoft Defender for Cloud Apps](/cloud-app-security)<br/> or <br/>[Azure threat protection](/azure/security/fundamentals/threat-detection)         |[Manage alerts in the Defender for Cloud Apps portal](/cloud-app-security/managing-alerts)         |
|A file, IP address, URL, or domain is treated as malware on a device, even though it's safe|[Microsoft Defender for Endpoint](/windows/security/threat-protection) |[Create a custom indicator with an "Allow" action](/windows/security/threat-protection/microsoft-defender-atp/manage-indicators) |

## Undo a remediation action that was taken on a device

If a remediation action was taken on an entity (such as a device or an email message) and the affected entity is not actually a threat, your security operations team can undo the remediation action in the [Action center](m365d-action-center.md).

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in. 
2. In the navigation pane, choose **Action center**. 
3. On the **History** tab, select an action that you want to undo. Its flyout pane opens.
4. In the flyout pane, select **Undo**.

> [!TIP]
> See [Undo completed actions](m365d-autoir-actions.md#undo-completed-actions).

## See also

- [View the details and results of an automated investigation](m365d-autoir-results.md)
- [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
