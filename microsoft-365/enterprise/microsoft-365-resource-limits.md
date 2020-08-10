---
title: "Microsoft 365 Resource Limits"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: In this article, you can find information about resource limits for the various applications within Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Resource Limits

Resource limits are enforced using quotas (limits) and throttling. Azure Active Directory (Azure AD) and the individual Microsoft 365 services use both. Limits are service-specific and change over time as new capabilities are added. For details on the current limits for the various services, see the following topics:

- [Azure AD service limits and restrictions](https://docs.microsoft.com/azure/azure-resource-manager/management/azure-subscription-service-limits)
- [Exchange Online Limits](https://technet.microsoft.com/library/exchange-online-limits.aspx)
- [Exchange Online Protection Limits](https://technet.microsoft.com/library/exchange-online-protection-limits.aspx)
- [SharePoint Online software boundaries and limits](https://support.office.com/article/SharePoint-Online-software-boundaries-and-limits-8F34FF47-B749-408B-ABC0-B605E1F6D498)
- [Skype for Business Limits](https://technet.microsoft.com/library/skype-for-business-online-limits.aspx)
- [Yammer REST API and Rate Limits](https://developer.yammer.com/docs/rest-api-rate-limits)
- [File Size Limits in Sway](https://support.office.com/article/File-size-limits-in-Sway-4db21bc6-b42b-499f-9272-66e089db109f)

In addition to these limits, several throttling mechanisms are used throughout Azure AD and Microsoft 365. Throttling within the service is especially important, given that network resources in Microsoft's datacenters are optimized for the broad set of customers that use the services. Throttling mechanisms include:

- Azure AD and Microsoft 365 feature user-level throttling, which limit the number of transactions or concurrent calls (by script or code) that can be performed by a single user.
- A default PowerShell throttling policy is assigned to each tenant at tenant creation. These settings affect other items, such as the maximum number of simultaneous PowerShell sessions that can be opened by a single administrator.
- Each Exchange Online customer has a default Exchange Web Services (EWS) policy that is tuned for EWS client operations, and throttling that applies to all Outlook clients.
