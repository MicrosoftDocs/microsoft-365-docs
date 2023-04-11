---
title: "Learn about collecting files that match DLP policies from devices (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/11/2023
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
description: "Learn about copying items that match policies to an Azure storage account."
---

# Learn about evidence collection for file activities on devices (preview)

When you are investigating a Microsoft Purview data loss prevention (DLP) incident or troublshooting a DLP policy, it can be helpful to have a complete copy of the item that matched the policy to refer to. DLP can copy the item that matches a DLP policy from onboarded Windows devices to an Azure storage account. DLP incident investigators and administrators that have been granted the appropriate permissions on the Azure storage blob can then access the files.

To get started configuring and using the feature, see [Get started with collecting files that match data loss prevention policies from devices (preview)](dlp-copy-matched-items-get-started.md).  

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

If you're new to Microsoft Purview DLP, here's a list of the core articles you'll need as you implement DLP:

1. [Administrative units (preview)](microsoft-365-compliance-center-permissions.md#administrative-units-preview)
1. [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) - this article introduces you to the data loss prevention discipline and Microsoft's implementation of DLP
1. [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp) - by working through this article you will:
    1. [Identify stakeholders](dlp-overview-plan-for-dlp.md#identify-stakeholders)
    1. [Describe the categories of sensitive information to protect](dlp-overview-plan-for-dlp.md#describe-the-categories-of-sensitive-information-to-protect)
    1. [Set goals and strategy](dlp-overview-plan-for-dlp.md#set-goals-and-strategy)
1. [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference) - this article introduces all the components of a DLP policy and how each one influences the behavior of a policy
1. [Design a DLP policy](dlp-policy-design.md) - this article walks you through creating a policy intent statement and mapping it to a specific policy configuration. 
1. [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) - This article presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options.

## Where evidence collection for file activities on devices<!--copy matched items--> fits in Purview

Endpoint DLP is part of the [larger DLP offering](dlp-learn-about-dlp.md) and part of the much larger range of services offered in [Microsoft Purview](/microsoft-365/compliance.md). You should understand how evidence collection for file activities on devices fits into the larger set of service offerings.
### Evidence collection for file activities on devices <!--Copy matched items--> and eDiscovery

This feature will only make copies of items that match DLP policies on onboarded Windows devices and place those copies in an Azure storage account. These copies are not held in a changless state and aren't evidence in the legal sense of the term. If you need to find and hold items for legal purposes, you should use the [Microsoft Purview eDiscovery solutions](ediscovery.md). Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases.
### Evidence collection for file activities on devices<!--Copy matched items--> and contextual summary

 When an item and the activity that a user is taking on that item match the conditions defined in a DLP policy, a **DLPRuleMatch** event will show up in [Activity explorer](data-classification-activity-explorer.md). This is true for every location that DLP supports. The **DLPRuleMatch** event contains a limited amount of the text that surrounds the matched content. This limited amount of text is called [contextual summary](dlp-learn-about-dlp.md#contextual-summary).
It's important to understand the difference between evidence collection for file activities on devices <!--copy matched item--> and contextual summary. Evidence collection for file activities on devices <!--Copy matched items--> is only available for onboarded Windows devices and saves a copy of the entire item that matched a policy to Azure storage. Contextual summary is captured for every DLP policy rule match and only contains a limited amount of the text that surrounds the target text that triggerd the match. 

## Covered user activities
 
You can set evidence collection for file activities on devices to save a copy of a matched item to Azure when a user attempts to do one of these activities on a matched item:
 - Copy to a removable USB
 - Copy to Network share
 - Print
 - Copy or move using unallowed Bluetooth app
 - Copy or move through RDP
 
These detection of these activities is configured in the DLP policy. For more information on how to create a DLP policy, see, [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) and [Using Endpoint data loss prevention](endpoint-dlp-using.md).

## Covered actions

When you enable evidence collection for file activities on devices in Endpoint DLP settings and configure a DLP policy to use this feature it will save a copy of a matched item for these actions:
- Audit only
- Block with override
<!--Block--> 

These actions are configured in the DLP policy. For more information on how to create a DLP policy, see [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) and and [Using Endpoint data loss prevention](endpoint-dlp-using.md).
 

## Design consideration

### Regions for your Azure Storage accounts

To comply with regulatory requirements, make sure that the Azure storage accounts that you use are in the same geo-political regulatory boundaries as the devices that they are being copied from. Also, be aware of the geo-political location of the DLP investigators who will be accessing the sensitive items once they are saved. Consider using [Administrative units (preview)](microsoft-365-compliance-center-permissions.md#administrative-units-preview) to scope the administration of the users and devices that the DLP policy will be scoped to.

### Local storage and bandwidth
By default, copies of matched items are saved asynchronously to the configured Azure storage account over the existing network connection. If the device doesn't have connectivity, matched items will be save locally, up to the 500MB limit. Up to 60 days of items can be saved locally.
While has connectivity to Azure storage, there is no limit on bandwidth usage. The bandwidth that evidence collection for file activities on devices uses doesn't impact the default or configured bandwidth limits for [Advanced classification scanning and protection](dlp-configure-endpoint-settings.md#advanced-classification-scanning-and-protection).

### Azure blob storage

Customers are responsible for creating and managing their own Azure storage accounts.
All users who are in scope for the policy must have upload permission to the blob storage.

All adminstrators who will be reviewing the saved items must have read permission to the Azure blob storage.


understand Azure storage accounts

Blob storage is probably the most economical and best fit



create custom role groups for endpoint incident administrators and for all users whose devices will be targeted by DLP policies that copy matched items to Azure storage.


Cover how they DLP incident investigators can access the blob storage and view what is in there.

Considering GDPR and California Consumer Privacy Act, how do admins handle files in the Storage Account when they receive a Data Subject Request to delete or remove those files?
<AK> Since the governance of the customer owned storage is with them, we cannot be prescriptive. Nonetheless all files have a timestamp, admins can correlate the timestamp with alert (related to DSR). Going forward when we have in-product evidence preview. It will be smooth for them to track the evidence and respond to DSRs like this.

One or multiple storage accounts? create one for each geopolicical region that this feature will be enabled for

COPIED OVER FROM SOURCE DOCS

on Windows endpoint. The original file is uploaded (asynchronously) to a
customer defined Azure blob storage

2. Prerequisites
Please refer to Endpoint DLP SKU/subscriptions licensing to confirm you are eligible for endpoint DLP. You do not
need any additional licenses over what is needed for endpoint DLP. Refer to Permissions required for endpoint
DLP administration to allocate the right roles for your endpoint DLP administrators.
The endpoint devices need to meet the following criteria to be eligible for this:
• Minimum Windows version: Windows Insider (OS build: 25287 or above) (Instructions here)
Kindly note that as part of the Private Preview, this feature is supported only on devices that are running
Windows 11.
• Dev Channel enabled in your insider settings.
You will need to have an active Azure storage subscription to create an Azure blob storage.
Download the following build and update the endpoint UpdatePlatform.exe

## Before you begin

<!--If you're new to Microsoft Purview DLP, here's a list of the core articles you'll need as you implement DLP:

1. [Administrative units (preview)](microsoft-365-compliance-center-permissions.md#administrative-units-preview)
1. [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) - the article you're reading now introduces you to the data loss prevention discipline and Microsoft's implementation of DLP
1. [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp) - by working through this article you will:
    1. [Identify stakeholders](dlp-overview-plan-for-dlp.md#identify-stakeholders)
    1. [Describe the categories of sensitive information to protect](dlp-overview-plan-for-dlp.md#describe-the-categories-of-sensitive-information-to-protect)
    1. [Set goals and strategy](dlp-overview-plan-for-dlp.md#set-goals-and-strategy)
1. [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference) - this article introduces all the components of a DLP policy and how each one influences the behavior of a policy
1. [Design a DLP policy](dlp-policy-design.md) - this article walks you through creating a policy intent statement and mapping it to a specific policy configuration. 
1. [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) - This article presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options.
-->

## Licensing and Subscriptions

See the [licensing requirements for Information Protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection) for details on the subscriptions that support DLP.

To learn more about Microsoft Purview DLP, see:

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Learn about the default data loss prevention policy in Microsoft Teams (preview)](dlp-teams-default-policy.md)
- [Learn about data loss prevention on-premises scanner](dlp-on-premises-scanner-learn.md)
- [Learn about the Microsoft Compliance Extension](dlp-chrome-learn-about.md)
- [Learn about the data loss prevention Alerts dashboard](dlp-alerts-dashboard-learn.md)

To learn how to use data loss prevention to comply with data privacy regulations, see [Deploy information protection for data privacy regulations with Microsoft Purview](../solutions/information-protection-deploy.md)  (aka.ms/m365dataprivacy).
