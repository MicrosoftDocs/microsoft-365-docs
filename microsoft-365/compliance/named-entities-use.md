---
title: "Use named entities in your data loss prevention policies (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: article
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- M365-security-compliance
description: "Use these procedures to take advantage of named entities in your data loss prevention policies"
---

# Use named entities in your data loss prevention policies (preview)

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

> [!IMPORTANT]
> The named entities feature is rolling out and will appear in your tenant when it is available to you. Check for them in content explorer and in the Microsoft Purview Data Loss Prevention (DLP) policy authoring flow. 

Read through [Learn about named entities (preview)](named-entities-learn.md) before you start to use them.

## Before you begin

### SKU/subscriptions licensing

You have to have one of these subscriptions

- Information Protection and Governance
- Microsoft 365 E5 Compliance
- Office 365 E5
- Microsoft 365 E5

For full licensing details see, [the service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-classification-analytics-overview-content--activity-explorer).

### Permissions

The account you use to create and edit data loss prevention (DLP) policies, must have the **DLP Compliance Management** role permissions. For more information, see [Give users access to the Office 365 Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md)


## Supported locations

You can use named entity SITs and enhanced policies to detect and protect sensitive items in these locations:

- SharePoint sites
- OneDrive accounts
- Teams chat and channel messages
- Devices (Windows 10 endpoint devices)

Named entity SITs and enhanced policies are not supported for:


- On-premises repositories
- Power BI

## Create and edit enhanced policies

To create or edit a DLP policy, use the procedures in [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md).

## Workloads and services that support named entities


- **Microsoft 365 eDiscovery** supports the use of named entities in Substrate services.
- **Microsoft Defender for Cloud Apps** supports the use of named entities in Defender for Cloud Apps policies.
- **Insider Risk Management** supports the use of named entities in Substrate services.
- **Communication Compliance** doesn't support the use of named entities in Exchange transport rules and data-at-rest.
 
### Unified DLP

|Workload/Services  |Public Preview Support for Named Entities  |
|---------|---------|
|Office Win32 clients policy tip    |not supported  |
|Office WAC clients policy tip    |supported         |
|OWA policy tip     |not supported         |
|Outlook policy tip     |not supported |
|Endpoints (Windows 10 devices)     |supported  |
|Exchange Transport rules     |not supported |
|OneDrive for Business data-at-rest     |supported         |
|SharePoint Online data-at-rest     |supported         |
|Teams data-at-rest     |supported         |
|Email messages data-at-rest     |not supported         |
|Microsoft Defender for Cloud Apps     |supported         |

### Autolabeling

|Workload/Services |Public Preview Support for Named Entities  |
|---------|---------|
|Office Win32 clients offline   |supported, user must select label and manually apply |
|Online Office Win32 clients online|supported with old confidence scheme |
|Outlook online   |supported with old confidence scheme  |
|Office WAC client     |supported |
|OWA     |supported |
|Exchange transport     |not supported |
|OneDrive for Business data-at-rest     |supported |
|SharePoint Online data-at-rest|supported|
|Azure Information Protection (AIP) scanner|not supported|

## Known issues

|Issue  |Impact  |
|---------|---------|
|DLP Policy tips (OWA, Outlook, Office Win32 clients)     |   Policy tips with entity condition will result in "no match"      |
| Asian language support for person name (Chinese, Japanese, Korean)    | Named entities supported for Latin-based character set only (that is, kanji is not supported) for person name        |
|On-premises repositories    | Not supported as a workload|

<!--|Devices workload (Endpoint)     | Not supported as a workload – authoring policy with named entities will not be allowed        |-->

## For further information
<!-- - [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)-->
- [Learn about named entities (preview)](named-entities-learn.md).
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
