---
title: "Migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 09/30/2020
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
description: "Summary: Understand the migration from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region."
---

# Migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions

> [!NOTE]
> This article only applies to eligible Microsoft Cloud Deutschland customers.

In August 2018, Microsoft announced our intention to deliver the complete Microsoft cloud – Azure, Office 365, Dynamics 365, and Power Platform – from new cloud regions in Germany to better enable the digital transformation of our customers. In August 2019, we announced we are now in the process of opening of the new cloud regions in Germany. We have since announced the availability of Azure, Office 365, Dynamics 365, and Power Platform.

The new regions are designed to address the evolving needs of German customers with greater flexibly, the latest intelligent cloud services, and full connectivity to our Microsoft 365 services cloud network as well as customer data residency within Germany.

## How to migrate to the new German regions

Existing Microsoft Cloud Deutschland customers can now begin to migrate their Office 365, Dynamics 365 Customer Engagement, and Power Platform customers. The first step is to [opt-in to a Microsoft-led migration](https://aka.ms/office365germanymoveoptin) to our new German datacenter regions.

For organizations who opt-in to the Microsoft-driven approach, migrations are expected to begin in early 2021 and will be completed by October 29, 2021. As a result of the migration, core customer data and subscriptions are moved to the new German regions.

This article provides an overview of the Microsoft-driven approach for the migration, clarity on the experiences for both users and admins during and after migration, and actions that may be required for customers based on which workloads you utilize.

The following services will be migrated as part of the Microsoft-driven approach:

- Azure Active Directory (Azure AD)
- Exchange Online
- Exchange Online Protection
- SharePoint Online
- OneDrive for Business

- Skype for Business Online\*\*
- Office 365 Groups
- Dynamics 365 / Power Platform\*\*\*

\*\*During the migration from Microsoft Cloud Deutschland to the German datacenter regions, existing Skype for Business Online customers will transition to Microsoft Teams. See [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home) for more information.

\*\*\*Prerequisites and impact of migration for these services are described in the [Dynamics 365 Customer engagement](https://aka.ms/d365ceoptin) article.

Office 365 Video is being retired on March 1, 2021. If you choose to migrate your Office 365 tenant to the new German datacenter regions, Office 365 Video will not be supported after the SharePoint Online migration is completed. Click [here](https://docs.microsoft.com/stream/migrate-from-office-365#microsoft-cloud-deutschland-timeline) to learn more.

## How is the migration organized?

This figure represents the various components of Office 365 and Dynamics 365 in the migration to the new German datacenters.

![Components of Office 365 and Dynamics 365 in the migration to the new Germany datacenters](../media/ms-cloud-germany-migration-opt-in/migration-organization.png)

Migration is executed in phases that all start when you [opt-in for migration](https://aka.ms/office365germanymoveoptin). Most of the migration phases are executed as back-end service operations with minimal customer interaction required and are executed one phase after the other. The start for additional customer-led tasks and overall migration status will be communicated through the Message center of the Microsoft 365 admin center during the migration process. Example of tasks may include customer-managed DNS updates, reconfiguration of hybrid setup for Exchange hybrid customers, or Azure migration.

Migration does not immediately begin when opt-in occurs. Your organization is added to the list of tenants that are scheduled for later migration. You can begin the pre-work phases now as these are critical to ensure successful migration and usage upon completion.

One week prior to the start of the tenant migration, you will receive notice in the Message center service as a final warning that all prerequisites must be complete.

The migration will move of your Azure AD tenant from the sovereign Germany Azure AD service to the Office 365 services instance of Azure AD in the EU region.

The next phase is the migration of your tenant&#39;s subscriptions and user licenses from Germany-specific products.

Once all steps are completed including customer Azure migration, your tenant is finalized in the Office 365 services service and migration is marked complete. At this point, the final update to Message center is provided to you. The tenant is now not a fully global Office 365 organization.

You are notified of migration progress with Message center posts. The posts will occur at specific milestones and will provide guidance as to progress of a step as well as important information for customers to act on based on the process requirements. Message center notifications are provided at the following milestones:

- Start of migration (5 business days before Azure AD migration begins)
- Azure AD migration complete
- Subscription and license migration complete
- SharePoint migration complete
- Exchange migration complete
- Skype for Business complete
- Dynamics complete
- Power BI complete
- Final cutover of services is complete

## Moving to the new German regions

Existing Microsoft Cloud Germany (Microsoft Cloud Deutschland) customers can now begin to migrate their Office 365, Dynamics 365 Customer Engagement, and Power Platform customers. The first step is to [opt-in to a Microsoft-led migration](https://aka.ms/office365germanymoveoptin) to our new German datacenter regions. When you renew your subscription, you automatically opt-in for a Microsoft-assisted migration. Microsoft will notify customer tenant administrators with e-mail and in the Message center of the Microsoft 365 admin center when this has happened. However, if you prefer to start the process now, you can [opt-in](https://aka.ms/office365germanymoveoptin) directly in Microsoft 365 admin center today. Migrations are expected to begin in early 2021 and will be completed by October 29, 2021. 

As a result of the migration, core customer data and subscriptions are moved to the new German regions.

## How to prepare for migration to Office 365 services in the new German datacenter regions

The first step is to notify Microsoft so that we have your permission to migrate your subscription and data from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions. Please refer to the [opt-in process](https://aka.ms/office365germanymoveoptin) for instructions and note that:

- All migrating customers need to verify connectivity to the Office 365 Services [Office 365 URLs and IP addresses](urls-and-ip-address-ranges.md), which include the new German datacenter regions. Inaction may result in service and client failure.
- You should review the Office 365 platform service description to understand which features and services will become available to your organization following the migration to the German region.
- Trial subscriptions will not be migrated and will block migration of all paid subscriptions. You must cancel any trials or convert to paid subscriptions before migration begins.

## Where do I go from here?

Review the following Frequently Asked Questions section.

## Frequently Asked Questions

### Is migration required?

Microsoft offers Office 365 tenant migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions at no additional charge. While we do strongly recommend that you opt-in to migrate to the new German datacenter regions, we will continue to provide the necessary security updates to the Microsoft Cloud Deutschland region.

Office 365 services in the new German datacenter regions:

- Offer market competitive pricing for [Azure](https://azure.microsoft.com/pricing/calculator/), [Office 365](https://www.microsoft.com/microsoft-365/business/compare-more-office-365-for-business-plans), [Dynamics 365 Customer Engagement](https://dynamics.microsoft.com/pricing/), and [Power BI](https://powerbi.microsoft.com/pricing/).
- Are connected to Microsoft&#39;s global network, offering hundreds of network edge sites, peering locations, and egress points to deliver a robust user experience anywhere in the world.
- Help you meet local customer data residency requirements within Germany.
- Deliver our full-featured global cloud offering with the latest versions of our services and new capabilities including Microsoft Teams and Multi-Geo in Office 365. Compare products by region for [Azure](https://azure.microsoft.com/global-infrastructure/services/?products=all&amp;regions=germany-non-regional,germany-central,germany-north,germany-northeast,germany-west-central), [Office 365](o365-data-locations.md), and [Dynamics 365](https://docs.microsoft.com/dynamics365/get-started/availability).
- Offer full functionality, enterprise-grade security, and comprehensive features to help customers meet compliance and regulatory requirements.
- Are accessible through existing online services contracts.

### What is the service availability between the different Office 365 cloud service offerings?

The following 15 services are available in the Microsoft Cloud Deutschland cloud service offering. We are not adding new services to Microsoft Cloud Deutschland.

1. Exchange Online
2. Customer Lockbox (Exchange Online)
3. Groups (Modern groups)
4. Delve Profile
5. Exchange Online Protection
6. Defender for Office 365
7. Advanced eDiscovery
8. Advance Data Governance
9. SharePoint Online
10. Customer Lockbox (SharePoint Online)
11. OneDrive for Business
12. Skype for Business Online
13. Word Online, Excel Online, PowerPoint, OneNote, Visio Online
14. Office 365 Pro Plus
15. Outlook Mobile

There are currently 29 services available as part of Office 365 services in the new German datacenter regions. New features and services will be available consistent with global Office 365 services on an ongoing basis.

1. Exchange Online
2. Customer Lockbox for Exchange Online
3. Microsoft 365 groups
4. Delve Profile
5. MyAnalytics
6. Workplace Analytics
7. Exchange Online Protection
8. Defender for Office 365
9. Advanced eDiscovery
10. Advanced Security Management
11. Information Rights Management
12. Advance Data Governance
13. SharePoint Online
14. Customer Lockbox for SharePoint Online
15. OneDrive for Business
16. Microsoft Stream
17. Skype for Business (will migrate to Microsoft Teams during the migration)
18. Cloud PBX
19. PSTN Conferencing
20. PSTN calling
21. Microsoft Teams
22. Admin Reports / Usage Reports
23. Word Online, Excel Online, PowerPoint, OneNote, and Visio Online
24. Planner
25. Sway
26. Microsoft 365 Apps
27. Outlook Mobile
28. Enterprise Mobility + Security (EMS) E3 (Azure AD Premium P1, Intune, and Rights Management Service)
29. Yammer Online

### When will migration happen?

**Azure**

If you are an Azure customer only, you can begin [migrating](https://docs.microsoft.com/azure/germany/germany-migration-main) your Azure resources to another region today. If you have Azure with Office 365, Dynamics 365, or Power BI, please follow the steps below.

**Office 365**

[Opt-in](https://aka.ms/office365germanymoveoptin) to the Microsoft-driven migration today. When we are ready to start your migration, we will inform you through the Message center in the Microsoft 365 admin center.

**Dynamics 365 and Power BI**

Opt-in to the Microsoft-driven migration for [Dynamics 365 Customer Engagement](https://aka.ms/D365ceOptIn) and [Power BI](https://aka.ms/PBIOptIn) today. When we are ready to start your migration, we will inform you through the Message center in the Microsoft 365 admin center.

### Will the price change for the Office 365 services that I use?

Yes. Pricing in Microsoft&#39;s global cloud regions (including the new datacenter regions) is generally lower.

### During the subscription migration, what SKUs and Licenses will be applied to my organization and users?

During the migration from Microsoft Cloud Deutschland to the Office 365 services, the Germany service-specific SKUs are replaced with global versions of the same or similar SKU. For the majority of cases, the SKU in Office 365 services is the same however there are few replacements where the SKU in Germany is no longer available in the Office 365 services. If you wish to update the SKU assigned to your organization after the migration is complete, contact your seller to add or modify the services assigned.

| Microsoft Cloud Deutschland - Product SKU (DE) | Microsoft Cloud Global - Product SKU (WW) |
| --- | --- |
| Customer Lockbox\_DE (LOCKBOX\_DE) | Customer Lockbox (LOCKBOX) |
| Dynamics 365 Enterprise Edition - Additional Database Storage\_DE (CRMSTORAGE\_DE) | Dynamics 365 Enterprise Edition - Additional Database Storage (CRMSTORAGE) |
| Dynamics 365 Enterprise Edition - Additional Non-Production Instance\_DE (CRMTESTINSTANCE\_DE) | Dynamics 365 Enterprise Edition - Additional Non-Production Instance (CRMTESTINSTANCE) |
| Dynamics 365 for Customer Service Enterprise Edition\_DE (DYN365\_ENTERPRISE\_CUSTOMER\_SERVICE\_DE) | Dynamics 365 for Customer Service Enterprise Edition (DYN365\_ENTERPRISE\_CUSTOMER\_SERVICE) |
| Dynamics 365 for Sales Enterprise Edition\_DE (DYN365\_ENTERPRISE\_SALES\_DE) | Dynamics 365 for Sales Enterprise Edition (DYN365\_ENTERPRISE\_SALES) |
| Dynamics 365 for Team Members Enterprise Edition\_DE (DYN365\_ENTERPRISE\_TEAM\_MEMBERS\_DE) | Dynamics 365 for Team Members Enterprise Edition (DYN365\_ENTERPRISE\_TEAM\_MEMBERS) |
| Dynamics 365 Plan 1 Enterprise Edition\_DE (DYN365\_ENTERPRISE\_PLAN1\_DE) | Dynamics 365 Plan 1 Enterprise Edition (DYN365\_ENTERPRISE\_PLAN1) |
| ECAL Services (EOA, EOP, DLP)\_DE (ECAL\_SERVICES\_DE) | ECAL Services (EOA, EOP, DLP) (ECAL\_SERVICES) |
| Enterprise Mobility + Security E3\_DE (EMS\_DE) | Enterprise Mobility + Security E3 (EMS) |
| Exchange Online (Plan 1)\_DE (EXCHANGESTANDARD\_DE) | Exchange Online (Plan 1) (EXCHANGESTANDARD) |
| Exchange Online (Plan 2)\_DE (EXCHANGEENTERPRISE\_DE) | Exchange Online (Plan 2) (EXCHANGEENTERPRISE) |
| Exchange Online Archiving for Exchange Online\_DE (EXCHANGEARCHIVE\_ADDON\_DE) | Exchange Online Archiving for Exchange Online (EXCHANGEARCHIVE\_ADDON) |
| Exchange Online Archiving for Exchange Server\_DE (EXCHANGEARCHIVE\_DE) | Exchange Online Archiving for Exchange Server (EXCHANGEARCHIVE) |
| Exchange Online Essentials\_DE (EXCHANGE\_S\_ESSENTIALS\_DE) | Exchange Online Essentials (EXCHANGE\_S\_ESSENTIALS) |
| Exchange Online Kiosk\_DE (EXCHANGEDESKLESS\_DE) | Exchange Online Kiosk (EXCHANGEDESKLESS) |
| Exchange Online Protection\_DE (EOP\_ENTERPRISE\_DE) | Exchange Online Protection (EOP\_ENTERPRISE) |
| Microsoft 365 Business Standard (O365\_BUSINESS\_PREMIUM) | Microsoft 365 Business Standard (O365\_BUSINESS\_PREMIUM) |
| Microsoft Dynamics CRM Online Instance\_DE (CRMINSTANCE\_DE) | Microsoft Dynamics CRM Online Instance (CRMINSTANCE) |
| Office 365 A1 for faculty\_DE (STANDARDWOFFPACK\_FACULTY\_DE) | Office 365 A1 for faculty (STANDARDWOFFPACK\_FACULTY) |
| Office 365 A1 for students\_DE (STANDARDWOFFPACK\_STUDENT\_DE) | Office 365 A1 for students (STANDARDWOFFPACK\_STUDENT) |
| Office 365 Advanced Compliance\_DE (EQUIVIO\_ANALYTICS\_DE) | Microsoft 365 E5 Compliance (INFORMATION\_PROTECTION\_COMPLIANCE) |
|Microsoft Defender for Office 365 (Plan 1)\_DE (ATP\_ENTERPRISE\_DE) |Microsoft Defender for Office 365 (Plan 1) (ATP\_ENTERPRISE) |
| Office 365 Business Essentials\_DE (O365\_BUSINESS\_ESSENTIALS\_DE) | Microsoft 365 Business Basic (O365\_BUSINESS\_ESSENTIALS) |
| Office 365 Business Premium\_DE (O365\_BUSINESS\_PREMIUM\_DE) | Microsoft 365 Business Standard (O365\_BUSINESS\_PREMIUM) |
| Office 365 Business\_DE (O365\_BUSINESS\_DE) | Microsoft 365 Apps for business (O365\_BUSINESS) |
| Office 365 E1\_DE (STANDARDPACK\_DE) | Office 365 E1 (STANDARDPACK) |
| Office 365 E3 without ProPlus\_DE (ENTERPRISEPACKWITHOUTPROPLUS\_DE) | Office 365 E3 without ProPlus (ENTERPRISEPACKWITHOUTPROPLUS) |
| Office 365 E3\_DE (ENTERPRISEPACK\_DE) | Office 365 E3 (ENTERPRISEPACK) |
| Office 365 Enterprise E1\_DE (STANDARDPACK\_DE) | Office 365 Enterprise E1 (STANDARDPACK) |
| Office 365 Enterprise E3\_DE (ENTERPRISEPACK\_DE) | Office 365 Enterprise E3 (ENTERPRISEPACK) |
| Office 365 Extra File Storage\_DE (SHAREPOINTSTORAGE\_DE) | Office 365 Extra File Storage (SHAREPOINTSTORAGE) |
| Office 365 F1\_DE (DESKLESSPACK\_DE) | Office 365 F1 (DESKLESSPACK) |
| Office 365 ProPlus for Faculty\_DE (OFFICESUBSCRIPTION\_FACULTY\_DE) | Office 365 ProPlus for Faculty (OFFICESUBSCRIPTION\_FACULTY) |
| Office 365 ProPlus for Students\_DE (OFFICESUBSCRIPTION\_STUDENT\_DE) | Office 365 ProPlus for Students (OFFICESUBSCRIPTION\_STUDENT) |
| Office 365 ProPlus\_DE (OFFICESUBSCRIPTION\_DE) | Office 365 ProPlus (OFFICESUBSCRIPTION) |
| OneDrive for Business (Plan 1)\_DE (WACONEDRIVESTANDARD\_DE) | OneDrive for Business (Plan 1) (WACONEDRIVESTANDARD) |
| OneDrive for Business (Plan 2)\_DE (WACONEDRIVEENTERPRISE\_DE) | OneDrive for Business (Plan 2) (WACONEDRIVEENTERPRISE) |
| Power BI Pro for faculty\_DE (POWER\_BI\_PRO\_FACULTY\_DE) | Power BI Pro for faculty (POWER\_BI\_PRO\_FACULTY) |
| Power BI Pro\_DE (POWER\_BI\_PRO\_DE) | Power BI Pro (POWER\_BI\_PRO) |
| Project Online Essentials\_DE (PROJECTESSENTIALS\_DE) | Project Online Essentials (PROJECTESSENTIALS) |
| Project Online Premium\_DE (PROJECTPREMIUM\_DE) | Project Online Premium (PROJECTPREMIUM) |
| Project Online Professional\_DE (PROJECTPROFESSIONAL\_DE) | Project Online Professional (PROJECTPROFESSIONAL) |
| Project Plan 3\_DE (PROJECTPROFESSIONAL\_DE) | Project Plan 3 (PROJECTPROFESSIONAL) |
| Office 365 E4\_DE (ENTERPRISEWITHSCAL\_DE) | Office 365 E3 (ENTERPRISEPACK) |
| SharePoint Online (Plan 1)\_DE (SHAREPOINTSTANDARD\_DE) | SharePoint Online (Plan 1) (SHAREPOINTSTANDARD) |
| SharePoint Online (Plan 2)\_DE (SHAREPOINTENTERPRISE\_DE) | SharePoint Online (Plan 2) (SHAREPOINTENTERPRISE) |
| Skype for Business Online (Plan 1)\_DE (MCOIMP\_DE) | Office 365 E1 (STANDARDPACK) |
| Skype for Business Online (Plan 1)\_DE (MCOIMP\_DE) | Skype for Business Online (Plan 1) (MCOIMP) |
| Skype for Business Online (Plan 2)\_DE (MCOSTANDARD\_DE) | Skype for Business Online (Plan 2) (MCOSTANDARD) |
| Skype for Business Plus CAL\_DE (MCOPLUSCAL\_DE) | Skype for Business Plus CAL (MCOPLUSCAL) |
| Visio Online Plan 1 for faculty\_DE (VISIOONLINE\_PLAN1\_FAC\_DE) | Visio Online Plan 1 for faculty (VISIOONLINE\_PLAN1\_FAC) |
| Visio Online Plan 1\_DE (VISIOONLINE\_PLAN1\_DE) | Visio Online Plan 1 (VISIOONLINE\_PLAN1) |
| Visio Online Plan 2 for faculty\_DE (VISIOCLIENT\_FACULTY\_DE) | Visio Online Plan 2 for faculty (VISIOCLIENT\_FACULTY) |
| Visio Online Plan 2\_DE (VISIOCLIENT\_DE) | Visio Online Plan 2 (VISIOCLIENT) |
| Visio Plan 1\_DE (VISIOONLINE\_PLAN1\_DE) | Visio Plan 1 (VISIOONLINE\_PLAN1) |
| Visio Plan 2\_DE (VISIOCLIENT\_DE) | Visio Plan 2 (VISIOCLIENT) |
|||

### How do I get help from Microsoft to migrate to a new region or answer support questions?

If you have questions, you can contact us or your partner:

- For Azure, you can submit [new support requests](https://portal.microsoftazure.de/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/newsupportrequest) in the Azure portal.
- For Office 365, you may submit questions using the &quot;Need Help?&quot; link of the [Microsoft 365 admin center](https://portal.office.de/).
- If you are Dynamics 365 Customer Engagement and Power BI customer and also have Office 365, you may submit questions using the &quot;Need Help?&quot; link of the [Microsoft 365 admin center](https://portal.office.de/). Dynamics 365 Customer Engagement support options are located [here](https://docs.microsoft.com/dynamics365/get-started/support/). Power BI support options are located [here](https://powerbi.microsoft.com/support/).

## More information

Additonal information about migrating to the new German datacenter regions is coming. Bookmark this page so that you can check in and keep current.

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
