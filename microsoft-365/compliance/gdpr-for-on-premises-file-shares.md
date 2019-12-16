---
title: "GDPR for on-premises file shares"
description: "Learn about how to address GDPR requirements in on-premises Windows Server file shares."
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
titleSuffix: Microsoft GDPR
---

# GDPR for on-premises Windows Server file shares

The basic recommended approach for file shares is:

-   Use Azure Information Protection to label sensitive data.

-   Use Azure Information Protection scanner to find data.

The recommended approach for files shares includes these steps:

1.  **Install and configure Azure Information Protection scanner.**

    -   Decide which sensitive data types to use.

    -   Specify local folders and network shares to use.

2.  **Complete a discovery cycle.**

    -   Run the scanner in discovery mode and validate the findings.

    -   If needed, optimize the conditions and sensitive information types.

    -   Assess the expected impact of automatically applying labels.

3.  **Run the Azure Information Protection scanner to apply labels to qualifying documents**.

4.  **For protection:**

    -   Configure Exchange data loss prevention rules to protect documents with the desired label.

    -   Be sure to use permissions to limit who can access files.

5.  **For monitoring, integrate Windows Server logs with a SIEM tool.**

    -   To find personal data for data subject requests, use Azure Information Protection scanner. You can also configure SharePoint Server search to crawl file shares.

For more information on using Azure Information Protection scanner to find and label personal data, see the Microsoft GDPR Data Discovery Toolkit at [https://aka.ms/gdprpartners](<https://aka.ms/gdprpartners>).

For information on configuring the scanner for conditions and using the Office 365 data loss prevention (DLP) sensitive information types, see [How to configure conditions for automatic and recommended classification for Azure Information Protection](https://docs.microsoft.com/information-protection/deploy-use/configure-policy-classification). Note that new Office 365 sensitive information types will not be immediately available to use with the scanner and custom sensitive information types cannot be used with the scanner.
