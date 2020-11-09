---
title: "GDPR for Office Servers"
description: Learn how to address General Data Protection Regulation (GDPR) requirements in Office on-premises servers.
f1.keywords:
- NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
titleSuffix: Microsoft GDPR
ms.custom: seo-marvel-apr2020
---

# GDPR for Office on-premises Servers

The General Data Protection Regulation (GDPR) introduces requirements for organizations to protect personal data and respond appropriately to data subject requests. This series of articles provides recommended approaches for on-premises workloads:

- [SharePoint Server](gdpr-for-sharepoint-server.md)

- [Exchange Server](gdpr-for-exchange-server.md)

- [Skype for Business Server](gdpr-for-skype-for-business-server.md)

- [Project Server](gdpr-for-project-server.md)

- [Office Web Apps Server and Office Online Server](gdpr-for-office-online-server.md)

- [On-premises file shares](gdpr-for-on-premises-file-shares.md)

For more information about the GDPR and how Microsoft can help you, see the [Microsoft Trust Center](https://www.microsoft.com/trust-center/privacy/gdpr-overview
).

Before doing any work with on-premises data, consult with your legal and compliance teams to seek guidance and to learn about existing classification schemas and approaches to working with personal data. Microsoft provides recommendations for developing and extending classifications schemas in the Microsoft GDPR Data Discovery Toolkit at [https://aka.ms/gdprpartners](<https://aka.ms/gdprpartners>). This toolkit also describes approaches for moving on-premises data to the cloud where you can use more sophisticated data governance capabilities, if this is desired. The articles in this section provide recommendations for data that is intended to remain on premises.

The following illustration lists recommended capabilities to use across each of these workloads to discover, classify, protect, and monitor personal data. See the articles in this section for more information.

![Diagram describing the capabilities to discover, classify, protect, and monitor personal data across workloads](../media/gdpr-for-office-servers-image1.png)

## Illustration description

For accessibility, the following table provides the same examples in the illustration.

****

|Action|Windows Server file shares|SharePoint Server|Exchange Server|Skype for Business|Project Server|
|---|---|---|---|---|---|
|Discover|Azure Information Protection scanner<sup>\*</sup>|Search Center or eDiscovery (after data is classified) <br/><br/> Azure Information Protection scanner<sup>\*</sup>|Exchange eDiscovery Portal|Exchange eDiscovery portal|SQL scripts for discovery and exporting|
|Classify|Azure Information Protection scanner<sup>\*</sup> <br/><br/> Office 365 sensitive information types|Azure Information Protection scanner<sup>\*</sup> <br/><br/> Office 365 sensitive information types|Exchange retention tags and retention policies|Exchange retention tags and retention policies||
|Protect||Exchange Server data loss prevention rules <br/><br/> Permissions, IRM-protection for libraries|Exchange Server data loss prevention rules <br/><br/> IRM integration with Exchange Server|||
|Monitor|Integrate logs with SIEM tools|Integrate logs with SIEM tools|Integrate logs with SIEM tools|Integrate logs with SIEM tools|Integrate logs with SIEM tools|
|

<sup>\*</sup> Note that protection encrypts the file. Consequently, SharePoint Server can't find the sensitive information types in protected files.
