---
title: "Architectural models for SharePoint, Exchange, Skype for Business, and Lync"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 05/16/2018
audience: ITPro
ms.topic: conceptual
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
- SPO_Content
f1.keywords:
- CSH
ms.custom: 
- Ent_Architecture
ms.assetid: 5b49fa68-f8f2-4705-af96-5f5475e8539a
search.appverid:
- MET150
description: "Summary: Get the IT posters that describe the architectural models, deployment, and platform options for SharePoint, Exchange, Skype for Business, and Lync."
---

# Architectural models for SharePoint, Exchange, Skype for Business, and Lync

These IT posters describe the architectural models and deployment options for SharePoint, Exchange, Skype for Business, and Lync, and they provide design information for deploying SharePoint in Microsoft Azure.
  
With Microsoft 365, you can provide the collaboration and communication services your users are familiar with as a cloud-based service. With a few exceptions, the user experience remains the same whether you are maintaining an on-premises deployment or using Microsoft 365. This unified user experience makes it less straightforward to decide where to place each workload and raises questions such as:
  
- How do you determine which platform option to choose for your individual workloads?
    
- Does it make sense to keep any service on-premises?
    
- What is a scenario where a hybrid deployment is appropriate?
    
- How does Microsoft Azure fit in the picture?
    
- What are the supported configurations for Office Server workloads in Azure?
    
> [!TIP]
> Most of the posters on this page are available in multiple languages, including Chinese, English, French, German, Italian, Japanese, Korean, Portuguese, Russian, and Spanish. To download a poster in one of these languages, click the **More languages** link for that poster.
  
Let us know what you think! Send us email at [cloudadopt@microsoft.com](mailto:cloudadopt@microsoft.com). 
  
This page links you to the following posters:
  
