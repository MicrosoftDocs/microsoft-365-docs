---
title: "Learn about collecting files that match DLP policies from devices (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
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

When you're investigating a Microsoft Purview Data Loss Prevention (DLP) incident or troubleshooting a DLP policy, it can be helpful to have a complete copy of the item that matched the policy to refer to. DLP can copy the item that matches a DLP policy from onboarded Windows devices to an Azure storage account. DLP incident investigators and administrators that have been granted the appropriate permissions on the Azure storage blob can then access the files.

To get started configuring and using the feature, see [Get started with collecting files that match data loss prevention policies from devices (preview)](dlp-copy-matched-items-get-started.md).  

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

If you're new to Microsoft Purview DLP, here's a list of the core articles you'll need as you implement DLP:

1. [Administrative units (preview)](microsoft-365-compliance-center-permissions.md#administrative-units-preview)
1. [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) - This article introduces you to the data loss prevention discipline and Microsoft's implementation of DLP.
1. [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp) - by working through this article you will:
    1. [Identify stakeholders](dlp-overview-plan-for-dlp.md#identify-stakeholders)
    1. [Describe the categories of sensitive information to protect](dlp-overview-plan-for-dlp.md#describe-the-categories-of-sensitive-information-to-protect)
    1. [Set goals and strategy](dlp-overview-plan-for-dlp.md#set-goals-and-strategy)
1. [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference) - This article introduces all the components of a DLP policy and how each one influences the behavior of a policy.
1. [Design a DLP policy](dlp-policy-design.md) - This article walks you through creating a policy intent statement and mapping it to a specific policy configuration. 
1. [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) - This article presents some common policy intent scenarios that you'll map to configuration options, then it walks you through configuring those options.

## Where evidence collection for file activities on devices fits in Purview

Endpoint DLP is part of the [larger DLP offering](dlp-learn-about-dlp.md) and part of the larger range of services offered in [Microsoft Purview](/microsoft-365/compliance.md). You should understand how evidence collection for file activities on devices fits into the larger set of service offerings.

### Evidence collection for file activities on devices and eDiscovery

This feature makes copies of items that match DLP policies on onboarded Windows devices and places those copies in an Azure storage account. These copies aren't held in a changeless state and aren't evidence in the legal sense of the term. If you need to find and hold items for legal purposes, you should use the [Microsoft Purview eDiscovery solutions](ediscovery.md). Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases.

### Evidence collection for file activities on devices and contextual summary

 When an item and the activity that a user takes on that item match the conditions defined in a DLP policy, a **DLPRuleMatch** event shows up in [Activity explorer](data-classification-activity-explorer.md). This is true for every location that DLP supports. The **DLPRuleMatch** event contains a limited amount of the text that surrounds the matched content. This limited amount of text is called [contextual summary](dlp-learn-about-dlp.md#contextual-summary).

It's important to understand the difference between evidence collection for file activities on devices and a contextual summary. Evidence collection for file activities on devices is only available for onboarded Windows devices. It saves a copy of the entire item that matched a policy to the Azure storage account. A contextual summary is captured for every DLP policy rule match and only contains a limited amount of the text that surrounds the target text that triggered the match.

## Covered user activities
 
You can configure evidence collection for file activities on devices to save a copy of a matched item to the Azure storage account when a user attempts to do one of these activities on a matched item:

 - Copy to a removable USB
 - Copy to Network share
 - Print
 - Copy or move using unallowed Bluetooth app
 - Copy or move through RDP
 
The detection of these activities is configured in the DLP policy. For more information on how to create a DLP policy, see, [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) and [Using Endpoint data loss prevention](endpoint-dlp-using.md).

## Covered actions

When you enable evidence collection for file activities on devices in Endpoint DLP settings and configure a DLP policy to use this feature, it saves a copy of a matched item for these actions:
- Audit only
- Block with override
<!--Block--> 

These actions are configured in the DLP policy. For more information on how to create a DLP policy, see [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) and [Using Endpoint data loss prevention](endpoint-dlp-using.md).
 
## Design considerations

### Regions for your Azure Storage accounts

To comply with regulatory requirements, make sure that the Azure storage accounts that you use are in the same geopolitical or regulatory boundaries as the devices that they're being copied from. Also, be aware of the geopolitical location of the DLP investigators who will be accessing the sensitive items once they're saved. Consider using [Administrative units (preview)](microsoft-365-compliance-center-permissions.md#administrative-units-preview) to scope the administration of the users and devices that the DLP policy will be scoped to. To learn how to use data loss prevention to comply with data privacy regulations, see [Deploy information protection for data privacy regulations with Microsoft Purview](https://go.microsoft.com/fwlink/?linkid=2239593&clcid=0x409). Evidence collection for file activities on devices supports up to 10 Azure storage accounts.

To learn how to use data loss prevention to comply with data privacy regulations, see [Deploy information protection for data privacy regulations with Microsoft Purview](https://go.microsoft.com/fwlink/?linkid=2239593&clcid=0x409).

### Local storage and bandwidth

By default, copies of matched items are saved asynchronously to the configured Azure storage account over the existing network connection. If the device doesn't have connectivity, matched items are save locally, up to the 500-MB limit. You can save items locally up to 60 days.

While the device has connectivity to the Azure storage account URL, there's no limit on bandwidth usage. The bandwidth that evidence collection for file activities on devices uses doesn't impact the default or configured bandwidth limits for [Advanced classification scanning and protection](dlp-configure-endpoint-settings.md#advanced-classification-scanning-and-protection).

### Azure storage accounts

Customers are responsible for creating and managing their own Azure storage accounts. If you're new to Azure storage, see:
- [What is Azure Blob storage](/azure/storage/blobs/storage-blobs-overview.md)
- [Introduction to Azure Storage](/azure/storage/common/storage-introduction.md)
- [Create a storage account](/azure/storage/common/storage-account-create)

Items that match a policy are copied from the users' device to the Azure storage account blob in the security context of the logged in user. So, all users who are in-scope for the policy must have read and write permission to the blob storage. For more information, see [Get started with collecting files that match data loss prevention policies from devices (preview)](dlp-copy-matched-items-get-started.md)

Similarly, all administrators who are reviewing the saved items must have read permission to the Azure storage account blob. For more information, see [Get started with collecting files that match data loss prevention policies from devices (preview)](dlp-copy-matched-items-get-started.md).

## Next step

Your next step is to configure evidence collection for file activities on devices

- [Get started with collecting files that match data loss prevention policies from devices (preview)](dlp-copy-matched-items-get-started.md#get-started-with-collecting-files-that-match-data-loss-prevention-policies-from-devices-preview)
