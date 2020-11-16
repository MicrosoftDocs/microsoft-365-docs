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

Tenant migrations are designed to have minimal impact to administrators and users. However, there are considerations for each workload. Please review the following sections to have a better understanding of the migration experience for the workloads.

Here are the key differences between Microsoft Cloud Deutschland and Office 365 services in the new German datacenter regions.

| Category | Microsoft Cloud Deutschland (Microsoft Cloud Deutschland) | Office 365 services in the new German datacenter regions |
|:-------|:-----|:-------|
| Microsoft 365 services available for subscription with just one Office 365 tenant | 15 services | 29 services <br><br> For more information, see [What is the service availability between the different Office 365 cloud service offerings?](ms-cloud-germany-transition.md#serv-avail)) |
| New features | No new features are available. | New features will be available consistent with Office 365 services. |
| Data trustee | Yes | No |
| Cross-tenant collaboration with global Office 365 tenants | No | Yes |
| Customer data residency | Customer data will be stored solely within German data denters. | Microsoft will store the following Customer Data at rest exclusively within Germany: <ul><li> Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments) </li><li> SharePoint Online site content and the files stored within that site, and files uploaded to OneDrive for Business </li></ul> |
| Applicable terms | [Online Services Terms](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46) with this [supplement](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=64) | [Online Services Terms](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46) |
||||

## Azure Active Directory

What is not changing:

- Tenant initial domain (such as contoso.onmicrosoft.de) with tenant ID (GUID) and custom domains will persist after the migration. 
- Authentication requests for resources that are migrated to Office 365 services are granted by the Office 365 services Azure authentication service (login.microsoftonline.com). During the migration, resources that remain still in Office 365 Germany are authenticated by the existing Germany Azure service (login.microsoftonline.de)

Considerations to note:

- For managed domain accounts, once the initial Azure Active Directory (Azure AD) tenant copy completes (the first step of Azure AD migration to the Office 365 services Azure AD service), password changes, Self-service password reset (SSPR) changes, and password resets by administrators must be done from the Office 365 service portals. Requests to update passwords from the Germany service will not succeed at this point since the Azure AD tenant has been migrated to Office 365 services. Federated domain password resets are not affected as these are completed in the on-premises directory. 
- Azure Sign-Ins are presented in the portal where the user attempts access. Audit Logs are available from only the Office 365 services endpoint after transition. You should save Sign-in and Audit logs from the Microsoft Cloud Deutschland portal prior to the completion of migration.
- Password resets, password changes, password reset by admin for managed (non AD FS) organizations must be performed via the Office 365 services portal. Attempts by users who access Microsoft Cloud Deutschland portals and to perform password reset will fail.
- GDPR Data Subject Requests (DSRs) are executed from the Office 365 services Azure admin portal for future requests. Any legacy or non-customer diagnostic data information resident Microsoft Cloud Deutschland is deleted at or before 30 days.

## Subscriptions & Licenses

- Office 365 and Dynamics subscriptions from Microsoft Cloud Deutschland are transitioned to the German region with the Azure AD relocation. The organization is then updated to reflect new Office 365 Services subscriptions. During the brief subscription transfer process, changes to subscriptions will be blocked.
- As the tenant is transitioned to Office 365 services, its Germany-specific subscriptions and licenses are standardized with new Office 365 services offerings. Corresponding Office 365 services subscriptions are purchased for the transferred Germany subscriptions. Users with Germany licenses assigned will be assigned Office 365 services licenses. Legacy Germany subscriptions are cancelled and removed from the current Office 365 services tenant upon completion.
- Additional functionality is made available through the Office 365 services (such as Microsoft Planner, and Microsoft Flow) as a result of the new Office 365 services subscriptions and after migration of the individual workloads. If appropriate for your organization, the tenant or licensing admin can disable new service plans as you plan for change management to introduce the new services. Review this [guidance](https://docs.microsoft.com/office365/enterprise/powershell/disable-access-to-services-while-assigning-user-licenses) on how to disable service plans assigned to users’ licenses.

## Exchange Online

- Exchange resource URLs transition from the legacy Germany endpoint outlook.office.de to the Office 365 services endpoint outlook.office365.com after the migration. Your users may access their migrated mailbox using the legacy URL until the migration completes. Customers should transition users to the new URL as soon as possible after Exchange migration begins to avoid impact on retirement of the Germany environment. The Office 365 services URLs for Outlook services become available only after Exchange migration begins.
- Mailboxes are migrated as a backend process, users in your organization may be in either Microsoft Cloud Deutschland or German region during the transition and are part of the same Exchange organization (global address list [GAL]).
- Users in Outlook Web Access (OWA) who access the service with a URL where their mailbox does not reside will see an extra authentication prompt. For example, If the user mailbox is in the Office 365 services and the user’s OWA connection uses the legacy endpoint outlook.office.de, the user will first authenticate to login.microsoftonline.de, then to login.microsoftonline.com. When the user transitions to the correct URL (https://outlook.office365.com), they will see only the one expected login request. 

## Office Services

Office Online services are accessible via office.de before and during the transition. After user mailboxes are transitioned to the Office 365 services, users should begin to use Office 365 services URLs. As subsequent workloads migrate to Office 365 Services their interface from the office.com portal will begin to work.

## Exchange Online Protection

- Back-end Exchange Online Protection features are copied to new Germany region.
SharePoint Online and OneDrive for Business
- SharePoint and OneDrive resource URLs will persist using <tenant>.sharepoint.de before and after the migration.

## Skype for Business Online

Existing Skype for Business Online customers will transition to Microsoft Teams. See [https://aka.ms/SkypeToTeams-Home](https://aka.ms/SkypeToTeams-Home) for more information.

## Office 365 Video

Office 365 Video is being retired on March 1, 2021 and Office 365 Video will not be supported after the SharePoint Online migration to the new German datacenter regions is completed. Content from Office 365 Video will be migrated as part of the SharePoint Online migration. However, Videos in Office 365 Video will not play back in the Office 365 Video UI after the SharePoint migration. Learn [more](https://docs.microsoft.com/stream/migrate-from-office-365#microsoft-cloud-deutschland-timeline) on the Office 365 Video transition to Microsoft Stream.

## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