- **Architectural models posters** You can use these resources to determine your ideal platform and configuration for SharePoint 2016 and Skype for Business 2015.
    
  - [Microsoft SharePoint 2016 Architectural Models](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#SP2016_ArchModel)
    
  - [SharePoint Server 2016 Databases](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#SP2016_Databases)
    
  - [Microsoft Skype for Business 2015 Architectural Models](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#SfB2015_ArchModel)
    
- **Platform options posters** You can use these resources to determine your ideal platform and configuration for SharePoint 2013, Exchange 2013, and Lync 2013.
    
  - [SharePoint 2013 Platform Options](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#SP2013_Options)
    
  - [Exchange 2013 Platform Options](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#Exch2013_options)
    
  - [Lync 2013 Platform Options](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#Lync2013_Options)
    
- **SharePoint Server 2013 in Azure solutions posters** You can use these IT posters to determine the design and configuration for SharePoint Server 2013 workloads in Azure infrastructure services.
    
  - [Internet sites in Microsoft Azure using SharePoint Server 2013](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#Azure_sharepoint2013)
    
  - [Design sample: Internet sites in Microsoft Azure for SharePoint 2013](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#DesignSampleInternetSites)
    
  - [SharePoint Disaster Recovery to Microsoft Azure](architectural-models-for-sharepoint-exchange-skype-for-business-and-lync.md#sharepoint_recovery_Azure)
    
## Architectural models posters

These new IT posters for SharePoint 2016 and Skype for Business 2015 provide a way to compare the various deployment methods in an easy-to-print format. Each poster provides a list of all the configurations or platform options available and gives you the following information for each option:
  
- **Overview** A brief summary of the platform, including a conceptual diagram.
    
- **Best for** Common scenarios that are ideally suited for the particular platform.
    
- **License requirements** The licenses you need for deployment.
    
- **Architecture tasks** The decisions you need to make as an architect.
    
- **IT Pro tasks or responsibilities** The daily responsibilities that your IT staff needs to plan for.
    
<a name="SP2016_ArchModel"> </a>
### Microsoft SharePoint 2016 Architectural Models

|**Item**|**Description**|
|:-----|:-----|
|[![Thumbnail for the SharePoint 2016 Architectural Models poster](media/7d3e590c-1f3b-42cf-920d-9edac8fa3e04.png)          ](https://www.microsoft.com/download/details.aspx?id=52650) <br/> [PDF](https://download.microsoft.com/download/4/F/A/4FA0F94B-EE2F-41DB-A047-D9864FEF41E9/SharePoint2016ArchitecturalModels.pdf)  \| [Visio](https://download.microsoft.com/download/4/F/A/4FA0F94B-EE2F-41DB-A047-D9864FEF41E9/SharePoint2016ArchitecturalModels.vsdx)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=52650) <br/> | This IT poster describes the SharePoint Online, Microsoft Azure, and SharePoint on-premises configurations that business decision makers and solutions architects need to know about. <br/><br/> - **SharePoint Online (SaaS)** - Consume SharePoint through a Software as a Service (SaaS) subscription model. <br/> - **SharePoint Hybrid** - Move your SharePoint sites and apps to the cloud at your own pace. <br/> - **SharePoint in Azure (IaaS)** - You extend your on-premises environment into Microsoft Azure and deploy SharePoint 2016 Servers there. (This is recommended for High Availability/Disaster Recovery and dev/test environments.) <br/> - **SharePoint On-premises** - You plan, deploy, maintain and customize your SharePoint environment in a datacenter that you maintain. <br/> |
   
<a name="SP2016_Databases"> </a>
### SharePoint Server 2016 Databases

|**Item**|**Description**|
|:-----|:-----|
|[![Thumbnail for the SharePoint Server 2016 Databases poster](media/c53e9de7-3bf8-446d-8766-e6700c8dd8e1.png)          ](https://www.microsoft.com/download/details.aspx?id=55041) <br/> [PDF](https://download.microsoft.com/download/D/5/D/D5DC1121-8BC5-4953-834F-1B5BB03EB691/DBrefguideSPS2016_tabloid.pdf)  \| [Visio](https://download.microsoft.com/download/D/5/D/D5DC1121-8BC5-4953-834F-1B5BB03EB691/DBrefguideSPS2016_tabloid.vsdx)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=55041) <br/> | This IT poster is a quick reference guide for SharePoint Server 2016 databases. Each database has the following details: <br/><br/> - Size <br/> - Scaling guidance <br/> - I/O patterns <br/> - Requirements <br/><br/>  The first page has the SharePoint system databases and the service applications that have multiple databases. The second page shows all of the service applications that have single databases. <br/><br/>  For more information about the SharePoint Server 2016 databases, see [Database types and descriptions in SharePoint Server 2016](https://docs.microsoft.com/SharePoint/technical-reference/database-types-and-descriptions) <br/> |
   
<a name="SfB2015_ArchModel"> </a>
### Microsoft Skype for Business 2015 Architectural Models

|**Item**|**Description**|
|:-----|:-----|
|[![Thumbnail for the Skype for Business Architectural Models poster](media/132288c0-6ae4-4394-88ab-b57dae367714.png)          ](https://www.microsoft.com/download/details.aspx?id=55022) <br/> [PDF](https://download.microsoft.com/download/7/7/4/7741262C-A60D-41F7-863B-99BF5964FBFE/Skype%20for%20Business%20Architectural%20Models.pdf)  \| [Visio](https://download.microsoft.com/download/7/7/4/7741262C-A60D-41F7-863B-99BF5964FBFE/Skype%20for%20Business%20Architectural%20Models.vsd)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=55022) <br/> |This poster describes the Skype for Business Online, on-premises, hybrid, cloud PBX, and integration with Exchange and SharePoint configurations that business decision makers and solutions architects need to know about. <br/><br/> It is intended for the IT Pro audience to raise awareness of the different fundamental architectural models through which Skype for Business Online and Skype for Business on premises can be consumed. <br/><br/>Start with whichever configuration best suits your organization's needs and future plans. Consider and use others as needed. For example, you might want to consider integration with Exchange and SharePoint or a solution that takes advantage of Microsoft's Cloud PBX offering.  <br/> |
   
## Platform options posters

These IT posters for SharePoint 2013, Exchange 2013, and Lync 2013 provide a way to compare the various deployment methods at a single glance in a large poster format. Each poster provides a list of all the configurations or platform options available and gives you the following information for each option:
  
- **Overview** A brief summary of the platform, including a conceptual diagram.
    
- **Best for** Common scenarios that are ideally suited for the particular platform.
    
- **License requirements** The licenses you need for deployment.
    
- **Architecture tasks** The decisions you need to make as an architect.
    
- **IT Pro tasks or responsibilities** The daily responsibilities that your IT staff needs to plan for.
    
<a name="SP2013_Options"> </a>
## SharePoint 2013 Platform Options

****

|**Item**|**Description**|
|:-----|:-----|
|[![Thumbnail image of SharePoint 2013 Platform Options](media/SP-PlatformOptions.jpg)          ](https://www.microsoft.com/download/details.aspx?id=40332) <br/> [PDF](https://go.microsoft.com/fwlink/p/?LinkId=324594)  \| [Visio](https://go.microsoft.com/fwlink/p/?LinkId=324593)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=40332) <br/> |For business decision makers (BDMs) and architects, this model shows the platform options for SharePoint 2013, SharePoint in Microsoft 365, on-premises hybrid with Microsoft 365, Azure, and on-premises only deployments. It includes an overview of each architecture, recommendations, license requirements, and lists of architect and IT Pro tasks for each platform. Several SharePoint solutions on Azure are highlighted. <br/> |
   
<a name="Exch2013_options"> </a>
## Exchange 2013 Platform Options

****

|**Item**|**Description**|
|:-----|:-----|
|[![Thumbnail image of Exchange Platform Options](media/ITPro-Other-Exchange2013PlatformOptions.jpg)          ](https://www.microsoft.com/download/details.aspx?id=42676) <br/> [PDF](https://go.microsoft.com/fwlink/p/?LinkID=398740)  \| [Visio](https://go.microsoft.com/fwlink/p/?LinkID=398742)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=42676) <br/> |For BDMs and architects, this model describes the available platform options for Exchange 2013. Customers can choose from Exchange Online with Microsoft 365, Hybrid Exchange, Exchange Server on-premises and Hosted Exchange. The poster includes details of each architectural option, including the most ideal scenarios for each, the license requirements and IT Pro responsibilities. <br/> |
   
<a name="Lync2013_Options"> </a>
## Lync 2013 Platform Options

****

|**Item**|**Description**|
|:-----|:-----|
|[![Thumbnail image of Lync Platform Options](media/Lync-PlatformOptions.jpg)          ](https://www.microsoft.com/download/details.aspx?id=41677) <br/> [PDF](https://go.microsoft.com/fwlink/p/?LinkID=391837)  \| [Visio](https://go.microsoft.com/fwlink/p/?LinkID=391839)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=41677) <br/> |For BDMs and architects, this model describes the available platform options for Lync 2013. Customers can choose from Lync Online with Microsoft 365, Hybrid Lync, Lync Server on-premises and Hosted Lync. The IT poster includes details of each architectural option, including the most ideal scenarios for each, the license requirements and IT Pro responsibilities.  <br/> |
   
<a name="Lync2013_Options"> </a>
## SharePoint in Azure solutions posters

These IT posters show Azure-based solutions using SharePoint Server 2013 in a large poster format.
  
<a name="Azure_sharepoint2013"> </a>
### Internet sites in Microsoft Azure using SharePoint Server 2013

****

|**Item**|**Description**|
|:-----|:-----|
|[![Image of Internet sites in Azure using SharePoint](media/MS-AZ-SPInternetSites.jpg)          ](https://www.microsoft.com/download/details.aspx?id=41992) <br/> [PDF](https://go.microsoft.com/fwlink/p/?LinkId=392552)  \| [Visio](https://go.microsoft.com/fwlink/p/?LinkId=392551)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=41992) <br/> |This poster outlines key design activities and recommended architecture choices for Internet-facing sites in Azure.  <br/><br/> For more information, see the following articles:  <br/><br/> - [Internet Sites in Microsoft Azure using SharePoint Server 2013](internet-sites-in-microsoft-azure-using-sharepoint-server-2013.md) <br/> - [Microsoft Azure Architectures for SharePoint 2013](microsoft-azure-architectures-for-sharepoint-2013.md) <br/> |
   
<a name="DesignSampleInternetSites"> </a>
### Design sample: Internet sites in Microsoft Azure for SharePoint 2013

****

|**Item**|**Description**|
|:-----|:-----|
|[![Image of the Design sample: Internet sites in Microsoft Azure for SharePoint 2013](media/MS-AZ-InternetSitesDesignSample.jpg)          ](https://www.microsoft.com/download/details.aspx?id=41991) <br/> [PDF](https://go.microsoft.com/fwlink/p/?LinkId=392549)  \| [Visio](https://go.microsoft.com/fwlink/p/?LinkId=392548)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=41991) <br/> |Use this design sample as a starting point for your own architecture Internet-facing site in Azure using SharePoint Server 2013. <br/><br/> For more information, see the following articles:  <br/><br/> - [Internet Sites in Microsoft Azure using SharePoint Server 2013](internet-sites-in-microsoft-azure-using-sharepoint-server-2013.md) <br/> - [Microsoft Azure Architectures for SharePoint 2013](microsoft-azure-architectures-for-sharepoint-2013.md) <br/> |
   
<a name="sharepoint_recovery_Azure"> </a>
### SharePoint Disaster Recovery to Microsoft Azure

****

|**Item**|**Description**|
|:-----|:-----|
|[![SharePoint disaster-recovery process to Azure](media/SP-DR-Azure.png)          ](https://www.microsoft.com/download/details.aspx?id=41993) <br/> [PDF](https://go.microsoft.com/fwlink/p/?LinkId=392555)  \| [Visio](https://go.microsoft.com/fwlink/p/?LinkId=392554)  \| [More languages](https://www.microsoft.com/download/details.aspx?id=41993) <br/> |This IT poster shows architecture principles for a disaster recovery environment in Azure. <br/><br/> For more information, see the following articles:  <br/><br/> - [SharePoint Server 2013 Disaster Recovery in Microsoft Azure](sharepoint-server-2013-disaster-recovery-in-microsoft-azure.md) <br/> - [Microsoft Azure Architectures for SharePoint 2013](microsoft-azure-architectures-for-sharepoint-2013.md) <br/> |
   
## See Also

[Cloud adoption and hybrid solutions](cloud-adoption-and-hybrid-solutions.yml)
  
[Microsoft Cloud IT architecture resources](microsoft-cloud-it-architecture-resources.md)
  
[Microsoft 365 for enterprise Test Lab Guides](https://docs.microsoft.com/microsoft-365/enterprise/m365-enterprise-test-lab-guides)
  
[Hybrid solutions](hybrid-solutions.md)

