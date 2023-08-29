---
title: Submit files for analysis by Microsoft
description: Learn how to submit files to Microsoft for malware analysis, how to track your submissions, and dispute detections.
ms.reviewer:
keywords: security, sample submission help, malware file, virus file, trojan file, submit, send to Microsoft, submit a sample, virus, trojan, worm, undetected, doesn't detect, email microsoft, email malware, I think this is malware, I think it's a virus, where can I send a virus, is this a virus, MSE, doesn't detect, no signature, no detection, suspect file, MMPC, Microsoft Malware Protection Center, researchers, analyst, WDSI, security intelligence
ms.service: microsoft-365-security
ms.subservice: intelligence
ms.mktglfcycl: secure
ms.sitesec: library
ms.localizationpriority: medium
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
search.appverid: met150
ms.date: 08/18/2023
---

# Submit files for analysis

If you have a file that you suspect might be malware or is being incorrectly detected, you can submit it to us for analysis. This page has answers to some common questions about submitting a file for analysis.

> [!TIP]
> If your organization's subscription includes [Microsoft Defender for Endpoint Plan 2](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint), [Microsoft Defender for Office 365 Plan 2](/microsoft-365/security/office-365-security/defender-for-office-365), or [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender), you can use the [new unified submissions portal](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770). To learn more, see [Submit files in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/admin-submissions-mde).

## How do I submit a file to Microsoft for analysis?

### Send a malware file

You can send files that you think might be malware or files that have been incorrectly detected through the [sample submission portal](https://www.microsoft.com/wdsi/filesubmission).

You can complete a quick analysis by providing detailed information about the product you were using and what you were doing when you found the file.

After you sign in, you will be able to track your submissions.

> [!NOTE]
>
> You can use the Microsoft Security Intelligence submission feature even if you don't have Microsoft Defender for Endpoint Plan 2 or Microsoft Defender for Office Plan 2.

### Submit a suspected email attachment

Use the [Microsoft 365 Defender portal](https://security.microsoft.com/) to submit suspected email attachments to Microsoft for review. For more information, see [Submit a suspected email attachment to Microsoft](../office-365-security/submissions-admin.md).

### Submit a file or file hash

Use the unified submissions feature in Microsoft Defender for Endpoint to submit files and file hashes to Microsoft for review. For more information, see [Submit files in Microsoft Defender for Endpoint](../defender-endpoint/admin-submissions-mde.md).

## Can I send a sample by email?

No, we only accept submissions through our [sample submission portal](https://www.microsoft.com/wdsi/filesubmission).

## Can I submit a sample without signing in?

No. If you're an enterprise customer, you need to sign in so that we can prioritize your submission appropriately. If you are currently experiencing a virus outbreak or security-related incident, you should contact your designated Microsoft support professional or go to [Microsoft Support](https://support.microsoft.com/) for immediate assistance.

## What is the Software Assurance ID (SAID)?

The [Software Assurance ID (SAID)](https://www.microsoft.com/licensing/licensing-programs/software-assurance-default.aspx) is for enterprise customers to track support entitlements. The submission portal accepts and retains SAID information and allows customers with valid SAIDs to make higher priority submissions.

### How do I dispute the detection of my program?

[Submit the file](https://www.microsoft.com/wdsi/filesubmission) in question as a software developer. Wait until your submission has a final determination.

If you're not satisfied with our determination of the submission, use the developer contact form provided with the submission results to reach Microsoft. We will use the information you provide to investigate further if necessary.

We encourage all software vendors and developers to read about [how Microsoft identifies malware and unwanted software](criteria.md).

## How do I track or view past sample submissions?

You can track your submissions through the [submission history page](https://www.microsoft.com/wdsi/submissionhistory).

## What does the submission status mean?

Each submission is shown to be in one of the following status types:

* Submitted—the file has been received

* In progress—an analyst has started checking the file

* Closed—a final determination has been given by an analyst

You can see the status of any files you submit to us on the [submission history page](https://www.microsoft.com/wdsi/submissionhistory).

## How does Microsoft prioritize submissions

Processing submissions take dedicated analyst resource. Because we regularly receive a large number of submissions, we handle them based on a priority. The following factors affect how we prioritize submissions:

* Prevalent files with the potential to impact large numbers of computers are prioritized.

* Authenticated customers, especially enterprise customers with valid [Software Assurance IDs (SAIDs)](https://www.microsoft.com/licensing/licensing-programs/software-assurance-default.aspx), are given priority.

* Submissions flagged as high priority by SAID holders are given immediate attention.

Your submission is immediately scanned by our systems to give you the latest determination even before an analyst starts handling your case. Note that the same file may have already been processed by an analyst. To check for updates to the determination, select rescan on the submission details page.

## See also

[Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](../defender-endpoint/defender-endpoint-antivirus-exclusions.md)
