---
title: "Migration to Microsoft 365 Enterprise"
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/23/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-modern-desktop
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

>[!Note]
>Windows 7 reached end of support on **January 14, 2020**. For more information, click [here](https://support.microsoft.com/help/4057281/windows-7-support-will-end-on-january-14-2020).
>

Accomplishing all of these migrations over time gets your organization closer to the [modern workplace](https://www.microsoft.com/microsoft-365/blog/2018/04/27/making-it-simpler-with-a-modern-workplace/), a secure and integrated environment that unlocks teamwork and creativity in your organization, all of which is enabled and empowered by Microsoft 365 Enterprise. 

For information about migrating users and data for specific Office 365 workloads:

- User mailboxes from Exchange Server to Exchange Online, see the [Exchange Online workload](exchangeonline-workload.md).
- SharePoint data from SharePoint Server to SharePoint Online, see the [SharePoint Online workload](sharepoint-online-onedrive-workload.md).
- Skype for Business Online to Microsoft Teams, see the [Microsoft Teams workload](teams-workload.md).

## Migration for Microsoft Office client products

In many organizations both large and small, you might be using a combination of older versions of the Office client products, such as Word, Excel, and PowerPoint. These older versions:

- Can be [updated](https://support.office.com/article/install-office-updates-2ab296f3-7f03-43a2-8e50-46de917611c5) with the latest security updates and support fixes, but the process is sometimes manual and might not scale across your organization.
- Are not optimally enabled to leverage Microsoft’s cloud technologies and help you digitally transform your business.
- Do not contain new features.
 
Microsoft 365 Enterprise includes Office 365 ProPlus, a version of the Office client products that is available with a Microsoft 365 Enterprise license and is installed and updated from the Microsoft cloud. Office 365 ProPlus includes security updates and the latest features. See [About Office 365 ProPlus in the enterprise](https://docs.microsoft.com/deployoffice/about-office-365-proplus-in-the-enterprise) for more information.

### Office 2007

For versions of Office in the Office 2007 release, the end of support has already passed. See [Office 2007 End of Support Roadmap](https://docs.microsoft.com/deployoffice/office-2007-end-support-roadmap) for more information.

Rather than upgrading your computers running Office 2007 with Office 2010, Office 2013, or Office 2016, consider:

1. Obtaining and assigning a Microsoft 365 license for your users.
2. Uninstalling Office 2007 on their computers.
3. Installing Office 365 ProPlus, either individually or in conjunction with an IT rollout. For more information, see [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md).

Office 365 ProPlus installs updates automatically and can take advantage of cloud-based services in Office 365 for enhanced security and productivity.

### Office 2010

For versions of Office in the Office 2010 release, the end of support is **October 13, 2020**. For more information, see [Office 2010 end of support roadmap](https://docs.microsoft.com/deployoffice/office-2010-end-support-roadmap).

Rather than upgrading your computers running Office 2010 with Office 2013 or Office 2016, both of which must be manually updated, consider: 

1. Obtaining and assigning a Microsoft 365 license for your users.
2. Uninstalling Office 2010 on their computers.
3. Installing Office 365 ProPlus, either individually or in conjunction with an IT rollout. For more information, see [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md).

Office 365 ProPlus installs both security and new feature updates automatically and can take advantage of cloud-based services in Microsoft 365 for enhanced security and productivity.

### Office 2013 and Office 2016

The end of support roadmap for the Office 2013 and Office 2016 versions of Office has not yet been determined. However, like Office 2010, you must still [install security updates](https://support.office.com/article/install-office-updates-2ab296f3-7f03-43a2-8e50-46de917611c5), which might not scale well depending on the size of your organization.

Rather than keep updating your computers with the latest security updates for Office 2013 or Office 2016 or update your computers from Office 2013 to Office 2016, consider:

1. Obtaining and assigning a Microsoft 365 license for your users.
2. Uninstalling Office 2013 or Office 2016 on their computers.
3. Installing Office 365 ProPlus, either individually or in conjunction with an IT rollout. For more information, see [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md).

Office 365 ProPlus installs both security and new feature updates automatically and can take advantage of cloud-based services in Microsoft 365 for enhanced security and productivity.

## Migration for Microsoft Office server products

In many organizations both large and small, you might be using a combination of older versions of the Office Server products, such as Exchange Server and SharePoint Server. These older versions:

- Should be updated with the latest security updates and support fixes. In some cases, these updates are released monthly.
- Are not optimally enabled to leverage Microsoft’s cloud technologies and help you digitally transform your business.
- Do not include new productivity applications, such as Microsoft Teams.
- Do not include the latest security features, such as Exchange Advanced Threat Protection.

Microsoft 365 Enterprise includes Office 365, which includes cloud-based versions of Office server services that use some of the same tools as on-premises versions of Office server software, such as web browsers and the Outlook client. These services are continually updated for security without involving IT, saving you the time it takes to maintain and update on-premises servers. These services also have new features enhancements that are not present in Office server software. 

### Office Server 2007

For server products in the Office 2007 release, the end of support has already passed. See these articles for the details:

- [Exchange 2007 end of support roadmap](https://docs.microsoft.com/office365/enterprise/exchange-2007-end-of-support)
- [SharePoint Server 2007 end of support roadmap](https://docs.microsoft.com/office365/enterprise/sharepoint-2007-end-of-support)
- [Project Server 2007 end of support roadmap](https://docs.microsoft.com/office365/enterprise/project-server-2007-end-of-support)
- [Office Communications Server end of support roadmap](https://docs.microsoft.com/skypeforbusiness/plan-your-deployment/upgrade)
- [PerformancePoint Server 2007 end of support roadmap](https://docs.microsoft.com/office365/enterprise/pps-2007-end-of-support)

Rather than upgrading your server products in the Office 2007 release with server products in the Office 2010, Office 2013, or Office 2016 releases, consider:

1. Migrating the data on your Office 2007 servers to Office 365. To help with this, hire a Microsoft partner.
2. Rolling out the new functionality and work processes to your users.
3. When there is no longer a need for the on-premises servers running Office 2007 server products, decommissioning them.

### Office Server 2010

For server products in the Office 2010 release, the end of support is **October 13, 2020** for the following:

- [Exchange Server 2010](https://docs.microsoft.com/office365/enterprise/exchange-2010-end-of-support)
- [SharePoint Server 2010](https://docs.microsoft.com/office365/enterprise/upgrade-from-sharepoint-2010)

Rather than upgrading these server products in the Office 2010 release with server products in the Office 2013 or Office 2016 release, consider:

1. Migrating the data on your Office 2010 servers to Microsoft 365. To help with this, see [FastTrack for Microsoft 365](https://fasttrack.microsoft.com/microsoft365) or hire a Microsoft partner.
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

## Migration for Microsoft Windows 7 and 8.1

Windows 7 reached end of support on **January 14, 2020**. To migrate your devices running Windows 7 or Windows 8.1, you can perform an [in-place upgrade](https://docs.microsoft.com/microsoft-365/enterprise/windows10-deploy-inplaceupgrade). 

For additional methods, see [Windows 10 deployment scenarios](https://docs.microsoft.com/windows/deployment/windows-10-deployment-scenarios). You can also [plan for Windows 10 deployment](https://aka.ms/planforwin10deployment) on your own.

## Summary of options for Office 2010 clients and servers and Windows 7

For a visual summary of the upgrade, migrate, and move-to-the-cloud options for these products, see the [end of support poster](../media/migration-microsoft-365-enterprise-workload/Office2010Windows7EndOfSupport.pdf).

[![Image for the end of support for Office 2010 clients and servers and Windows 7 poster](../media/migration-microsoft-365-enterprise-workload/office2010-windows7-end-of-support.png)](../media/migration-microsoft-365-enterprise-workload/Office2010Windows7EndOfSupport.pdf)

This one-page poster is a quick way to understand the various paths you can take to prevent Office 2010 client and server products and Windows 7 from reaching end of support, with preferred paths and resulting destination support in Microsoft 365 Enterprise highlighted.

You can [download this poster](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/media/migration-microsoft-365-enterprise-workload/Office2010Windows7EndOfSupport.pdf) and print it in letter, legal, or tabloid (11 x 17) formats.

## How Microsoft does Microsoft 365 Enterprise

See how IT experts at Microsoft migrated the company to Microsoft 365 Enterprise with these resources: 

- [Deploying and updating Microsoft Office 365 ProPlus](https://www.microsoft.com/itshowcase/Article/Content/757/Deploying-and-updating-Microsoft-Office-365-ProPlus)
- [Microsoft migrates 150,000 mailboxes to Exchange Online](https://www.microsoft.com/itshowcase/Article/Content/577/Microsoft-migrates-150000-mailboxes-to-Exchange-Online)
- [SharePoint to the cloud: Learn how Microsoft ran its own migration](https://www.microsoft.com/itshowcase/Article/Content/691/SharePoint-to-the-cloud-Learn-how-Microsoft-ran-its-own-migration)
- [Deploying Windows 10 at Microsoft as an in-place upgrade](https://www.microsoft.com/itshowcase/Article/Content/668/Deploying-Windows-10-at-Microsoft-as-an-inplace-upgrade)
- [Windows 10 deployment: tips and tricks from Microsoft IT](https://www.microsoft.com/itshowcase/Article/Content/951/Windows-10-deployment-tips-and-tricks-from-Microsoft-IT) (video)

## Transition your entire organization

To get a better picture of how to move your entire organization to the products and services in Microsoft 365 Enterprise, see the [transition poster](../media/deploy-microsoft-365-enterprise/transition-org-to-m365.pdf).

[![Image for the Transition to Microsoft 365 poster](../media/deploy-microsoft-365-enterprise/transition-org-to-m365.png)](../media/deploy-microsoft-365-enterprise/transition-org-to-m365.pdf)

This two-page poster is a quick way to inventory your existing infrastructure and get to the guidance for moving to the corresponding product or service in Microsoft 365 Enterprise. It includes Windows and Office products and other infrastructure and security elements such as device management, identity, and information and threat protection.

You can [download this poster](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/media/deploy-microsoft-365-enterprise/transition-org-to-m365.pdf) and print it in letter, legal, or tabloid (11 x 17) formats.

## Result

Your organization has migrated older versions of Microsoft Office, Office servers, and Windows to Microsoft 365 Enterprise.
