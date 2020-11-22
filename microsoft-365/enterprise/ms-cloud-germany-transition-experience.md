---
title: "Customer experience during the migration to Office 365 services in the new German datacenter regions"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/01/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
ms.assetid: 706d5449-45e5-4b0c-a012-ab60501899ad
description: "Summary: Understand the experience of moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Customer experience during the migration to Office 365 services in the new German datacenter regions

Tenant migrations are designed to have minimal effect on administrators and users. However, there are considerations for each workload. Please review the following sections to have a better understanding of the migration experience for the workloads.

Here are the key differences between Microsoft Cloud Deutschland and Office 365 services in the new German datacenter regions.

| Category | Microsoft Cloud Deutschland (Microsoft Cloud Deutschland) | Office 365 services in the new German datacenter regions |
|:-------|:-----|:-------|
| Microsoft 365 services available for subscription with just one Office 365 tenant | 15 services | 29 services <br><br> For more information, see [What is the service availability between the different Office 365 cloud service offerings?](ms-cloud-germany-transition.md#serv-avail)) |
| New features | No new features are available. | New features will be available consistent with Office 365 services. |
| Data trustee | Yes | No |
| Cross-tenant collaboration with global Office 365 tenants | No | Yes |
| Customer data residency | Customer data will be stored solely within German data centers. | Microsoft will store the following Customer Data at rest exclusively within Germany: <ul><li> Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments) </li><li> SharePoint Online site content and the files stored within that site, and files uploaded to OneDrive for Business </li></ul> |
| Applicable terms | [Online Services Terms](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46) with this [supplement](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=64) | [Online Services Terms](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46) |
||||

## Azure Active Directory

What isn't changing:

- Tenant initial domain (such as contoso.onmicrosoft.de) with tenant ID (GUID) and custom domains will persist after the migration. 

- Authentication requests for resources that are migrated to Office 365 services are granted by the Office 365 services Azure authentication service (login.microsoftonline.com). During the migration, resources that remain still in Office 365 Germany are authenticated by the existing Germany Azure service (login.microsoftonline.de).

Considerations to note:

- For managed domain accounts, once the initial Azure Active Directory (Azure AD) tenant copy completes (the first step of Azure AD migration to the Office 365 services Azure AD service), password changes, Self-service password reset (SSPR) changes, and password resets by administrators must be done from the Office 365 service portals. Requests to update passwords from the Germany service won't succeed at this point, because the Azure AD tenant has been migrated to Office 365 services. Resets of federated domain passwords aren't affected, because these are completed in the on-premises directory.

- Azure sign-ins are presented in the portal where the user attempts access. Audit Logs are available from only the Office 365 services endpoint after transition. Before to the completion of migration, you should save Sign-in and Audit logs from the Microsoft Cloud Deutschland portal.

- Password resets, password changes, password reset by an admin for managed organizations (not using Active Directory Federation Services) must be performed via the Office 365 services portal. Attempts by users who access Microsoft Cloud Deutschland portals to reset passwords will fail.

- GDPR Data Subject Requests (DSRs) are executed from the Office 365 services Azure admin portal for future requests. Any legacy or non-customer diagnostic data that is information resident in Microsoft Cloud Deutschland is deleted at or before 30 days.

## Subscriptions & Licenses

- Office 365 and Dynamics subscriptions from Microsoft Cloud Deutschland are transitioned to the German region with the Azure AD relocation. The organization is then updated to reflect new Office 365 Services subscriptions. During the brief subscription transfer process, changes to subscriptions are blocked.

- As the tenant is transitioned to Office 365 services, its Germany-specific subscriptions and licenses are standardized with new Office 365 services offerings. Corresponding Office 365 services subscriptions are purchased for the transferred Germany subscriptions. Users who have Germany licenses will be assigned Office 365 services licenses. Upon completion, legacy Germany subscriptions are canceled and removed from the current Office 365 services tenant.

- After migration of the individual workloads, additional functionality is made available through the Office 365 services (such as Microsoft Planner and Microsoft Flow) because of the new Office 365 services subscriptions. If appropriate for your organization, the tenant or licensing admin can disable new service plans as you plan for change management to introduce the new services. For guidance on how to disable service plans that are assigned to users' licenses, see [Disable access to Microsoft 365 services while assigning user licenses](https://docs.microsoft.com/office365/enterprise/powershell/disable-access-to-services-while-assigning-user-licenses).

## Exchange Online

- Exchange resource URLs transition from the legacy Germany endpoint outlook.office.de to the Office 365 services endpoint outlook.office365.com after the migration. Your users may access their migrated mailbox by using the legacy URL until the migration completes. Customers should transition users to the new URL as soon as possible after Exchange migration begins to avoid affecting retirement of the Germany environment. The Office 365 services URLs for Outlook services become available only after Exchange migration begins.

- Mailboxes are migrated as a backend process. Users in your organization may be in either Microsoft Cloud Deutschland or the German region during the transition and are part of the same Exchange organization (global address list [GAL]).

- Users of Outlook Web App (OWA) who access the service by using a URL where their mailbox does not reside will see an extra authentication prompt. For example, if the user's mailbox is in the Office 365 services and the user’s OWA connection uses the legacy endpoint outlook.office.de, the user will first authenticate to login.microsoftonline.de, and then to login.microsoftonline.com. When migration is complete, the user can access the new URL (https://outlook.office365.com), and they will see only the single, expected sign-in request. 

## Office Services

Office Online services are accessible via office.de before and during the transition. After users' mailboxes are transitioned to the Office 365 services, users should begin to use Office 365 services URLs. As subsequent workloads migrate to Office 365 services, their interface from the office.com portal will begin to work.

## Exchange Online Protection

- Back-end Exchange Online Protection (EOP) features are copied to new Germany region.
- Office 365 Security and Compliance Center users need to transition to using global URLs https://protection.office.com as part of the migration.

## Skype for Business Online

Existing Skype for Business Online customers will transition to Microsoft Teams. For more information, see [https://aka.ms/SkypeToTeams-Home](https://aka.ms/SkypeToTeams-Home).

## Office 365 Video

Office 365 Video is being retired on March 1, 2021, and Office 365 Video won't be supported after migration of SharePoint Online to the new German datacenter regions is completed. Content from Office 365 Video will be migrated as part of migrating SharePoint Online. However, videos in Office 365 Video won't play back in the Office 365 Video UI after the SharePoint migration. Learn more about the migration timeline on [Office 365 Video transition to Microsoft Stream (classic) overview](https://docs.microsoft.com/stream/migrate-from-office-365#microsoft-cloud-deutschland-timeline).

## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
