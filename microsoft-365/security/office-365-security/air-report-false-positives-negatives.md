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
ms.date: 05/15/2020
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
- Office 365 Advanced Threat Protection

Did [automated investigation and response (AIR) capabilities in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office) miss or wrongly detect something? There are steps you can take to fix it. You can:
- [Report a false positive/negative to Microsoft](#report-a-false-positivenegative-to-microsoft-for-analysis);
- [Adjust your alerts](#adjust-an-alert-to-prevent-false-positives-from-recurring) (if needed); and 
- [Undo remediation actions that were taken](#undo-a-remediation-action). 

Use this article as a guide. 

## Report a false positive/negative to Microsoft for analysis

If Office 365 AIR missed an email message, an email attachment, a URL in an email message, or a URL in an Office file, you can [submit suspected spam, phish, URLs, and files to Microsoft for Office 365 scanning](https://docs.microsoft.com/microsoft-365/security/office-365-security/admin-submission).

You can also [Submit a file to Microsoft for malware analysis](https://www.microsoft.com/wdsi/filesubmission).

## Adjust an alert to prevent false positives from recurring

If an alert is triggered by legitimate use, or the alert is inaccurate, you can [Manage alerts in the Cloud App Security portal](https://docs.microsoft.com/cloud-app-security/managing-alerts).

If your organization is using [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection) in addition to Office 365, and a file, IP address, URL, or domain is treated as malware on a device, even though it's safe, you can [create a custom indicator with an "Allow" action for your device](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators).

## Undo a remediation action

In most cases, if a remediation action was taken on an email message, email attachment, or URL, and the item is actually not a threat, your security operations team can undo the remediation action and take steps to prevent the false positive from recurring. You can either use [Threat Explorer](#undo-an-action-using-threat-explorer) or the [Actions tab for an investigation](#undo-an-action-using-the-actions-tab-for-an-investigation) to undo an action. 

> [!IMPORTANT]
> Make sure you have the necessary permissions before attempting to perform the following tasks.

### Undo an action using Threat Explorer

With Threat Explorer, your security operations team can find an email affected by an action and potentially undo the action.

****

|Scenario|Undo Options|Learn more|
|---|---|---|
|An email message was routed to a user's Junk Email folder|- Move the message to the user's Deleted Items folder<br/>- Move the message to the user's Inbox <br/>- Delete the message|[Find and investigate malicious email that was delivered in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/investigate-malicious-email-that-was-delivered)|
|An email message or a file was quarantined|- Release the email or file <br/>- Delete the email or file|[Manage quarantined messages and files as an administrator in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/manage-quarantined-messages-and-files)|
|

### Undo an action using the Actions tab for an investigation

In the Action center, you can see remediation actions that were taken and potentially undo the action.

1. Go to [https://protection.office.com](https://protection.office.com) and sign in. This takes you to the Security & Compliance Center.

2. Go to **Threat management** > **Investigations**.

3. In the list of investigations, select the **Open in new window** icon next to an item's ID.

4. Select the **Actions** tab.

5. Select an item that has status of **Completed**, and look for a link, such as **Approved**, in the **Decision** column. This opens a flyout with more details about the action.

6. To undo the action, select **Delete remediation**.

## Related articles

[Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp)

[Get started using Automated investigation and response (AIR) in Office 365](office-365-air.md)
