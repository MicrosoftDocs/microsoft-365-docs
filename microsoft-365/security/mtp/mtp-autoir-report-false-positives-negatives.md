---
title: Handle false positives or false negatives in AIR in Microsoft 365 Defender 
description: Was something missed or wrongly detected by AIR in Microsoft 365 Defender? Learn how to submit false positives or false negatives to Microsoft for analysis.
keywords: automated, investigation, alert, trigger, action, remediation, false positive, false negative
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
ms.date: 09/16/2020
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: conceptual
ms.custom: autoir
ms.reviewer: evaldm, isco
---

# Handle false positives/negatives in automated investigation and response capabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Did [automated investigation and response capabilities](mtp-autoir.md) in Microsoft 365 Defender miss or wrongly detect something? There are steps you can take to fix it. You can:

- [Report a false positive/negative to Microsoft](#report-a-false-positivenegative-to-microsoft-for-analysis);

- [Adjust your alerts](#adjust-an-alert-to-prevent-false-positives-from-recurring) (if needed); and 

- [Undo remediation actions that were taken on devices](#undo-a-remediation-action-that-was-taken-on-a-device). 

Use this article as a guide. 

## Report a false positive/negative to Microsoft for analysis

|Item missed or wrongly detected |Service  |What to do  |
|---------|---------|---------|
|- Email message <br/>- Email attachment <br/>- URL in an email message<br/>- URL in an Office file      |[Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp)        |[Submit suspected spam, phish, URLs, and files to Microsoft for scanning](https://docs.microsoft.com/microsoft-365/security/office-365-security/admin-submission)         |
|File or app on a device    |[Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection)         |[Submit a file to Microsoft for malware analysis](https://www.microsoft.com/wdsi/filesubmission)         |

## Adjust an alert to prevent false positives from recurring

|Scenario |Service |What to do |
|--------|--------|--------|
|- An alert is triggered by legitimate use <br/>- An alert is inaccurate    |[Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security)<br/> or <br/>[Azure Advanced Threat Detection](https://docs.microsoft.com/azure/security/fundamentals/threat-detection)         |[Manage alerts in the Cloud App Security portal](https://docs.microsoft.com/cloud-app-security/managing-alerts)         |
|A file, IP address, URL, or domain is treated as malware on a device, even though it's safe|[Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection) |[Create a custom indicator with an "Allow" action](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators) |


## Undo a remediation action that was taken on a device

If a remediation action was taken on a device (such as a Windows 10 device) and the item is not a threat, your security operations team can undo the remediation action in the [Action center](mtp-action-center.md).

> [!IMPORTANT]
> Make sure you have the [necessary permissions](mtp-action-center.md#required-permissions-for-action-center-tasks) before attempting to perform the following task.

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. 

2. In the navigation pane, choose **Action center**. 

3. On the **History** tab, select an action that you want to undo. Selecting an action opens a flyout.<br/>
    > [!TIP]
    > Use filters to narrow down the list of results. 

4. In the flyout for the selected item, select **Open investigation page**.

5. In the investigation details view, select the **Actions** tab.

6. Select an item that has status of **Completed**, and look for a link, such as **Approved**, in the **Decisions** column. Selection an action opens a flyout with more details about the action.

7. To undo the action, select **Delete remediation**.

## See also

- [View the details and results of an automated investigation](mtp-autoir-results.md)
- [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md)
