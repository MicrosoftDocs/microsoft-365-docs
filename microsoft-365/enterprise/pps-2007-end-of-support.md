---
title: "PerformancePoint Server 2007 end of support roadmap"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: ITPro
ms.topic: conceptual
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
search.appverid:
- PSV120
- PDD140
- MET150
ms.assetid: 89d9feee-2285-419c-8c14-0f7f583536e0
f1.keywords:
- NOCSH
description: PerformancePoint Server 2007, ProClarity, and SharePoint Server 2007 have reached end of support. Read this article to help plan your BI solution upgrade.
---

# PerformancePoint Server 2007 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Office 2007 servers and applications have reached their end of support, including servers and applications that you might be using as part of your business intelligence (BI) solutions. The following table lists BI applications that are affected:
  
|**Microsoft BI applications**|**Date support ended**|
|:-----|:-----|
|ProClarity Analytics Server 6.3 Service Pack 3  <br/> ProClarity Desktop Professional 6.3  <br/> ProClarity SharePoint Viewer 6.3  <br/> |July 11, 2017  <br/> |
|SharePoint Server 2007 Service Pack 3  <br/> |October 10, 2017  <br/> |
|PerformancePoint Server 2007 Service Pack 3  <br/> |January 9, 2018  <br/> |
   
For more information, see [Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md).
  
## What does *end of support* mean?

Like most Microsoft products, PerformancePoint Server 2007 SP3, ProClarity software, and SharePoint Server 2007 SP3, have a support lifecycle, during which Microsoft provides new features, bug fixes, and security updates. The lifecycle for a product typically lasts for 10 years from the product's initial release. The end of that lifecycle is known as the product's end of support. As ProClarity, PerformancePoint Server, and SharePoint Server 2007 have reached their end of support, Microsoft no longer provides:
  
- Technical support for problems that may occur.
    
- Bug fixes for issues that are discovered and that may impact the stability and usability of servers.
    
- Security fixes for vulnerabilities that are discovered and that may make servers or applications vulnerable to security breaches.
    
- Time zone updates.
    
Your installation of ProClarity, SharePoint Server 2007 SP3, and PerformancePoint Server 2007 SP3 will continue to run even though support has ended. However, we strongly recommend that you migrate from these applications as soon as possible.
  
## What are my options?

There have been lots of changes to Microsoft BI applications since 2007, and you have several options to consider, as summarized in the following table.
  
