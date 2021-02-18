---
title: Handle false positives or false negatives in AIR in Microsoft 365 Defender
description: Was something missed or wrongly detected by AIR in Microsoft 365 Defender? Learn how to submit false positives or false negatives to Microsoft for analysis.
keywords: automated, investigation, alert, remediation, false positive, false negative
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
ms.date: 01/29/2021
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365initiative-m365-defender
ms.topic: how-to
ms.custom: autoir
ms.reviewer: evaldm, isco
ms.technology: m365d
---

# Handle false positives/negatives in automated investigation and response capabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

False positives/negatives can occasionally occur with any threat protection solution. If [automated investigation and response capabilities](mtp-autoir.md) in Microsoft 365 Defender missed or wrongly detected something, there are steps your security operations team can take:

- [Report a false positive/negative to Microsoft](#report-a-false-positivenegative-to-microsoft-for-analysis);
- [Adjust your alerts](#adjust-an-alert-to-prevent-false-positives-from-recurring) (if needed); and 
- [Undo remediation actions that were taken on devices](#undo-a-remediation-action-that-was-taken-on-a-device). 

The following sections describe how to perform these tasks.

## Report a false positive/negative to Microsoft for analysis

|Item missed or wrongly detected |Service  |What to do  |
|---------|---------|---------|
|- Email message <br/>- Email attachment <br/>- URL in an email message<br/>- URL in an Office file      |[Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/defender-365-security/office-365-atp)        |[Submit suspected spam, phish, URLs, and files to Microsoft for scanning](https://docs.microsoft.com/microsoft-365/security/defender-365-security/admin-submission)         |
|File or app on a device    |[Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection)         |[Submit a file to Microsoft for malware analysis](https://www.microsoft.com/wdsi/filesubmission)         |

## Adjust an alert to prevent false positives from recurring

|Scenario |Service |What to do |
|--------|--------|--------|
|- An alert is triggered by legitimate use <br/>- An alert is inaccurate    |[Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security)<br/> or <br/>[Azure Advanced Threat Detection](https://docs.microsoft.com/azure/security/fundamentals/threat-detection)         |[Manage alerts in the Cloud App Security portal](https://docs.microsoft.com/cloud-app-security/managing-alerts)         |
|A file, IP address, URL, or domain is treated as malware on a device, even though it's safe|[Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection) |[Create a custom indicator with an "Allow" action](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators) |

## Undo a remediation action that was taken on a device

If a remediation action was taken on an entity (such as a device or an email message) and the affected entity is not actually a threat, your security operations team can undo the remediation action in the [Action center](mtp-action-center.md).

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. 
2. In the navigation pane, choose **Action center**. 
3. On the **History** tab, select an action that you want to undo. Its flyout pane opens.
4. In the flyout pane, select **Undo**.

> [!TIP]
> See [Undo completed actions](mtp-autoir-actions.md#undo-completed-actions).

## See also

- [View the details and results of an automated investigation](mtp-autoir-results.md)
- [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md)
- [Address false positives/negatives in Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/defender-endpoint-false-positives-negatives)
