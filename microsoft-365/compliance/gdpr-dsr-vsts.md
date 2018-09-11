---
title: VSTS Data Subject Requests for the GDPR
keywords: Visual Studio Team Services, VSTS, VSTS documentation, privacy, GDPR
localization_priority: Priority
audience: microsoft-business
audience: itpro
ms.prod: devops
ms.topic: article
ms.date: 06/11/2018
author: jitojo
ms.author: jominana
manager: douge
ms.collection: GDPR
ms.workload:
  - "multiple"
---
# Visual Studio Team Services Data Subject Requests for the GDPR

The European Union [General Data Protection Regulation (GDPR)](http://ec.europa.eu/justice/data-protection/reform/index_en.htm) gives rights to people, known in the regulation as *data subjects*, to manage the personal data that's collected by a *data controller*. A data controller, or just *controller*, is an employer or other type of agency or organization. Personal data is defined broadly under the GDPR as any data that relates to an identified or identifiable natural person. The GDPR gives data subjects specific rights to their personal data. These rights include obtaining copies of personal data, requesting corrections to it, restricting the processing of it, deleting it, or receiving it in an electronic format so it can be moved to another controller. A formal request by a data subject to a controller to take an action on their personal data is called a *Data Subject Request*, or DSR.

For general information about GDPR, see the [GDPR section of the Service Trust portal](https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted).

This guide discusses how to use Microsoft tools to export or delete personal data collected during an authenticated (signed-in) session of Visual Studio Team Services (VSTS).

## Additional privacy information

The [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement), [Online Services Terms (OST)](https://www.microsoft.com/licensing/product-licensing/products.aspx), and [Microsoft's GDPR Commitments](/legal/gdpr) articles describe our data processing practices.

## Personal data we collect

Microsoft collects data from users to operate and improve VSTS. VSTS collects two categories of data&mdash;customer data and system-generated logs. Customer data includes user-identifiable transactional and interactional data that VSTS needs to operate the service. System-generated logs include service usage data that is aggregated for each product area and feature.

## Delete VSTS data

The first step to delete associated VSTS customer data and to anonymize personally identifiable data found in system-generated logs is to close your Azure Active Directory (AAD) identity account or Microsoft Account (MSA). VSTS is relied upon as a system of record with strict integrity, traceability, and audit rules. These existing obligations affect our delete and retention obligations for GDPR. Closing the identity account does not alter, remove, or change artifacts and records associated with the individual identity in the VSTS account. We have ensured that when an entire VSTS account is deleted, all associated personally identifiable data and system-generated logs found in that account are removed from our system (after the requisite VSTS account 30-day soft-delete period).

## Export VSTS data

Controllers can export customer data and system-generated logs collected from their data subjects by one of two methods, depending upon the identity provider (MSA or AAD) used to sign in to the VSTS service.

- Users that authenticate using an account that is backed by an Azure tenant, for example, AAD account or MSA account associated with an Azure subscription, can follow the instructions in [Azure Data Subject Requests for the GDPR](../compliance/gdpr-dsr-azure.md).

- Users that authenticate using an MSA identity can use this [Privacy Request site](https://www.microsoft.com/concern/privacyrequest-msa) to view activity data tied to their MSA identity across multiple Microsoft services. In this scenario, the user is a controller for their own personal data.

## Export or delete issues

For AAD identities, if you run into issues while exporting or deleting data from the Azure portal, go to the Azure portal **Help + Support** blade and submit a new ticket under **Subscription Management** > **Other Security and Compliance Request** > **Privacy Blade and GDPR Requests**.

For MSA identities, if you run into issues while exporting data from the Privacy Request site, log on to the [Privacy Request site](https://www.microsoft.com/concern/privacyrequest-msa) and submit a request for help from the Microsoft Privacy team via the request webform.

## Learn more

Microsoft is committed to ensuring that your VSTS data remains secure and private, without exception. Visit the [VSTS data protection overview](/vsts/articles/team-services-security-whitepaper?view=vsts) whitepaper to learn more about how we protect your VSTS data.

## See also

- [Microsoft's GDPR commitments to customers of our generally available enterprise software products](https://docs.microsoft.com/legal/gdpr)
- [Microsoft Trust center](https://www.microsoft.com/TrustCenter/Privacy/gdpr/default.aspx)
- [Service Trust portal](https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted)
- [Microsoft privacy dashboard](https://account.microsoft.com/privacy)
- [Microsoft privacy response center](https://aka.ms/userprivacysite)
- [Azure Data Subject Requests for the GDPR](gdpr-dsr-azure.md)