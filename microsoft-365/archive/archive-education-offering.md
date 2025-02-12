---
title: Education offering for Microsoft 365 Archive
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sharonyam
ms.date: 11/01/2024
ms.topic: conceptual
ms.service: microsoft-365-archive
ms.custom: archive
search.appverid:
ms.collection:
    - essentials-get-started
ms.localizationpriority:  medium
description: Learn about Microsoft 365 Archive for Education, including tenant eligibility, pricing model, and billing scenarios. 
---

# Education offering for Microsoft 365 Archive

This article provides an overview of Microsoft 365 Archive for Education, including tenant eligibility, pricing model, and billing scenarios. 

## Pooled storage eligibility 

Education customers that are subject to the pooled storage limit are eligible for the Microsoft 365 Archive for Education offering. If your tenant has assigned most (greater than 50%) EDU licenses compared to non-EDU licenses, or if your tenant has purchased more EDU licenses than non-EDU licenses, then the tenant is managed as an EDU tenant and is subject to Education Pooled Storage. For more information on pooled storage, see [Education Pooled Storage limits](/office365/servicedescriptions/office-365-platform-service-description/office-365-education#education-pooled-storage-limits).

> [!NOTE]
> Any changes to the license assignment or purchases that change the pooled storage eligibility can take 24-48 hours to reflect. 

## Pooled storage status

When you [turn on Microsoft 365 Archive](archive-setup.md#set-up-microsoft-365-archive-1) for your tenant, and if your tenant meets the pooled storage eligibility, you'll see a status saying **This tenant is an education tenant** under the 'learn more about Microsoft 365 Archive' link. If at any time your tenant status changes (that is, moves to less than 50% education licenses) and is no longer subject to pooled storage, the status message will no longer appear. It's important to note that you'll be eligible for education pricing for Microsoft 365 Archive only when you meet the eligibility for education tenant status. 

:::image type="content" source="../media/archive/m365-archive-1.png" alt-text="Screenshot of Microsoft 365 archive." :::

For customers that are subject to the pooled storage policy, they'll have access to the storage report in the Microsoft 365 admin center under **Reports** > **[Storage](https://admin.microsoft.com/Adminportal/Home#/storagemanagement)**. The user must be logged in as a Global Admin or SharePoint Admin to access the storage report. 

If the storage report isn't available, then it’s possible that your tenant isn't subject to the pooled storage policy. To determine if your tenant is subject to the pooled storage policy, review whether most (greater than 50%) EDU licenses are assigned compared to non-EDU licenses, or if your tenant has purchased more EDU licenses than non-EDU licenses. 

:::image type="content" source="../media/archive/storage.png" alt-text="Screenshot of Example view of storage report." lightbox="../media/archive/storage.png":::

> [!NOTE]
> If your tenant is no longer eligible for the Microsoft 365 Archive for Education offering, your tenant's archive content will be charged according to the Microsoft 365 Archive standard rate.

## Pricing model

Microsoft 365 Archive charges you for storage and reactivation.

- **Storage consumption** is charged at a per-GB monthly rate. For SharePoint sites, this meter is charged only when archived storage in SharePoint plus active pooled storage exceeds the included or licensed allocated pooled storage capacity limit of the tenant. In other words, there's no additional storage cost for archived sites if the tenant hasn't consumed its already licensed storage quota. For unlicensed OneDrive accounts, this meter is charged for every OneDrive account that is archived. For more information on unlicensed OneDrive accounts, see [Manage unlicensed OneDrive user accounts.](/sharepoint/unlicensed-onedrive-accounts)  
- **Site reactivation** is charged at a per-GB rate. The reactivation fee is charged regardless of whether a tenant is over or below its pooled storage capacity limit and only if reactivation is executed more than seven days after the site was most recently put into an archive state. This seven-day grace period provides you with the opportunity to reverse an accidental archival without reaction costs.

Monthly archive usage is calculated as the sum of the usage of all currently archived sites. Each site’s usage can be seen on the site itself or from the Active sites page in the SharePoint admin center. The size of an archived site, and therefore the storage for which it’s billed, changes only if the content in the site changes. For example, content naturally expiring in the recycle bin or a retention policy deleting content within the site directly from archive to the recycle bin.

For more information on the pricing for Microsoft 365 Archive, see [Pay-as-you-go services and pricing for Microsoft Syntex.](../syntex/syntex-pay-as-you-go-services.md).

## Billing scenarios

Your charges for Microsoft 365 Archive depend on your tenant’s pooled storage quota. The following scenarios can help you compare charges based on excess storage:


|Scenario  |Description  |Additional costs  |
|---------|---------|---------|
|**A**   | Tenant hasn't archived any data and exceeds the standard storage quota by 20 TB.        | Purchase standard storage packs at $300/10TB/month.         |
|B    |  Tenant has archived 20 TB of data that exceeds their standard storage quota.       | Pay at $0.02/GB/month for 20 TB of archive storage.        |
|C     |Tenant has archived more storage that exceeds their standard storage quota.         |Pay only for the 20 TB of archived data that exceeds the standard storage quota.         |
|D     | Tenant has archived some, but not all, of the data that exceeds their standard storage quota.        | Purchase one additional standard storage pack for 10 TB and pay $0.02/GB/month for 10 TB of archived data.        |
|E     |Tenant’s total data (standard + archive) is less than their standard storage quota.         |  No additional cost.       |

:::image type="content" source="../media/archive/billing-scenarios.png" alt-text="Screenshot of billing scenarios.":::

:::image type="content" source="../media/archive/billing-scenarios-table.png" alt-text="Screenshot of billing scenarios table.":::