|**If you were using this ...**|**Explore these options ...**|**And keep this in mind ...**|
|:-----|:-----|:-----|
| PerformancePoint Server 2007 Monitoring &amp; Analytics capabilities, including:<br/>- PerformancePoint Monitoring Server <br/>- PerformancePoint Dashboard Designer<br/>- Dashboard Viewer for SharePoint Services (used for rendering PerformancePoint dashboards, scorecards, and reports)<br/> |**Excel with Excel in a browser** (in the cloud or on-premises). For an overview, see [BI capabilities in Excel and Microsoft 365](https://support.office.com/article/26c0548e-124c-4fd3-aab3-5f64568cb743.aspx).<br/><br/> **Power BI** (in the cloud or on-premises). For an overview, see [What is Power BI?](https://go.microsoft.com/fwlink/?linkid=841341) <br/><br/> **SQL Server Reporting Services** (on-premises). For an overview, see [SQL Server Reporting Services (SSRS): Create, deploy, and manage mobile and paginated reports](/sql/reporting-services/create-deploy-and-manage-mobile-and-paginated-reports). <br/><br/> **PerformancePoint Services** (on-premises). For an overview, see [What's new for PerformancePoint Services (SharePoint Server 2010)](/previous-versions/office/sharepoint-server-2010/ee661741(v=office.14)). <br/> |Excel is available as an online (cloud-based) or on-premises solution. Many reporting and dashboard needs can be met with Excel.  <br/><br/> Power BI is available as an online or on-premises solution. Power BI isn't included in Microsoft 365. But you can start using Power BI for free. Later, depending on your data usage and business needs, you can upgrade to Power BI Pro with Microsoft 365 E5.<br/> <br/> Reporting Services and PerformancePoint Services are both on-premises solutions. <br/><br/> PerformancePoint Services is available in SharePoint Server 2010, SharePoint Server 2013, and SharePoint Server 2016. <br/> <br/> Some features and report types that were available in PerformancePoint Server 2007 aren't available in Excel, Power BI, Reporting Services, or PerformancePoint Services. Review the available features to determine the best solution for your business needs. <br/> |
| ProClarity software, including:<br/>- ProClarity Desktop Professional<br/> - ProClarity Analytics Server<br/>- ProClarity SharePoint Viewer<br/> |**Work with a Microsoft partner** to identify a solution that best meets your needs. Visit the [Microsoft Partner Center](https://go.microsoft.com/fwlink/?linkid=841249). <br/><br/> You can also consider using Excel with Excel in a browser, Power BI, SQL Server Reporting Services, or PerformancePoint Services.  <br/> |Several but not all features of ProClarity software are available in other Microsoft offerings, including Excel, Power BI, Reporting Services, and PerformancePoint Services.  <br/> |
|SharePoint Server 2007 KPIs (also called MOSS KPIs)  <br/> |**Excel with Excel Services**. For an overview, see [Business intelligence in Excel and Excel Services (SharePoint Server 2013)](https://support.office.com/article/2740f10c-579d-4b40-a1d9-7beb5d38547c.aspx). <br/> |MOSS KPIs that were created using SharePoint Server 2007 can be used in SharePoint Server 2010, SharePoint Server 2013, and SharePoint Server 2016. But you can't create new MOSS KPIs.  <br/> |
|Excel 2007  <br/> |**Excel** (in the cloud or on-premises). For an overview, see [BI capabilities in Excel and Office 365](https://support.office.com/article/26c0548e-124c-4fd3-aab3-5f64568cb743.aspx). <br/><br/> **Power BI** (in the cloud or on-premises). For an overview, see [What is Power BI?](https://go.microsoft.com/fwlink/?linkid=841341) <br/> |Both Excel and Power BI offer your organization cloud-based and on-premises solutions, with support for a wide variety of data sources.  <br/> |
   
### Help selecting a solution

With so many BI choices available, it might seem overwhelming to determine which option is best. We have an online guide available to help. See [Choosing Microsoft Business Intelligence (BI) tools for analysis and reporting](/sql/reporting-services/choosing-microsoft-business-intelligence-bi-tools-for-analysis-and-reporting).
  
### What if I don't upgrade now?

You can choose to not upgrade immediately. Your existing servers and applications will continue to run. But you won't receive any further updates, including security updates, since support has ended. And if something goes wrong with your server applications you won't be able to get help from Microsoft technical support.
  
## How do I plan my upgrade?

After you explore your upgrade options, the next step is to prepare an upgrade plan. The following sections include information and additional resources to help. You have four main options, including two that work both in the cloud or on-premises, and two that are on-premises-only:
  
|**Option**|**In the cloud or on-premises?**|
|:-----|:-----|
|[Excel with SharePoint Server (on-premises)](#excel-with-sharepoint-server-on-premises) <br/> |Both  <br/> |
|[Power BI](#use-power-bi-in-the-cloud-or-on-premises)<br/> |Both  <br/> |
|[Reporting Services](#use-reporting-services-on-premises) <br/> |On-premises only  <br/> |
|[PerformancePoint Services](#use-performancepoint-services-on-premises) <br/> |On-premises only  <br/> |
   
### Use Excel (in the cloud or on-premises)

With Excel, which is also known as *Excel Services* in SharePoint Server, you can view and use workbooks in a browser window, even if Excel isn't installed on the computer. You can use Excel to create reports, scorecards, and dashboards. Then, share your workbooks with others, who can use Excel in a browser, whether they're using SharePoint Online as part of Microsoft 365 or SharePoint Server on-premises. You can use data stored on-premises or in the cloud, which enables you to use a wide variety of data sources.
  
The following table compares key advantages of using Excel with Microsoft 365 to using Excel with SharePoint Server. More information follows.
  
|**Excel with Microsoft 365 (in the cloud)**|**Excel with SharePoint Server (on-premises)**|
|:-----|:-----|
|**You get the latest, greatest version of Excel**. With Microsoft 365, you get the latest version of Excel, which includes powerful new chart types, the ability to create charts and tables quickly and easily, and support for more data sources. <br/> <br/> **Setup is much simpler**. Excel is included with Microsoft 365 for business, so there's no heavy lifting on your part. Sign up and sign in, and you'll be up and running faster and more efficiently than if you upgrade your on-premises servers. <br/> <br/> **People have everywhere access to their workbooks**. People can securely view workbooks from wherever they are, using their computer, smart phone, and tablet. <br/> <br/> **There's more!** See [BI capabilities in Excel and Office 365](https://support.office.com/article/26c0548e-124c-4fd3-aab3-5f64568cb743.aspx). <br/> |**You manage your global settings**. As a SharePoint administrator, you can specify global settings, such as security, load balancing, session management, workbook caching, and external data connections. <br/> <br/> **You can use Excel Services with PerformancePoint Services**. You can configure Excel Services and PerformancePoint Services as part of your SharePoint Server installation, and include Excel Services reports in your PerformancePoint dashboards. <br/> <br/> **There's more!** See [Business intelligence in Excel and Excel Services (SharePoint Server 2013)](https://support.office.com/article/2740f10c-579d-4b40-a1d9-7beb5d38547c.aspx). <br/> |
   
#### Excel with Microsoft 365 (in the cloud)

If you move to Microsoft 365, you'll have the most up-to-date services and applications, including Excel 2016. PerformancePoint Services isn't available in Microsoft 365, so you'll be replacing your PerformancePoint dashboard content with Excel workbooks or other reports. The good news is that Excel 2016 has lots of new chart types, and it's easier than ever to create impressive dashboards in Excel. And new features are added regularly. To learn more, see [What's New in Excel 2016 for Windows](https://support.office.com/article/5fdb9208-ff33-45b6-9e08-1f5cdb3a6c73.aspx).
  
Also, if you purchase 50 seats or more of Microsoft 365, the Microsoft FastTrack team can help you get set up. To learn more, visit [FastTrack](https://www.microsoft.com/fasttrack/microsoft-365).
  
#### Excel with SharePoint Server (on-premises)

If you upgrade to a newer version of SharePoint, you can use Excel with Excel Services or in a browser, as follows:
  
- Excel Services in SharePoint Server 2010
    
- Excel Services in SharePoint Server 2013
    
- Excel, which is part of Office Online Server, installed separately from SharePoint Server 2016
    
You can configure PerformancePoint Services in your new version of SharePoint Server as well, and use that together with Excel.
  
To learn more about your SharePoint upgrade options, see [SharePoint Server 2007 end of support Roadmap](sharepoint-2007-end-of-support.md).
  
To learn more about Excel Services, see [Excel Services overview (SharePoint Server 2010)](/previous-versions/office/sharepoint-server-2010/ee424405(v=office.14)).
  
### Use Power BI (in the cloud or on-premises)

Power BI is a suite of business analytics tools to analyze data and share insights. With Power BI, you can use on-premises or online data sources to create interactive reports and dashboards. People can view and use your reports and dashboards on their computers or mobile devices.
  
Power BI isn't part of Microsoft 365 or SharePoint Server. It's a separate offering that includes Power BI Desktop, Power BI gateways, and the Power BI service. Power BI also integrates with SharePoint Online. You can get started with Power BI for free. Based on your data usage and business needs, you can later upgrade to Power BI Pro with Microsoft 365 E5. To learn more, see [What is Power BI?](https://go.microsoft.com/fwlink/?linkid=841341)
  
### Use Reporting Services (on-premises)

SQL Server Reporting Services provides a robust reporting solution. You can configure Reporting Services in either native mode or SharePoint-integrated mode. You can use several different tools to author reports, including Report Designer, Report Builder, and Power View. With the latest release of SQL Server, you can also use SQL Server Mobile Report Publisher to deliver reports that scale to any screen size. This lets viewers consume reports on their mobile devices. To learn more, see [SQL Server Reporting Services (SSRS): Create, deploy, and manage mobile and paginated reports](/sql/reporting-services/create-deploy-and-manage-mobile-and-paginated-reports).
  
### Use PerformancePoint Services (on-premises)

PerformancePoint Server 2007 was sold separately from SharePoint Server 2007. Beginning with SharePoint Server 2010, PerformancePoint Services is a service application in SharePoint Server. So, you don't have to purchase separate server licenses or hardware to use PerformancePoint Services.
  
To move from PerformancePoint Server 2007 to PerformancePoint Services, you move to a more recent version of SharePoint Server and configure PerformancePoint Services. The version of SharePoint Server that you move to determines whether you can import your existing dashboard content from PerformancePoint Server 2007 to PerformancePoint Services.
  
- If you upgrade to SharePoint Server 2010, you can import your PerformancePoint dashboard content from PerformancePoint Server 2007 to PerformancePoint Services in SharePoint Server 2010. To learn more, see [Import Wizard: PerformancePoint Server 2007 content to SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/ee681485(v=office.14)).
    
- If you move to SharePoint Server 2013 or SharePoint Server 2016, you'll most likely need to create new dashboard content (data sources, reports, scorecards, and dashboard pages).
    
To get started on your PerformancePoint Services upgrade plan, see the following resources:
  
- [SharePoint Server 2007 end of support Roadmap](sharepoint-2007-end-of-support.md)
    
- When you know which version of SharePoint you're moving to, see the corresponding article for PerformancePoint Services:
    
  - [Plan for PerformancePoint Services (SharePoint Server 2010)](/previous-versions/office/sharepoint-server-2010/ee681486(v=office.14))
    
  - [PerformancePoint Services in SharePoint Server 2013 overview](/sharepoint/administration/performancepoint-services-overview)
    
  - [PerformancePoint Services in SharePoint Server 2016 overview](/sharepoint/administration/performancepoint-services-overview)
    
When you upgrade to PerformancePoint Services, you get several new features and enhancements. PerformancePoint Services offers improved scorecards; new visualizations, such as the Decomposition Tree and KPI Details report; more chart types; better Time Intelligence filtering capabilities; and improved accessibility compliance. To learn more, see [What's new for PerformancePoint Services (SharePoint Server 2010)](/previous-versions/office/sharepoint-server-2010/ee661741(v=office.14)).
  
## Where can I get help with my upgrade?

Whether you upgrade on-premises or move to Microsoft 365, we recommend that you work with a Microsoft partner. A qualified partner can help you identify the solution that best meets your business needs and help with your deployment. Visit the [Microsoft Partner Center](https://go.microsoft.com/fwlink/?linkid=841249), and use the search filters to find a solution provider.
  
## Related topics

[Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md)