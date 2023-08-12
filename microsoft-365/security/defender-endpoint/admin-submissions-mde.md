---
title: Submit files in Microsoft Defender for Endpoint
description: Learn how to use the unified submissions feature in Microsoft 365 Defender to submit suspicious emails, URLs, email attachments, and files to Microsoft for scanning.
keywords: antivirus, spam, phish, file, alert, Microsoft Defender for Endpoint, false positive, false negative, blocked file, blocked url, submission, submit, report
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.date: 06/5/2023
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
manager: dansimp
localization_priority: Normal
audience: ITPro
ms.topic: how-to
ms.collection: 
- m365-security
- tier3
ms.custom: FPFN
---

# Submit files in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146806)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-usewdatp-abovefoldlink).

In Microsoft Defender for Endpoint, admins can use the unified submissions feature to submit files and file hashes (SHAs) to Microsoft for review. The unified submissions experience is a one-stop shop for submitting emails, URLs, email attachments, and files in one, easy-to-use submission experience. Admins can use the Microsoft 365 Defender portal or the Microsoft Defender for Endpoint Alert page to submit suspicious files.

## What do you need to know before you begin?

- The new unified submissions experience is available only in subscriptions that include Microsoft 365 Defender or Microsoft Defender for Endpoint Plan 2.

- To submit files to Microsoft, you need to be a member of one of the following groups:
  - **Organization Management** or **Security Administrator** role groups in [Email & collaboration permissions in the Microsoft 365 Defender portal](../office-365-security/mdo-portal-permissions.md).
  - **Global Administrator** or **Security Administrator** roles in [Azure AD permissions](../../admin/add-users/about-admin-roles.md). Membership in these roles give the required permissions _and_ permissions for other features in Microsoft 365.

- For more information about how you can submit spam, phish, URLs, and email attachments to Microsoft, see [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](../office-365-security/submissions-admin.md).

- To find the SHA256 hash value of a file in Windows, run the following command in a Command Prompt: `certutil.exe -hashfile "<Path>\<Filename>" SHA256`.

## Submit a file or file hash to Microsoft from the Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select the **Files** tab.

3. On the **Files** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add new submission**.

   :::image type="content" source="../../media/unified-admin-submission-new.png" alt-text="Screenshot showing how to add a new submission.":::

2. In the **Submit items to Microsoft for review** flyout that opens, select **Files** or **File hash** from the **Select the submission type** dropdown list.

   - If you selected **Files**, configure the following options:
     - Select **Browse files**. In the dialog that opens, find and select the file, and then select **Open**. Repeat this step as many times as necessary. To remove an entry from the flyout, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: next to the entry.
       - The maximum total size of all files is 500 MB.
       - Use the password 'infected' to encrypt archive files.
     - **The file should have been categorized as**: Select one of the following values:
       - **Malware** (false negative)
       - **Unwanted software**
       - **Clean** (false positive)
     - **Choose the priority**: Select one of the following values:
       - **Low - bulk file or file hash submission**
       - **Medium - standard submission**
       - **High - needs immediate attention** (max three per day)
     - **Notes for Microsoft (optional)**: Enter an optional note.
     - **Share feedback and relevant content with Microsoft**: Read the privacy statement and then select this option.

     :::image type="content" source="../../media/unified-admin-submission-file.png" alt-text="Screenshot showing how to submit files.":::

   - If you selected **File hash**, configure the following options:
     - In the empty box, enter the file hash value (for example, `2725eb73741e23a254404cc6b5a54d9511b9923be2045056075542ca1bfbf3fe`) and then press the ENTER key. Repeat this step as many times as necessary. To remove an entry from the flyout, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: next to the entry.
     - **The file should have been categorized as**: Select one of the following values:
       - **Malware** (false negative)
       - **Unwanted software**
       - **Clean** (false positive)
     - **Notes for Microsoft (optional)**: Enter an optional note.
     - **Share feedback and relevant content with Microsoft**: Read the privacy statement and then select this option.

     :::image type="content" source="../../media/unified-admin-submission-file-hash.png" alt-text="Screenshot showing how to submit files hashes.":::

   When you're finished in the **Submit items to Microsoft for review** flyout, select **Submit**.

Back on the **Files** tab of the **Submissions** page, the submission is shown.

To view the details of the submission, select the submission by clicking anywhere in the row other than the check box next to the **Submission name**. The details of the submission are in the details flyout that opens.

## Report items to Microsoft from the Alerts page in the Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Incidents & alerts** \> **Alerts**. Or, to go directly to the **Alerts** page, use <https://security.microsoft.com/alerts>.

2. On the **Alerts** page, find the alert that contains the file you want to report. For example, you can select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**, and then select **Service sources** \> **Microsoft Defender for Endpoint**.

3. Select the alert from the list by clicking anywhere in the row other than the check box next to the **Alert name** value.

4. In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: \> **Submit items to Microsoft for review**.

   :::image type="content" source="../../media/unified-admin-submission-alerts-queue.png" alt-text="Screenshot showing how to submit items from an alerts queue.":::

5. The options that are available in the **Submit items to Microsoft for review** flyout that opens are basically same as described in the previous section.

   The only difference is an **Include alert story** option that you can select to attach a JSON file that helps Microsoft investigate the submission.

   :::image type="content" source="../../media/unified-admin-submission-alert-queue-flyout.png" alt-text="Screenshot showing how to specify a submission type and fill in required fields.":::

   When you're finished in the **Submit items to Microsoft for review** flyout, select **Submit**.

The submission is available on the **Files** tab of the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=file>.

## Related information

- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
- [Microsoft Defender for Endpoint in Microsoft 365 Defender](../defender/microsoft-365-security-center-mde.md)
- [Address false positives/negatives](defender-endpoint-false-positives-negatives.md)
- [View and organize alerts queue in Microsoft Defender for Endpoint](alerts-queue.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
