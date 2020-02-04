---
title: How to report false positives or false negatives in Office 365 automated investigation and response 
description: Was something missed or wrongly detected by Office 365 Advanced Threat Protection? Learn how to submit false positives or false negatives to Microsoft for analysis.
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
ms.date: 02/03/2020
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
ms.custom: autoir
---

# How to report false positives/negatives in automated investigation and response capabilities

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

Did [Automated Investigation and Response (AIR) in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office) miss or wrongly detect something? There are steps you can take to fix it. You can:
- [Report a false positive/negative to Microsoft](#report-a-false-positivenegative-to-microsoft-for-analysis);
- [Adjust your alerts](#adjust-an-alert-to-prevent-false-positives-from-recurring) (if needed); and 
- [Undo remediation actions that were taken on devices](#undo-a-remediation-action-that-was-taken-on-a-device). 

Use this article as a guide. 

## Report a false positive/negative to Microsoft for analysis

If Office 365 AIR missed an email message, an email attachment, a URL in an email message, or a URL in an Office file, you can [submit suspected spam, phish, URLs, and files to Microsoft for Office 365 scanning](https://docs.microsoft.com/microsoft-365/security/office-365-security/admin-submission).

You can also [Submit a file to Microsoft for malware analysis](https://www.microsoft.com/wdsi/filesubmission).

## Adjust an alert to prevent false positives from recurring

If an alert is triggered by legitimate use, or the alert is inaccurate, you can [Manage alerts in the Cloud App Security portal](https://docs.microsoft.com/cloud-app-security/managing-alerts).

If your organization is using [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection) (in addition to Office 365), and a file, IP address, URL, or domain is treated as malware on a device, even though it's safe, you can [create a custom indicator with an "Allow" action](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators).

## Undo a remediation action that was taken on a device

If a remediation action was taken on an email message, email attachment, or URL, and the item is actually clean, your security operations team can undo the remediation action. 

> [!IMPORTANT]
> Make sure you have the necessary permissions before attempting to perform the following task.

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. 

2. In the navigation pane, choose **Action center**. 

3. On the **History** tab, select an action that you want to undo. This opens a flyout.<br/>
    > [!TIP]
    > Use filters to narrow down the list of results. 

4. In the flyout for the selected item, select **Open investigation page**.

5. In the investigation details view, select the **Actions** tab.

6. Select an item that has status of **Completed**, and look for a link, such as **Approved**, in the **Decisions** column. This opens a flyout with more details about the action.

7. To undo the action, select **Delete remediation**.

## Related articles

[Automated investigation and response (AIR) in Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)
