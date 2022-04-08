---
title: "Use named entities in your data loss prevention policies"
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

# Use named entities in your data loss prevention policies

Read through [Learn about named entities](named-entities-learn.md) before you start to use them.

## Before you begin

### SKU/subscriptions licensing

For full licensing details see, [the service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-classification-analytics-overview-content--activity-explorer).

### Permissions

The account you use to create and edit data loss prevention (DLP) policies, must have the **DLP Compliance Management** role permissions. For more information, see [Give users access to the Office 365 Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md)


## Supported locations

You can use named entity SITs and enhanced policies to detect and protect sensitive items in these locations:

- SharePoint sites
- OneDrive accounts
- Teams chat and channel messages
- Devices (Windows 10, and 11 endpoint devices)
- Exchange mailboxes

Named entity SITs and enhanced policies are not supported for:


- On-premises repositories
- Power BI

## Create and edit enhanced policies

To create or edit a DLP policy, use the procedures in [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md).

## Workloads and services that support named entities


- **Microsoft 365 eDiscovery** supports the use of named entities in Substrate services.
- **Microsoft Defender for Cloud Apps** supports the use of named entities in Defender for Cloud Apps policies.
- **Insider Risk Management** supports the use of named entities in Substrate services.
<!--- **Communication Compliance** doesn't support the use of named entities in Exchange transport rules and data-at-rest.
- **Microsoft Information Governance** (MIG) doesn't support the use of named entities in Exchange transport rules and data-at-rest.-->
 
### Unified DLP

|Workload/Services  |Support for Named Entities  |
|---------|---------|
|Office Win32 clients policy tip    |not supported  |
|Office WAC clients policy tip    |supported         |
|OWA policy tip     |not supported         |
|Outlook policy tip     |not supported |
|Endpoints (Windows 10, and 11 devices)     |supported  |
|Exchange Transport rules     |not supported |
|OneDrive for Business data-at-rest     |supported         |
|SharePoint Online data-at-rest     |supported         |
|Teams data-at-rest     |supported         |
|Email messages data-at-rest     |not supported         |
|Microsoft Defender for Cloud Apps     |supported         |

### Autolabeling

|Workload/Services |Support for Named Entities  |
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

## Best practices for using named entity SITs

Best practices for creating a new or editing an existing policy  with a named entity:

 

1. Consider the data type and format of the data file being classified, as well as the regulatory requirements. For a “strongly defined” SIT such as SSN, it’s best to use a lower instance count in the policy. For example, if you are trying to detect a list of US Social Security Numbers (SSNs) in structured data such as a spreadsheet, then it’s best to define a policy that is optimized for the confidence and frequency of occurrences. In this case, requiring a minimum instance count of 3 or 5 instances would be best as opposed to a larger instance count, because if a keyword required by the SSN definition were only present in the column header, then only the first few SSNs in the column would likely be found in the required character proximity of the keyword corroborative evidence. Requiring a larger instance count (e.g., 100 or even 500) would likely cause the policy not to match.
 

2.    For a named entity SIT, such as All Full Names, it’s best to set a larger instance count such as 10 or 50. If both the person names and the SSNs are detected together, it’s more likely that the SSNs are truly SSNs, and we reduce the risk that the policy doesn’t trigger because not enough SSNs are detected.

 

3.    Auto-labeling simulations can be leveraged to further fine tune accuracy by adjusting the instance counts and confidence levels defined in your custom policies or the enhanced template conditions across simulations, before enabling in production a DLP or auto-labeling policy containing named entities.

1)	Identify the SIT or combination of SITs you want to test in simulation mode, either custom or cloned and edited.
2)	Identify or create a sensitivity label to be applied when the auto-labeling policy finds a match in Exchange, SharePoint sites, or OneDrive accounts.
3)	Create an sensitivity auto-labeling policy that uses the SIT from step 1 and with same Conditions and Exceptions that will be used in your DLP policy
4)	Run the policy simulation
5)	View the results
6)	Tune the SIT and the instance count and confidence levels to reduce false positives.


## For further information
<!-- - [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)-->
- [Learn about named entities (preview)](named-entities-learn.md).
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
