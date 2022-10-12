---
title: "Limits for Microsoft 365 retention policies and retention label policies"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date:
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- purview-compliance
- tier1
- SPO_Content
search.appverid:
- MOE150
- MET150
hideEdit: true
description: "Understand the maximum number of policies and items per policy for Microsoft 365 retention policies and retention label policies"
---

# Limits for retention policies and retention label policies

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

When you use [retention policies and retention label policies](retention.md#retention-policies-and-retention-labels) to automatically retain or delete data for your organization, there are some maximum numbers to be aware of.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Maximum number of retention labels per tenant

A maximum of 1,000 retention labels are supported per tenant.

## Maximum number of policies per tenant

A single tenant can have a maximum of 10,000 policies (any configuration). This maximum number includes the different policies for retention, and other policies for compliance such as policies for DLP, information barriers, eDiscovery holds, Litigation holds, In-Place Holds, and sensitivity labels. However, this maximum excludes:

- Auto-labeling policies for SharePoint and OneDrive, unless they are for cloud attachments.
- Published label policies for SharePoint and OneDrive that delete-only, rather than retain-only, or retain and then delete.
- Exchange retention policies from [messaging records management (MRM)](/exchange/security-and-compliance/messaging-records-management/messaging-records-management).

Within this 10,000 policies limit, there are also some limits on the maximum number of policies for retention per workload:

- Exchange (any configuration): 1,800
  - Per mailbox: 25 is the recommended maximum before performance might be impacted; 50 is the supported limit.
- SharePoint or OneDrive: (all sites automatically included): 13
- SharePoint or OneDrive (specific locations included or excluded): 2,600

> [!NOTE]
> These maximum numbers for Exchange and SharePoint are not exclusive to retention but are shared with other types of hold policies that include eDiscovery holds, Litigation holds, and In-Place Holds.

Although retention policies for Microsoft Teams and Yammer use mailboxes to store data for retention purposes, the maximum number of policies for Exchange Online exclude retention policies for Teams and Yammer.

## Maximums for adaptive policy scopes

There's no limit to the number of [adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention) that you can add to a policy for retention, but there are some maximum limits for the query that defines each adaptive scope:

- String length for attribute or property values: 200
- Number of attributes or properties without a group, or within a group: 10
- Number of groups: 10
- Number of characters in an advanced query: 10,000

Grouping attributes or properties within a group isn't supported. This means that the maximum number of properties or attributes supported within a single adaptive scope is 100.

## Maximum number of items per policy

> [!IMPORTANT]
> Applicable only if you use [static policy scopes rather than adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention).

If you use static scopes and the optional configuration to include or exclude specific users, specific Microsoft 365 groups, or specific sites, there are some limits per policy to be aware of.

Maximum numbers of items per policy for retention for static scopes:

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

However, multiple policies result in higher administrative overheads. Consider using adaptive scopes rather than creating and maintaining multiple policies with includes and excludes.

### Examples of using multiple policies to avoid exceeding maximum numbers

The following examples are for static scopes and provide some design solutions for when you can't specify just the location for a retention policy, and must take into account the maximum number of items documented in the previous section.

Exchange example:

- **Requirement**: In an organization that has over 40,000 user mailboxes, most users must have their email retained for seven years but a subset of identified users (425) must have their email retained for only five years.

- **Solution**: Create one retention policy for Exchange email with a retention period of 7 years and exclude the subset of users. Then create a second retention policy for Exchange email with a retention period of 5 years and include the subset of users.

    In both cases, the number included and excluded is below the maximum number of specified mailboxes for a single policy, and the subset of users must be explicitly excluded from the first policy because it has a [longer retention period](retention.md#the-principles-of-retention-or-what-takes-precedence) than the second policy. If the subset of users required a longer retention policy, you wouldn't need to exclude them from the first policy.

    With this solution, if anybody new joins the organization, their mailbox is automatically included in the first policy for 7 years and there is no impact to the maximum numbers supported. However, new users that require the 5-year retention period add to the include and exclude numbers, and this limit would be reached at 1,000.

SharePoint example:

- **Requirement**: An organization has several thousand SharePoint sites but only 2,000 sites require a retention period of 10 years, and 8,000 sites require a retention period of four years.

- **Solution**: Create 20 retention policies for SharePoint with a retention period of 10 years that includes 100 specific sites, and create 80 retention policies for SharePoint with a retention period of 4 years that includes 100 specific sites.

    Because you don't need to retain all SharePoint sites, you must create retention policies that specify the specific sites. Because a retention policy doesn't support more than 100 specified sites, you must create multiple policies for the two retention periods. These retention policies  have the maximum number of included sites, so the next new site that needs retaining would require a new retention policy, irrespective of the retention period.

## Maximum numbers for disposition

For the [disposition of content](disposition.md), there are some limits to be aware of:

- Maximum numbers per tenant:
  - 16,000,000 items in either of the following disposition review states: pending disposition or approved disposition
  - 16,000,000 items marked as records automatically disposed (no disposition review)

- Maximum numbers for each retention label:
  - 1,000,000 items pending disposition per stage for each retention label
  - Proof of disposition for up to seven years after the item was disposed, with a limit of 1,000,000 items per retention label for that period.

    If you need proof of disposition higher than this limit of 1,000,000 for items that are marked as records, contact [Microsoft Support](../admin/get-help-support.md).

- Maximum number of disposition reviewers:
    - 10 reviewers per disposition stage in any combination of individual users and mail-enabled security groups
    - 200 reviewers per tenant in any combination of individual users and mail-enabled security groups. Because of this limit, we recommend using mail-enabled security groups whenever possible for larger organizations.

