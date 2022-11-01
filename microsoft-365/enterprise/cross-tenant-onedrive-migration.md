---
title: Cross-tenant OneDrive migration
ms.author: jhendr
author: JoanneHendrickson
manager: serdars
recommendations: true
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Cross-tenant OneDrive migration"
---

# Cross-tenant OneDrive migration

>[!Note]
> Information in this article refers to **Cross-tenant OneDrive migration**. [Learn about about the cross-tenant Mailbox migration here](/microsoft-365/enterprise/cross-tenant-mailbox-migration)

During mergers or divestitures, you commonly need the ability to move your user OneDrive accounts into a new Microsoft 365 tenant. With Cross-tenant OneDrive migration, tenant administrators can use familiar tools like *SharePoint Online PowerShell* to transition users into their new organization.

SharePoint administrators of two separate tenants can use the *Set-SPOCrossTenantRelationship* cmdlet to establish an organization relationship, and the *Start-SPOCrossTenantUserContentMove* command to begin Cross-tenant OneDrive moves.

Up to 4,000 OneDrive accounts can be scheduled for migration in advance at a given time. Once scheduled, migrations occur without the user's data ever leaving the Microsoft 365 cloud and with minimal disruption, requiring only a few minutes where a user's OneDrive will be read-only. When migrations are complete, a redirect is placed in the location of the user's original OneDrive, so any links to files and folders can continue working in the new location. 

>[!Important]
>- Each user having their OneDrive migrated cross-tenant must be licensed for Cross-tenant User Data Migration.
>- Cross-tenant OneDrive migration cannot be used for customers using Service Encryption with Microsoft Purview Customer Key. [Learn about Service encryption with Microsoft Purview Customer Key - Microsoft Purview](/microsoft-365/compliance/customer-key-overview?view=o365-worldwide)