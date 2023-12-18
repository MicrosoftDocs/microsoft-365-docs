---
title: Frequently asked questions about Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 12/15/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Read frequently asked questions about Microsoft 365 Archive.
---

# Frequently asked questions about Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change. The feature is currently rolling out and might not yet be fully available to all organizations. Before you begin, read the [Microsoft 365 Archive preview terms and conditions](archive-preview-terms.md).

#### What is the difference between Microsoft 365 Archive and SharePoint Advanced Management?

- Microsoft 365 Archive gives the ability to archive a site in SharePoint.

- Storage for archived sites is metered and charged at a $0.05/GB/month rate vs. the normal standard storage rate of $0.20/GB/month. For more information, see [Pricing model for Microsoft 365 Archive (Preview)](archive-pricing.md).

- The site lifecycle management feature in SharePoint Advanced Management is a separate licensed offering that helps automate and orchestrate the movement of sites into the archive tier via admin-defined policies to remove manual operations. In other words, the site lifecycle management in SharePoint Advanced Management operates in conjunction with Microsoft 365 Archive.

#### How does Azure Blob compare to Microsoft 365 Archive?

Microsoft 365 Archive allows you to keep your data in place in SharePoint, providing the following benefits not possible when the data is migrated elsewhere:

- Archiving happens very quickly, usually withing minutes, regardless of the amount or size of content being archived.

- No need to manage data in a separate security and compliance domain, thereby allowing your security and compliance tooling to operate seamlessly—including eDiscovery, retention policies, and more.

- Admin search indexes remain intact.

- Sites are archived and rehydrated without loss of metadata, security versioning, and more.

#### Can content in legal hold be archived?

Yes, nearly all Microsoft Purview features will continue to operate as normal.

#### Is content in archived sites searchable?

Admin-level search and Purview-based search will operate like normal. End-user search is not currently supported, but end-user search is on our roadmap.

#### Can I archive at the site-level and file-level?

Currently, only full-site archiving and reactivating is possible in this offering. File-level granular archiving support will be released later in 2024.

#### What’s the availability timing of Microsoft 365 Archive for Microsoft Government Community Cloud (GCC) customers?

Standard GCC rollout times apply.
