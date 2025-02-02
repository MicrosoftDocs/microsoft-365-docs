---
title: Frequently asked questions about Microsoft 365 Archive
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/04/2024
ms.topic: conceptual
ms.service: microsoft-365-archive
ms.custom: archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Read frequently asked questions about Microsoft 365 Archive.
---

# Frequently asked questions about Microsoft 365 Archive

#### What is the difference between Microsoft 365 Archive and SharePoint Advanced Management?

- Microsoft 365 Archive gives the ability to archive a site in SharePoint.

- Storage for archived sites is metered and charged at a $0.05/GB/month rate vs. the normal standard storage rate of $0.20/GB/month. For more information, see [Pricing model for Microsoft 365 Archive](archive-pricing.md).

- The site lifecycle management feature in SharePoint Advanced Management is a separate licensed offering that helps automate and orchestrate the movement of sites into the archive tier via admin-defined policies to remove manual operations. In other words, the site lifecycle management in SharePoint Advanced Management operates with Microsoft 365 Archive.

#### How does Azure Blob compare to Microsoft 365 Archive?

Microsoft 365 Archive allows you to keep your data in place in SharePoint, providing the following benefits not possible when the data is migrated elsewhere:

- Archiving happens quickly, usually within minutes, regardless of the amount or size of content being archived.

- No need to manage data in a separate security and compliance domain, therefore allowing your security and compliance tooling to operate seamlessly—including eDiscovery, retention policies, and more.

- Admin search indexes remain intact.

- Sites are archived and rehydrated without loss of metadata, security versioning, and more.

#### Can content in legal hold be archived?

Yes, nearly all Microsoft Purview features continue to operate as normal.

#### Is content in archived sites searchable?

Admin-level search and Purview-based search operate like normal. End-user search isn't currently supported, but end-user search is on our roadmap.

#### Can I archive at the site-level and file-level?

Currently, only full-site archiving and reactivating is possible in this offering. File-level granular archiving support will be released in 2025.

#### What’s the availability timing of Microsoft 365 Archive for Microsoft Government Community Cloud (GCC) customers?

Standard GCC rollout times apply.

#### If I purchase additional standard storage packs, will I get reimbursed for the cost difference?

No, if you purchase additional storage packs you won't get reimbursed for any unused additional standard storage.

#### If I am under my tenant storage quota for Archive and Standard storage combined, will I be charged?

You won't be charged for monthly storage costs, but you'll still pay applicable reactivation fees.

#### Does archived content get returned in Copilot for Microsoft 365 queries?

No, archived content isn't used by Copilot for Microsoft 365. 

#### Can you delete an archived site, should you no longer need it?  

Yes, you can directly delete an archived site without the need to reactivate. 

#### Can archived content in legal hold be deleted?

Content under legal hold can't be deleted. If the legal hold is removed or the retention policy has expired, the content can be deleted.
