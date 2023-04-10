---
title: "Learn about collecting files that match DLP policies from devices (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/10/2023
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

# Learn about collecting files that match data loss prevention policies from devices (preview)

When you are either investigating a Microsoft Purview data loss prevention (DLP) incident or troublshooting a DLP policy, it can be helpful to have a complete copy of the item that matched the policy to refer to. DLP can copy the item that matches a DLP policy from onboarded Windows devices to an Azure storage account.   

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Copy matched items and eDiscovery

This feature will only make copies of items that match DLP policies on onboarded Windows devices and place those copies in an Azure storage account. These copies are not held in a changless state and aren't evidence in the legal sense of the term. If you need to find and hold items for legal purposes, you should use the [Microsoft Purview eDiscovery solutions](ediscovery.md). Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases.
## Copy matched items and contextual summary

Endpoint DLP is part of the larger DLP solution. When you configure DLP to copy matched items to Azure storage, you can also configure DLP to create a contextual summary of the item that matched the policy. The contextual summary is a short excerpt of the item that matched the policy. The contextual summary is stored in the Azure storage account along with the item that matched the policy. The contextual summary is not a changless copy of the item that matched the policy. The contextual summary is not evidence in the legal sense of the term. If you need to find and hold items for legal purposes, you should use the [Microsoft Purview eDiscovery solutions](ediscovery.md). Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases.

[Contextual summary](dlp-learn-about-dlp.md#contextual-summary)

This is different from short evidence  TELL HOW

Works for block, block with override and audit 

Content IS NOT stored in a changless state.  This is NOT eDiscovery and eDiscovery standards are not available or enforced in this feature.

500MB limit local storage when the device is offline.

No limit on bandwidth usage.

Doesn't impact the data used limit that's configured for endpoints for advanced classification

before you begin

understand Azure storage accounts

Blob storage is probably the most economical and best fit

Customer must create and administer their own Azure storage.

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
