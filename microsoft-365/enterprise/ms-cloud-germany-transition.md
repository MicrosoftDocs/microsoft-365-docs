---
title: "Migration from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter regions"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 07/09/2020
audience: ITPro
ms.topic: hub-page
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

# Migration from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter regions


>[!Note]
>This article only applies to eligible Microsoft Cloud Germany/Deutschland customers.
>

## Cloud service offerings in Germany

In August 2018, we announced our intention to deliver the complete Microsoft cloud – Azure, Office 365, Dynamics 365 and Power Platform – from new cloud regions in Germany to better enable the digital transformation of our customers. In August 2019, we announced we are now in the process of opening of the new cloud regions in Germany. We announced the availability of Azure in August and Office 365 became available in December.  Dynamics 365 and Power Platform are anticipated to become available in the first quarter of 2020.  

The new regions are designed to address the evolving needs of German customers with the greater flexibly, the latest intelligent cloud services, and full connectivity to our global cloud network as well as customer data residency within Germany.

## Moving to the new German regions

Existing Microsoft Cloud Germany (Microsoft Cloud Deutschland) customers can now begin to migrate their Office 365, Dynamics 365 Customer Engagement, and Power Platform BI customers.  The first step is to [opt-in to a Microsoft-led migration](https://aka.ms/office365germanymoveoptin) to our new German datacenter regions.

For organizations who opt-in to the Microsoft-driven approach, migrations are expected to take place in 2020. As a result of the migration, core customer data and subscriptions are moved to the new German regions. 

The following services will be migrated as part of the Microsoft-driven approach:

- Azure Active Directory
- Exchange Online
- Exchange Online Protection
- SharePoint Online
- OneDrive for Business
- Skype for Business Online

During the migration from Microsoft Cloud Germany to the German datacenter regions, existing Skype for Business Online customers will transition to Microsoft Teams. See [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home) for more information.

- Office 365 Groups
- Dynamics 365 / Power Platform

Prerequisites and impact of migration for these services are described in the [Dynamics 365 Customer engagement](https://aka.ms/d365ceoptin) article.

Office 365 Video is being retired on March 1, 2021. If you choose to migrate your Office 365 tenant to the new German datacenter regions, Office 365 Video will not be supported after the SharePoint Online migration is completed. [Learn more](https://docs.microsoft.com/stream/migrate-from-office-365#microsoft-cloud-deutschland-timeline)

## How to prepare for migration to Office 365 services in the new German datacenter regions

The first step is to notify Microsoft so that we have your permission to migrate your subscription and data from Microsoft Cloud Germany/Deutschland to Office 365 services in the new German datacenter regions.  Please refer to the [opt-in process](ms-cloud-germany-migration-opt-in.md) for instructions.

- All migrating customers need to verify connectivity to the worldwide [Office 365 URLs and IP addresses](urls-and-ip-address-ranges.md), which include the new German datacenter regions.
- Review the Office 365 platform service description to understand which features and services will become available to your organization following the completion to the German region. 
- The migration will transition paid subscriptions.  We cannot migrate trial subscriptions.

Tenant migrations are executed as back-end service operations with minimal customer interaction required.  Any additional customer-led tasks and overall migration status will be communicated via Message Center during the migration process.  Example of tasks may include customer managed DNS updates or reconfiguration of hybrid setup for Exchange hybrid customers.

## Customer experience during the migration to Office 365 services in the new German datacenter regions

Tenant migrations are designed to have minimal impact to end customers and administrators.  However, there are considerations for each workload.  

### Azure Active Directory

Office/Dynamics subscriptions from Microsoft Cloud Germany are transitioned to the German region with the Azure Active Directory (Azure AD) relocation. The organization is then updated to reflect new worldwide service subscriptions. During the brief subscription transfer process, changes to subscriptions will be blocked.

### Exchange Online

Exchange Online Hybrid customers must re-run the Hybrid Configuration Wizard to update on-premises configuration against Microsoft Cloud Germany before the transition, and re-execution of the HCW upon cleanup against the worldwide service. Additional DNS updates may be required for customers with custom domains.

Mailboxes are migrated as a backend process, users in your organization may be in either Microsoft Cloud Germany or German region during the transition and are part of the same Exchange organization (GAL)

### Exchange Online Protection

Backend Exchange Online Protection features are copied to new Germany region

### SharePoint Online

Upon completion of the SharePoint Online migration to the German region, data indexes are rebuilt. Features dependent on search indexes may be impacted while reindexing completes.

Existing sharepoint.de URLs are preserved for transitioned organizations.

### OneDrive for Business

Upon completion of the OneDrive for Business migration to the German region, data indexes are rebuilt. Features dependent on search indexes may be impacted while reindexing completes.

### Skype for Business Online

Existing Skype for Business Online customers will transition to Microsoft Teams. See [https://aka.ms/SkypeToTeams-Home](https://aka.ms/SkypeToTeams-Home) for more information.

### Office 365 Video
Content from Office 365 Video will be migrated as part of the SharePoint Online migration. However, Office 365 Video is being retired and Office 365 Video will not be supported after the SharePoint Online migration to the new German datacenter regions is completed. Videos in Office 365 Video will not play back in the Office 365 Video UI after the SharePoint migration.

Microsoft Stream is not going to be deployed to Microsoft Deutschland, and we currently do not have a timeline for deploying Microsoft Stream in the new German datacenter regions. As a result, there will not be any migration tooling provided in this region for Office 365 Video to Microsoft Stream. To preserve your content, you will need to manually download or move content before March 1, 2021. [Learn more](https://docs.microsoft.com/stream/migrate-from-office-365#microsoft-cloud-deutschland-timeline)


## Key differences between Microsoft Cloud Germany (Microsoft Cloud Deutschland) and Office 365 services in the new German datacenter regions


|| Microsoft Cloud Germany (Microsoft Cloud Deutschland) | Office 365 services in the new German datacenter regions |
|:-------|:-----|:-----|
| Microsoft 365 services available for subscription with just one Office 365 tenant | 15 services (see REF) | 29 services (see REF) |
| New features | No new features are available. | New features will be available consistent with global Office 365 services. |
| Data trustee | Yes | No |
| Cross-tenant collaboration with global Office 365 tenants | No | Yes |
| Customer data residency | Customer Data will be stored solely within German Data Centers. | Microsoft will store the following Customer Data at rest exclusively within Germany: Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments), SharePoint Online site content and the files stored within that site, and files uploaded to OneDrive for Business. |
| Applicable terms | [Online Services Terms](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46) with [supplement](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=64) | [Online Services Terms](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46) |
||||

## Frequently Asked Questions

### Is migration required?

Microsoft offers Office 365 tenant migration from Microsoft Cloud Germany to Office 365 services in the new German datacenter regions at no additional charge.  While we do strongly recommend that you opt-in to migrate to the new German datacenter regions, we will continue to provide the necessary security updates to the Microsoft Cloud Germany region.  

Office 365 services in the new German datacenter regions have additional benefits:

- Offer market competitive pricing for [Azure](https://azure.microsoft.com/pricing/calculator/), [Office 365](https://www.microsoft.com/microsoft-365/business/compare-more-office-365-for-business-plans), [Dynamics 365 Customer Engagement](https://dynamics.microsoft.com/pricing/), and [Power BI](https://powerbi.microsoft.com/pricing/). 
- Are connected to Microsoft global network, offering hundreds of network edge sites, peering locations, and egress points to deliver a robust user experience anywhere in the world. 
- Help you meet local customer data residency requirements within Germany. 
- Deliver our full featured global cloud offering, including the latest version of our services and new capabilities including Microsoft Teams and Multi-Geo in Office 365. Compare products by region for [Azure](https://azure.microsoft.com/global-infrastructure/services/?products=all&regions=germany-non-regional,germany-central,germany-north,germany-northeast,germany-west-central), [Office 365](https://docs.microsoft.com/office365/enterprise/o365-data-locations), and [Dynamics 365](https://docs.microsoft.com/dynamics365/get-started/availability).
- Offer full functionality, enterprise-grade security, and comprehensive features to help customers meet compliance and regulatory requirements. 
- Are accessible through existing online services contracts.

#### What is the service availability between the different Office 365 cloud service offerings?

The following 15 services are available in the Microsoft Cloud Germany (Microsoft Cloud Deutschland) cloud service offering.  We are not adding new services to Microsoft Cloud Germany.

1. Exchange Online
2. Customer Lockbox (Exchange Online)
3. Groups (Modern groups)
4. Delve Profile
5. Exchange Online Protection
6. Advanced Threat Protection (ATP)
7. Advanced eDiscovery
8. Advance Data Governance
9. SharePoint Online
10. Customer Lockbox (SharePoint Online)
11. OneDrive for Business
12. Skype for Business
13. Word Online, Excel Online, PowerPoint, OneNote, Visio Online
14. Office 365 Pro Plus
15. Outlook Mobile

There are currently 29 services available as part of Office 365 services in the new German datacenter regions.  New features and services will be available consistent with global Office 365 services on an ongoing basis.

1. Exchange Online
2. Customer Lockbox (Exchange Online)
3. Groups (Modern groups)
4. Delve Profile
5. MyAnalytics
6. Workplace Analytics
7. Exchange Online Protection
8. Advanced Threat Protection (ATP)
9. Advanced eDiscovery
10. Advanced Security Management
11. Information Rights Management
12. Advance Data Governance
13. SharePoint Online
14. Customer Lockbox (SharePoint Online)
15. OneDrive for Business
16. Microsoft Stream
17. Skype for Business (will transition to Microsoft Teams during the migration)
18. Cloud PBX
19. PSTN Conferencing
20. PSTN calling
21. Microsoft Teams
22. Admin Reports / Usage Reports
23. Word Online, Excel Online, PowerPoint, OneNote, and Visio Online
24. Planner
25. Sway
26. Office 365 Pro Plus
27. Outlook Mobile
28. EMS E3 (Azure Active Directory Premium P1 + Intune + Rights Management Service)
29. Yammer Online

### When will migration happen?

#### Azure 

You can begin [migrating](https://docs.microsoft.com/azure/germany/germany-migration-main) your Azure resources to another region today. If you have Azure with Office 365, Dynamics 365, and/or Power BI, please follow the steps below.

#### Office 365

[Opt-in](https://aka.ms/office365germanymoveoptin) to the Microsoft-driven migration today. When we are ready to start your migration, we will inform you through the [Message Center](https://docs.microsoft.com/office365/admin/manage/message-center?view=o365-worldwide) in the Microsoft 365 admin center.

#### Dynamics 365 and Power BI

Opt-in to the Microsoft-driven migration for [Dynamics 365 Customer Engagement](https://aka.ms/D365ceOptIn) and [Power BI today](https://aka.ms/PBIOptIn). When we are ready to start your migration, we will inform you through the [Message center](https://docs.microsoft.com/office365/admin/manage/message-center?view=o365-worldwide) in the Microsoft 365 admin center.

### Will the price change for the Office services that I use?

Yes, pricing in Microsoft’s global cloud regions (including the new datacenter regions) is generally lower.

### How do I get help from Microsoft to migrate to a new region or answer support questions?

If you have questions, you can contact us as follows, or through your partner:

- For Azure, you can submit [new support requests](https://portal.microsoftazure.de/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/newsupportrequest) in the Azure portal.
- For Office 365, you may submit questions using the “Need Help?” link of the [Microsoft 365 admin center](https://portal.office.de/).
- For Dynamics 365 Customer Engagement and Power BI customer who also have Office 365, you may submit questions using the “Need Help?” link of the [Microsoft 365 admin center](https://portal.office.de/). Dynamics 365 Customer Engagement support options are located [here](https://docs.microsoft.com/dynamics365/get-started/support/). Power BI support options are located [here](https://powerbi.microsoft.com/support/).

## More information

- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](https://aka.ms/office365germanymoveoptin)
- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Office 365 URLs and IP address ranges](https://aka.ms/o365endpoints)
- [Office 365 Hybrid Configuration Wizard](https://aka.ms/HybridWizard)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
