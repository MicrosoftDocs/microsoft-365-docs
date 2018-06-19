---
title: "Migration to Microsoft 365 Enterprise"
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/19/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: Step through the process of migrating versions of Microsoft Office, Office servers, and Windows to Microsoft 365 Enterprise across your organization.
---

# Migration to Microsoft 365 Enterprise

Most enterprise organizations have a heterogeneous environment with multiple releases of operating systems, client software, and server software. Microsoft 365 Enterprise includes the most secure versions of these key components of your IT infrastructure with productivity features that are designed to take advantage of cloud technologies.

To maximize the business value of the Microsoft 365 Enterprise integrated suite of products, begin planning and implementing a strategy to migrate releases of:

- The Office client installed on your computers to Office 365 ProPlus
- Office servers installed on your servers to their equivalent services in Office 365
- Windows 7 and Windows 8.1 on your devices to Windows 10 Enterprise

Accomplishing all of these migrations over time gets your organization closer to the [modern workplace](https://www.microsoft.com/en-us/microsoft-365/blog/2018/04/27/making-it-simpler-with-a-modern-workplace/), a secure and integrated environment that unlocks teamwork and creativity in your organization, all of which is enabled and empowered by Microsoft 365 Enterprise. 

## Migration for Microsoft Office client products

In many organizations both large and small, you might be using a combination of older versions of the Office client products, such as Word, Excel, and PowerPoint. These older versions:

- Can be [updated](https://support.office.com/article/install-office-updates-2ab296f3-7f03-43a2-8e50-46de917611c5) with the latest security updates and support fixes, but the process is sometimes manual and might not scale across your organization.
- Are not optimally enabled to leverage Microsoft’s cloud technologies and help you digitally transform your business.
 
Microsoft 365 Enterprise includes Office 365 ProPlus, a version of the Office client products that is available with a Microsoft 365 Enterprise license and is installed and updated from the Microsoft cloud. See [About Office 365 ProPlus in the enterprise](https://docs.microsoft.com/deployoffice/about-office-365-proplus-in-the-enterprise) for more information.

### Office 2007

For versions of Office in the Office 2007 release, the end of support has already passed. See [Office 2007 End of Support Roadmap](https://support.office.com/article/office-2007-end-of-support-roadmap-416c54d8-823c-4def-bb7a-6a9b14ef2745) for more information.

Rather than upgrading your computers running Office 2007 with Office 2010, Office 2013, or Office 2016, consider:

1. Obtaining and assigning a Microsoft 365 license for your users.
2. Uninstalling Office 2007 on their computers.
3. Installing Office 365 ProPlus, either individually or in conjunction with an IT rollout. For more information, see [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md).

Office 365 ProPlus installs updates automatically and can take advantage of cloud-based services in Office 365 for enhanced security and productivity.

### Office 2010

For versions of Office in the Office 2010 release, the end of support is October 13, 2020. For more information, see [Office 2010 end of support roadmap](https://support.office.com/en-us/article/office-2010-end-of-support-roadmap-2a58999c-4d83-4e67-9fde-bc96d487105e).

Rather than upgrading your computers running Office 2010 with Office 2013 or Office 2016, both of which must be manually updated, consider: 

1. Obtaining and assigning a Microsoft 365 license for your users.
2. Uninstalling Office 2010 on their computers.
3. Installing Office 365 ProPlus, either individually or in conjunction with an IT rollout. For more information, see [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md).

Office 365 ProPlus installs updates automatically and can take advantage of cloud-based services in Office 365 for enhanced security and productivity.

### Office 2013 and Office 2016

The end of support roadmap for the Office 2013 and Office 2016 versions of Office has not yet been determined. However, like Office 2010, you must still [install updates](https://support.office.com/article/install-office-updates-2ab296f3-7f03-43a2-8e50-46de917611c5), which might not scale well depending on the size of your organization.
Rather than keep updating your computers with the latest updates for Office 2013 or Office 2016 or update your computers from Office 2013 to Office 2016, consider:

1. Obtaining and assigning a Microsoft 365 license for your users.
2. Uninstalling Office 2013 or Office 2016 on their computers.
3. Installing Office 365 ProPlus, either individually or in conjunction with an IT rollout. For more information, see [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md).

Office 365 ProPlus installs updates automatically and can take advantage of cloud-based services in Office 365 for enhanced security and productivity.

## Migration for Microsoft Office server products

In many organizations both large and small, you might be using a combination of older versions of the Office Server products, such as Exchange Server and SharePoint Server. These older versions:

- Should be updated with the latest security updates and support fixes. In some cases, these updates are released monthly.
- Are not optimally enabled to leverage Microsoft’s cloud technologies and help you digitally transform your business.
- Do not include new productivity applications, such as Microsoft Teams.
- Do not include the latest security features, such as Exchange Advanced Threat Protection.

Microsoft 365 Enterprise includes Office 365, which includes cloud-based versions of Office server services that use some of the same tools as on-premises versions of Office server software, such as web browsers and the Outlook client. These services are continually updated without involving IT, saving you the time it takes to maintain and update on-premises servers. These services also have enhancements not present in Office server software. 

### Office Server 2007

For server products in the Office 2007 release, the end of support has already passed. See these articles for the details:

- [Exchange 2007 end of support roadmap](https://support.office.com/article/exchange-2007-end-of-support-roadmap-c3024358-326b-404e-9fe6-b618e54d977d)
- [SharePoint Server 2007 end of support roadmap](https://support.office.com/article/sharepoint-server-2007-end-of-support-roadmap-ba124775-d5c0-4d68-b88d-8458ad4c3717)
- [Project Server 2007 end of support roadmap](https://support.office.com/article/project-server-2007-end-of-support-roadmap-d379018f-72b7-4284-b40a-6c23c8ae38fe)
- [Office Communications Server end of support roadmap](https://support.office.com/article/office-communications-server-end-of-support-roadmap-54f3d5ba-bdf9-4b37-a9e8-f1ab452d4f78)
- [PerformancePoint Server 2007 end of support roadmap](https://support.office.com/article/performancepoint-server-2007-end-of-support-roadmap-89d9feee-2285-419c-8c14-0f7f583536e0)

Rather than upgrading your server products in the Office 2007 release with server products in the Office 2010, Office 2013, or Office 2016 releases, consider:

1. Migrating the data on your Office 2007 servers to Office 365. To help with this, hire a Microsoft partner.
2. Rolling out the new functionality and work processes to your users.
3. When there is no longer a need for the on-premises servers running Office 2007 server products, decommissioning them.

### Office Server 2010

For server products in the Office 2010 release, the end of support has been determined for the following:

- [Exchange Server 2010](https://support.office.com/en-us/article/exchange-2010-end-of-support-roadmap-e150e7b9-c432-4c8d-a0ae-c11847129a7d)
- [SharePoint Server 2010](https://support.office.com/en-us/article/upgrading-from-sharepoint-2010-985a357f-6db7-401f-bf7a-1bafdf1f312c)

Rather than upgrading these server products in the Office 2010 release with server products in the Office 2013 or Office 2016 release, consider:

1. Migrating the data on your Office 2010 servers to Office 365. To help with this, see [FastTrack for Microsoft 365](https://fasttrack.microsoft.com/microsoft365) or hire a Microsoft partner.
2. Rolling out the new functionality and work processes to your users.
3. When there is no longer a need for the on-premises servers running Office 2010 server products, decommissioning them.

### Office Server 2013

For server products in the Office 2013 release, the end of support has not been determined. Rather than upgrading your server products in the Office 2013 release with server products in the Office 2016 release, consider:

1. Migrating the data on your Office 2013 servers to Office 365. To help with this, see [FastTrack for Microsoft 365](https://fasttrack.microsoft.com/microsoft365) or hire a Microsoft partner.
2. Rolling out the new functionality and work processes to your users.
3. When there is no longer a need for the on-premises servers running Office 2013 server products, decommissioning them.

### Office Server 2016

For server products in the Office 2016 release, the end of support has not been determined. To take advantage of the cloud-based service and enhancements to digitally transform your business, consider:

1. Migrating the data on your Office 2016 servers to Office 365. To help with this, see [FastTrack for Microsoft 365](https://fasttrack.microsoft.com/microsoft365) or hire a Microsoft partner.
2. Rolling out the new functionality and work processes to your users.
3. When there is no longer a need for the on-premises servers running Office 2016 server products, decommissioning them.

## Migration for Microsoft Windows

To migrate your devices running Windows 7 or Windows 8.1, you can perform an [in-place upgrade](https://docs.microsoft.com/en-us/microsoft-365/enterprise/windows10-deploy-inplaceupgrade). 

For additional methods, see [Windows 10 deployment scenarios](https://docs.microsoft.com/windows/deployment/windows-10-deployment-scenarios). You can also [plan for Windows 10 deployment](https://aka.ms/planforwin10deployment) on your own.


## Result

Your organization has migrated versions of Microsoft Office, Office servers, and Windows to Microsoft 365 Enterprise.
