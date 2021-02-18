---
title: "How to report false positives or false negatives following automated investigation in Microsoft Defender for Office 365"
description: Was something missed or wrongly detected by AIR in Microsoft Defender for Office 365? Learn how to submit false positives or false negatives to Microsoft for analysis.
keywords: automated, investigation, alert, trigger, action, remediation, false positive, false negative
search.appverid: met150
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
ms.prod: m365-security
ms.date: 01/29/2021
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
ms.topic: how-to
ms.custom: 
- autoir
ms.technology: mdo
---

# How to report false positives/negatives in automated investigation and response capabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

If [automated investigation and response (AIR) capabilities in Office 365](automated-investigation-response-office.md) missed or wrongly detected something, there are steps your security operations team can take to fix it. Such actions include:

- [Reporting a false positive/negative to Microsoft](#report-a-false-positivenegative-to-microsoft-for-analysis);
- [Adjusting alerts](#adjust-an-alert-to-prevent-false-positives-from-recurring) (if needed); and
- [Undoing remediation actions that were taken](#undo-a-remediation-action).

Use this article as a guide.

## Report a false positive/negative to Microsoft for analysis

If AIR in Microsoft Defender for Office 365 missed an email message, an email attachment, a URL in an email message, or a URL in an Office file, you can [submit suspected spam, phish, URLs, and files to Microsoft for Office 365 scanning](admin-submission.md).

You can also [Submit a file to Microsoft for malware analysis](https://www.microsoft.com/wdsi/filesubmission).

## Adjust an alert to prevent false positives from recurring

If an alert is triggered by legitimate use, or the alert is inaccurate, you can [Manage alerts in the Cloud App Security portal](https://docs.microsoft.com/cloud-app-security/managing-alerts).

If your organization is using [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection) in addition to Office 365, and a file, IP address, URL, or domain is treated as malware on a device, even though it's safe, you can [create a custom indicator with an "Allow" action for your device](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators).

## Undo a remediation action

In most cases, if a remediation action was taken on an email message, email attachment, or URL, and the item is actually not a threat, your security operations team can undo the remediation action and take steps to prevent the false positive from recurring. You can either use [Threat Explorer](#undo-an-action-using-threat-explorer) or the [Actions tab for an investigation](#undo-an-action-in-the-action-center) to undo an action.

> [!IMPORTANT]
> Make sure you have the necessary permissions before attempting to perform the following tasks.

### Undo an action using Threat Explorer

With Threat Explorer, your security operations team can find an email affected by an action and potentially undo the action.

|Scenario|Undo Options|Learn more|
|---|---|---|
|An email message was routed to a user's Junk Email folder|- Move the message to the user's Deleted Items folder<br/>- Move the message to the user's Inbox<br/>- Delete the message|[Find and investigate malicious email that was delivered in Office 365](investigate-malicious-email-that-was-delivered.md)|
|An email message or a file was quarantined|- Release the email or file<br/>- Delete the email or file|[Manage quarantined messages as an admin](manage-quarantined-messages-and-files.md)|
|

### Undo an action in the Action center

In the Action center, you can see remediation actions that were taken and potentially undo the action.

1. Go to the Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)).
2. In the navigation pane, select **Action center**. 
3. Select the **History** tab to view the list of completed actions.
4. Select an item. Its flyout pane opens. 
5. In the flyout pane, select **Undo**. (Only actions that can be undone will have an **Undo** button.)

## See also

- [Microsoft Defender for Office 365](defender-for-office-365.md)
- [Automated investigations in Microsoft Defender for Office 365](office-365-air.md)
