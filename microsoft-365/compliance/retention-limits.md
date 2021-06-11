---
title: "Limits for retention policies and retention label policies"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
hideEdit: true
description: "Understand the maximum number of policies and items per policy for retention policies and retention label policies"
---

# Limits for retention policies and retention label policies

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

When you use [retention policies and retention label policies](retention.md#retention-policies-and-retention-labels) to automatically retain or delete data for your organization, there are some maximum numbers to be aware of.

## Maximum number of policies per tenant

A single tenant can have a maximum of 10,000 policies (any configuration). This maximum number includes the different policies for retention, and other policies for compliance such as policies for DLP, information barriers, eDiscovery holds, and sensitivity labels.

Within this 10,000 policies limit, there are also some limits on the maximum number of policies for retention per workload:

- Exchange (any configuration): 1,800
- SharePoint or OneDrive: (all sites automatically included): 13
- SharePoint or OneDrive (specific locations included or excluded): 2,600

Although retention policies for Microsoft Teams and Yammer use mailboxes to store data for retention purposes, the maximum number of policies for Exchange Online exclude retention policies for Teams and Yammer.

## Maximum number of items per policy

If you use the optional configuration to scope your retention settings to specific users, specific Microsoft 365 groups, or specific sites, there are some limits per policy to be aware of: 

Maximum numbers of items per policy for retention:

- Exchange mailboxes: 1,000
- Microsoft 365 Groups: 1,000
- Teams channel messages: 1,000
- Teams chats: 1,000
- Yammer community messages: 1,000
- Yammer user messages: 1,000
- SharePoint sites: 100
- OneDrive accounts: 100

Skype for Business has to be scoped to specific users and the maximum number supported per policy is 1,000.

Because these limitations are per policy, if you need to use specific inclusions or exclusions that result in going over these numbers, you can create additional policies that have the same retention settings. See the next section for some [example scenarios and solutions](#examples-of-using-multiple-policies-to-avoid-exceeding-maximum-numbers) that use multiple retention policies for this reason.

However, multiple policies result in higher administrative overheads, so always confirm whether you really need inclusions and exclusions. Remember that the default configuration that applies to the entire location doesn't have any limitations, and this configuration choice might be a better solution than creating and maintaining multiple policies.

> [!TIP]
> If do you need to create and maintain multiple policies for this scenario, consider using [PowerShell](retention.md#powershell-cmdlets-for-retention-policies-and-retention-labels) for more efficient configuration.

### Examples of using multiple policies to avoid exceeding maximum numbers

The following examples provide some design solutions for when you can't specify just the location for a retention policy, and must take into account the maximum number of items documented in the previous section.

Exchange example:

- **Requirement**: In an organization that has over 40,000 user mailboxes, most users must have their email retained for 7 years but a subset of identified users (425) must have their email retained for only 5 years.

- **Solution**: Create one retention policy for Exchange email with a retention period of 7 years and exclude the subset of users. Then create a second retention policy for Exchange email with a retention period of 5 years and include the subset of users. 
    
    In both cases, the number included and excluded is below the maximum number of specified mailboxes for a single policy, and the subset of users must be explicitly excluded from the first policy because it has a [longer retention period](retention.md#the-principles-of-retention-or-what-takes-precedence) than the second policy. If the subset of users required a longer retention policy, you wouldn't need to exclude them from the first policy.
     
    With this solution, if anybody new joins the organization, their mailbox is automatically included in the first policy for 7 years and there is no impact to the maximum numbers supported. However, new users that require the 5-year retention period add to the include and exclude numbers, and this limit would be reached at 1,000.

SharePoint example:

- **Requirement**: An organization has several thousand SharePoint sites but only 2,000 sites require a retention period of 10 years, and 8,000 sites require a retention period of 4 years.

- **Solution**: Create 20 retention policies for SharePoint with a retention period of 10 years that includes 100 specific sites, and create 80 retention policies for SharePoint with a retention period of 4 years that includes 100 specific sites.
    
    Because you don't need to retain all SharePoint sites, you must create retention policies that specify the specific sites. Because a retention policy doesn't support more than 100 specified sites, you must create multiple policies for the two retention periods. These retention policies  have the maximum number of included sites, so the next new site that needs retaining would require a new retention policy, irrespective of the retention period.

## Maximum number of items for disposition

For the [disposition of content](disposition.md), there are some limits to be aware of:

- 1,000,000 items pending disposition per stage for each retention label

- Proof of disposition for up to seven years after the item was disposed, with a limit of 1,000,000 items per retention label for that period. 
    
    If you need proof of disposition higher than this limit of 1,000,000 for items that are marked as records, contact [Microsoft Support](../business-video/get-help-support.md).