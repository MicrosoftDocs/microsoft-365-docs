---
title: "Create and deploy a data loss prevention policy"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: how-to
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- highpri
- tier1 
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
ms.custom: admindeeplinkCOMPLIANCE
search.appverid: 
- MET150
description: "Scenarios for creating and deploying DLP policies"
---

# Create and Deploy data loss prevention policies

There are many configuration options in a Microsoft Purview data loss prevention (DLP) policy, each option changes the policy behavior. This article presents some common policy configuration scenarios. Once you familiarize yourself with these scenarios, you'll be comfortable using the DLP policy creation UX to create your own policies and manage their deployment.

## Before you begin

> [!WARNING]
> Before you attempt to create and deploy a DLP policy make sure you have read through and done the work in the preceding core steps of the DLP adoption process. 
>
> 1. [Learn about data loss prevention](dlp-learn-about-dlp.md)
> 1. [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md)
> 1. [Data loss prevention policy reference](dlp-policy-reference.md)
> 1. [Design a data loss prevention policy](dlp-policy-design.md)
>
> This article is the fifth in the series of core steps in the DLP adoption process.
>
> There are additional articles that help you learn about and get started with many of the locations that DLP can monitor. You should be familiar with the ones that apply to the locations you want to monitor. 

### SKU/subscriptions licensing

Before you get started with DLP policies, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. 

For full licensing details see: [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)


### Permissions <!--check these-->

Data from DLP on-premises scanner can be viewed in [Activity explorer](data-classification-activity-explorer.md). There are four roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

#### Roles and Role Groups in preview

There are roles and role groups in preview that you can test out to fine tune your access controls.

Here's a list of applicable roles that are in preview. To learn more about them, see [Roles in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center)

- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups that are in preview. To learn more about the, see [Role groups in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#role-groups-in-the-security--compliance-center)

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers


## See also

- [Learn about DLP on-premises scanner](dlp-on-premises-scanner-learn.md)
- [Use DLP on-premises scanner](dlp-on-premises-scanner-use.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
